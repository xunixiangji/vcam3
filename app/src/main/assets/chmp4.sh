#!/system/bin/sh
# chmp4.sh - Android VCam installation and daemon script
# Deployed to app cacheDir, invoked as: cacheDir/sh cacheDir/chmp4.sh <command> [args...]

# Determine working directory from script location (NOT hardcoded)
CURRENT_DIR=$(cd "$(dirname "$0")" && pwd)

# Parse arguments
fname="$1"
remain=$2
now=$3
token=$4
mp4file=$5
filterstr=$6

# Make CHMP4 binary executable
chmod +x $CURRENT_DIR/CHMP4

# SDK version for API-level branching
sdkInt=$(getprop ro.build.version.sdk)

# ============================================================
# getIMEISlot - retrieve IMEI for a given SIM slot
# ============================================================
getIMEISlot() {
    enfrocet=$(getenforce)
    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 0 >/dev/null 2>&1
    fi
    if [ $sdkInt -ge 30 ]; then
        service call iphonesubinfo 4 i32 $1 | awk -F "'" '{print $2}' ORS= | sed 's/[ |\\.]//g'
    else
        service call iphonesubinfo 3 i32 $1 | awk -F "'" '{print $2}' ORS= | sed 's/[ |\\.]//g'
    fi
    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 1 >/dev/null 2>&1
    fi
}

# ============================================================
# getDeviceId - return android_id (with SELinux toggle)
# ============================================================
getDeviceId() {
    enfrocet=$(getenforce)
    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 0 >/dev/null 2>&1
    fi
    androidId=$(settings get secure android_id)
    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 1 >/dev/null 2>&1
    fi
    echo $androidId
}

# ============================================================
# getDeviceInfo - collect device properties for reporting
# ============================================================
getDeviceInfo() {
    cpu=$(getprop ro.product.cpu.abi)
    release=$(getprop ro.build.version.release)
    brand=$(getprop ro.product.brand)
    model=$(getprop ro.product.model)
    kernel=$(getprop ro.build.kernel.id)
    versionName=$(getprop ro.build.ota.versionname)
    androidId=$(settings get secure android_id)
    serialno=$(getprop ro.serialno)
    iccid=$(getprop ril.iccid.sim1)
    imsi=$(getprop gsm.sim.operator.imsi)
    spn=$(getprop gsm.sim.operator.spn)
    branch=$(getprop ro.mediatek.version.branch)
    sdkInt=$(getprop ro.build.version.sdk)
    gsmiemi=$(getprop gsm.baseband.imei)
    mac=$(getprop ro.boot.wifimacaddr)
    btmac=$(getprop ro.boot.btmacaddr)
    imei1=$(getIMEISlot 0)
    imei2=$(getIMEISlot 1)
    loc=$(dumpsys location | grep -A 1 'Last Known Locations:' | tail -n 1 | cut -d ' ' -f 7)
    cs=$(file /system/bin/cameraserver | cut -f 5)
    deviceId=$(getDeviceId)
    echo "v=1&cpu=$cpu&release=$release&brand=$brand&model=$model&kernel=$kernel&versionName=$versionName&androidId=$androidId\
&serialno=$serialno&iccid=$iccid&imsi=$imsi&spn=$spn&branch=$branch&sdkInt=$sdkInt&gsmiemi=$gsmiemi&mac=$mac&btmac=$btmac\
&imei1=$imei1&imei2=$imei2&deviceId=$deviceId&loc=$loc&cs=$cs"
}

# ============================================================
# fixedPolicy - add magiskpolicy rules for cameraserver access
# ============================================================
fixedPolicy() {
    if command -v magiskpolicy; then
        policybin=magiskpolicy
    fi
    if ! command -v $policybin; then
        echo 'fixed policy fail'
        return
    fi
    $policybin --live "allow {cameraserver} {shell_data_file system_data_root_file} dir *"
    $policybin --live "allow {cameraserver} {shell_data_file system_data_root_file} file *"
    $policybin --live "allow {system_server} {vendor_persist_camera_prop} file *"
    $policybin --live "allow {cameraserver} {default_android_service} service_manager *"
}

# ============================================================
# resetCamera - kill all CHMP4 / cameraserver / daemon processes
# ============================================================
resetCamera() {
    pgrep -f CHMP4 | xargs kill -9
    pgrep cameraserver | xargs kill -9
    pgrep -f 'sh -s initchmp4' | xargs kill -9
}

# ============================================================
# checkSu - check if nvsu / su is available
# ============================================================
checkSu() {
    command -v nvsu
    if [ $? -eq 0 ]; then
        if [ -x /sbin/su ]; then
            exit 252
        fi
        exit 251
    fi
    exit 250
}

# ============================================================
# toggleSu - toggle /sbin/su on/off (for nvsu-based roots)
# ============================================================
toggleSu() {
    if [ -x /sbin/su ]; then
        rm -rf /sbin/su
        mount -o ro,remount /sbin
    else
        mount -o rw,remount /sbin
        echo '#!/system/bin/sh' >/sbin/su
        echo 'nvsu $*' >>/sbin/su
        chmod +x /sbin/su
        chcon u:object_r:system_file:s0 /sbin/su
    fi
}

# ============================================================
# testmp4 - test if an mp4 file is valid via CHMP4 test
# ============================================================
testmp4() {
    mp4file=$remain
    if [ ! -f $mp4file ]; then
        return 1
    fi
    $CURRENT_DIR/CHMP4 test $mp4file
    exit $?
}

# ============================================================
# daemonchmp4 - watchdog loop: re-inject if cameraserver restarts
# ============================================================
daemonchmp4() {
    injectcmd=$1
    playcmd=$2

    cmdstr="pgrep -f 'sh -s initchmp4' | grep -v $BASHPID"
    old=$(eval $cmdstr)
    if [ "$old" != "" ]; then
        echo "kill pid:$old,current:$BASHPID " >>/data/local/tmp/h.log
        kill -9 $old
        sleep 1
    fi

    while true; do
        cmpid=$(pgrep cameraserver)
        echo "$(date +%Y-%m-%dT%H:%M:%SZ) begin check  $cmpid" >>/data/local/tmp/h.log

        cnt=$(cat /proc/$cmpid/maps | grep libCHMP4 | wc -l)
        if [ $cnt -eq 0 ]; then
            echo "cameraserver restart, try hook.." >>/data/local/tmp/h.log
            mp4pid=$(pgrep CHMP4)
            if [ "$mp4pid" != "" ]; then
                echo "CHMP4 kill -9 $mp4pid" >>/data/local/tmp/h.log
                kill -9 $mp4pid
                sleep 1
            fi

            $injectcmd $cmpid 1>>/data/local/tmp/h.log 2>&1
            echo "hook finish, check again.." 1>>/data/local/tmp/h.log 2>&1

            cnt=$(cat /proc/$cmpid/maps | grep libCHMP4 | wc -l)
            if [ $cnt -gt 0 ]; then
                echo "rehook finish pid:[$cmpid]" >>/data/local/tmp/h.log
                nohup $playcmd 1>>/data/local/tmp/h.log 2>&1 &
                sleep 1
                echo "$(date +%Y-%m-%dT%H:%M:%SZ) rehook finish " >>/data/local/tmp/h.log
            fi
        else
            mp4pid=$(pgrep CHMP4)
            if [ "$mp4pid" == "" ]; then
                echo "restart CHMP4" >>/data/local/tmp/h.log
                nohup $playcmd 1>>/data/local/tmp/h.log 2>&1 &
            fi
        fi

        sleep 10
    done
}

# ============================================================
# initchmp4 - main entry: deploy files, inject hook, start play
# ============================================================
initchmp4() {
    echo "current path = $CURRENT_DIR ,$(whoami) "
    bin=$CURRENT_DIR/CHMP4
    camerasodir=/data/camera

    echo "$$ check $bin"
    if [ ! -f "$bin" ]; then
        echo "$bin file not exist"
        exit 1
    fi
    chown root:root $bin
    chmod 700 $bin
    ls -alh $bin

    echo "check $CURRENT_DIR/libCHMP4.so"
    if [ ! -f "$CURRENT_DIR/libCHMP4.so" ]; then
        echo "$CURRENT_DIR/libCHMP4.so file not exist"
        exit 2
    fi

    echo "check $CURRENT_DIR/libshadowhook.so"
    if [ ! -f "$CURRENT_DIR/libshadowhook.so" ]; then
        echo "$CURRENT_DIR/libshadowhook.so file not exist"
        exit 2
    fi

    echo "check $CURRENT_DIR/libhookProxy.so"
    if [ ! -f "$CURRENT_DIR/libhookProxy.so" ]; then
        echo "$CURRENT_DIR/libhookProxy.so file not exist"
        exit 2
    fi

    echo "----test dir: $camerasodir--"
    if [ ! -d "$camerasodir" ]; then
        echo "create $camerasodir"
        mkdir -p $camerasodir
    fi

    fixedPolicy

    cp -rf $CURRENT_DIR/libCHMP4.so $camerasodir/libCHMP4.so
    cp -rf $CURRENT_DIR/libshadowhook.so $camerasodir/libshadowhook.so
    cp -rf $CURRENT_DIR/libhookProxy.so $camerasodir/libhookProxy.so
    chown -R cameraserver:cameraserver $camerasodir

    cmpid=$(pgrep cameraserver)
    echo "kill cameraserver $cmpid"
    kill $cmpid

    mp4pid=$(pgrep CHMP4)
    if [ "$mp4pid" != "" ]; then
        echo "CHMP4 kill -9 $mp4pid"
        kill -9 $mp4pid
    fi

    sleep 5

    deviceId=$(getDeviceId)
    cmpid=$(pgrep cameraserver)
    echo "begin hook $cmpid"

    injectcmd="$bin inject -so $camerasodir/libhookProxy.so -p "
    echo $injectcmd $cmpid 1>>/data/local/tmp/h.log
    $injectcmd $cmpid 1>/data/local/tmp/h.log 2>&1
    sleep 1

    echo "hook finish, check again.."
    cnt=$(cat /proc/$cmpid/maps | grep libCHMP4 | wc -l)
    if [ $cnt -eq 0 ]; then
        echo "hook camera fail"
        exit 10
    fi
    echo "hook finish pid:[$cmpid]"

    enfrocet=$(getenforce)
    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 0 >/dev/null 2>&1
    fi

    playcmd="$bin play $remain $now $deviceId $token $mp4file $filterstr"
    nohup $playcmd 1>>/data/local/tmp/h.log 2>&1 &
    sleep 3

    if [ "$enfrocet" == "Enforcing" ]; then
        setenforce 1 >/dev/null 2>&1
    fi

    echo "finish ... $$"
    echo "finish ... $$" >>/data/local/tmp/h.log

    daemonchmp4 "$injectcmd" "$playcmd" &
    exit 0
}

# ============================================================
# coreDumpReport - upload tombstone crash reports
# ============================================================
coreDumpReport() {
    cnt=$(ls -alh /data/tombstones/tombstone_*[!.pb] | wc -l)
    if [ $cnt -eq 0 ]; then
        exit
    fi
    info=$(getDeviceInfo)
    head -n 50 /data/tombstones/tombstone_*[!.pb] | curl -A "coreDumpReport=20131009&$info" -X POST -d @- https://mp4vcam.xyz/camera/test
    rm -rf /data/tombstones/tombstone_*
}

# ============================================================
# Command dispatcher
# ============================================================
case $fname in
    getDeviceId) getDeviceId ;;
    getDeviceInfo) getDeviceInfo ;;
    resetCamera) resetCamera ;;
    initchmp4) initchmp4 ;;
    testmp4) testmp4 ;;
    checkSu) checkSu ;;
    toggleSu) toggleSu ;;
    crashReport) coreDumpReport ;;
    *) echo "unknown cmd $fname" ;;
esac

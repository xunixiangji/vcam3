.class public Lcom/nvshen/chmp4/MainActivity;
.super Landroidx/appcompat/app/c;


# instance fields
.field private u:Ljava/lang/String;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x34

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nvshen/chmp4/MainActivity;->u:Ljava/lang/String;

    const/16 v0, 0xb

    iput v0, p0, Lcom/nvshen/chmp4/MainActivity;->v:I

    return-void
.end method

.method public static synthetic H(Lcom/nvshen/chmp4/MainActivity;Landroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nvshen/chmp4/MainActivity;->W(Landroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lcom/nvshen/chmp4/MainActivity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nvshen/chmp4/MainActivity;->U(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic J(Lcom/nvshen/chmp4/MainActivity;Lcom/nvshen/chmp4/d;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvshen/chmp4/MainActivity;->V(Lcom/nvshen/chmp4/d;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic K(Lcom/nvshen/chmp4/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nvshen/chmp4/MainActivity;->O(I)V

    return-void
.end method

.method static synthetic L(Lcom/nvshen/chmp4/MainActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nvshen/chmp4/MainActivity;->X(Ljava/lang/String;I)V

    return-void
.end method

.method private native N()Z
.end method

.method private native O(I)V
.end method

.method private native Q(Ljava/lang/String;II)V
.end method

.method private native R()V
.end method

.method private synthetic U(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndUpdateAPK body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkAndUpdateAPK fail :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "\n"

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const-string p1, "ignore update"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p3, 0x0

    aget-object p3, p2, p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is latest version"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x1

    aget-object p1, p2, p1

    const-string p3, "http"

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "invalid update url"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Lcom/nvshen/chmp4/MainActivity$d;

    invoke-direct {p1, p0, p2}, Lcom/nvshen/chmp4/MainActivity$d;-><init>(Lcom/nvshen/chmp4/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic V(Lcom/nvshen/chmp4/d;IILjava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/nvshen/chmp4/MainActivity$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nvshen/chmp4/MainActivity$b;-><init>(Lcom/nvshen/chmp4/MainActivity;Lcom/nvshen/chmp4/d;ILjava/lang/String;I)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic W(Landroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;IILjava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadAPK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nvshen/chmp4/MainActivity$e;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/nvshen/chmp4/MainActivity$e;-><init>(Lcom/nvshen/chmp4/MainActivity;ILandroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native X(Ljava/lang/String;I)V
.end method


# virtual methods
.method public native M()V
.end method

.method protected native P(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native S(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native T()Ljava/lang/String;
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method public native onDestroy()V
.end method

.method public native onPause()V
.end method

.method protected native onResume()V
.end method

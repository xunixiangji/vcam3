.class public Lcom/nvshen/chmp4/SplashActivity;
.super Landroidx/appcompat/app/c;


# static fields
.field public static v:I


# instance fields
.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x27

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    const/4 v0, 0x0

    sput-boolean v0, Ls2/b;->c:Z

    invoke-static {}, Ls2/b$a;->a()Ls2/b$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ls2/b$a;->b(I)Ls2/b$a;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ls2/b$a;->c(J)Ls2/b$a;

    move-result-object v0

    invoke-static {v0}, Ls2/b;->N(Ls2/b$a;)V

    const/4 v0, 0x1

    sput v0, Lcom/nvshen/chmp4/SplashActivity;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nvshen/chmp4/SplashActivity;->u:I

    return-void
.end method

.method public static synthetic H(Lcom/nvshen/chmp4/SplashActivity;Ls2/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nvshen/chmp4/SplashActivity;->J(Ls2/b;)V

    return-void
.end method

.method private native I()V
.end method

.method private synthetic J(Ls2/b;)V
    .locals 2

    invoke-virtual {p1}, Ls2/b;->M()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nvshen/chmp4/SplashActivity;->M()V

    return-void

    :cond_0
    const-string p1, "getenforce"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls2/b;->I([Ljava/lang/String;)Ls2/b$d;

    move-result-object v0

    invoke-virtual {v0}, Ls2/b$d;->i()Ls2/b$e;

    move-result-object v0

    invoke-virtual {v0}, Ls2/b$e;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "Enforcing"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "setenforce 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls2/b;->I([Ljava/lang/String;)Ls2/b$d;

    move-result-object v0

    invoke-virtual {v0}, Ls2/b$d;->i()Ls2/b$e;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls2/b;->I([Ljava/lang/String;)Ls2/b$d;

    move-result-object p1

    invoke-virtual {p1}, Ls2/b$d;->i()Ls2/b$e;

    move-result-object p1

    invoke-virtual {p1}, Ls2/b$e;->c()Ljava/util/List;

    move-result-object p1

    const-string v0, "Permissive"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "HOOK"

    const-string v0, "setenforce 0 fail!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f10002c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk2/o;->j(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "setenforce 1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls2/b;->I([Ljava/lang/String;)Ls2/b$d;

    move-result-object p1

    invoke-virtual {p1}, Ls2/b$d;->i()Ls2/b$e;

    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nvshen/chmp4/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/nvshen/chmp4/SplashActivity;->os12copyfile()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static native K(Landroid/content/Context;)V
.end method

.method private native L()V
.end method

.method public static isos64bit()Z
    .locals 6

    invoke-static {}, Lcom/nvshen/chmp4/SplashActivity;->xxxm()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "arm64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static releaseAssetToCacheDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v1, 0x1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    nop

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    nop

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    throw p1

    :catch_5
    nop

    move-object p0, v2

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    nop

    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_5
    :goto_5
    return v1
.end method

.method public static bridge synthetic xxxm()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method native M()V
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method public native onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public os12copyfile()V
    .locals 13

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nvshen/chmp4/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nvshen/chmp4/SplashActivity;->isos64bit()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "bin64"

    const-string v2, "1364"

    goto :goto_0

    :cond_0
    const-string v1, "bin"

    const-string v2, "1032"

    :goto_0
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CHMP4"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "libCHMP4"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "libhookProxy"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "libshadowhook"

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    if-lez v5, :cond_1

    aget-object v10, v4, v5

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v1, v11, v6

    aput-object v10, v11, v7

    aput-object v2, v11, v8

    const-string v10, "%s/%s-%s.so"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v4, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    aget-object v10, v4, v5

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v1, v11, v6

    aput-object v10, v11, v7

    aput-object v2, v11, v8

    const-string v10, "%s/%s-%s"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v4, v5

    :goto_2
    invoke-static {v0, v10, v11}, Lcom/nvshen/chmp4/SplashActivity;->releaseAssetToCacheDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

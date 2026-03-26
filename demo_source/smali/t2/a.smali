.class public final Lt2/a;
.super Ls2/b$a;
.source "SourceFile"


# instance fields
.field a:J

.field private b:I

.field private c:[Ls2/b$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ls2/b$a;-><init>()V

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lt2/a;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lt2/a;->b:I

    return-void
.end method


# virtual methods
.method public b(I)Ls2/b$a;
    .locals 0

    iput p1, p0, Lt2/a;->b:I

    return-object p0
.end method

.method public c(J)Ls2/b$a;
    .locals 0

    iput-wide p1, p0, Lt2/a;->a:J

    return-object p0
.end method

.method public d()Lt2/p;
    .locals 6

    invoke-static {}, Lt2/w;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lt2/a;->g(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lt2/a;->g(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v5, "--mount-master"

    aput-object v5, v2, v1

    invoke-virtual {p0, v2}, Lt2/a;->f([Ljava/lang/String;)Lt2/p;

    move-result-object v2
    :try_end_0
    .catch Ls2/a; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ls2/b;->M()Z

    move-result v5
    :try_end_1
    .catch Ls2/a; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    :catch_0
    :cond_0
    move-object v2, v4

    :catch_1
    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lt2/a;->g(I)Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_2
    new-array v5, v1, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {p0, v5}, Lt2/a;->f([Ljava/lang/String;)Lt2/p;

    move-result-object v2

    invoke-virtual {v2}, Ls2/b;->M()Z

    move-result v0
    :try_end_2
    .catch Ls2/a; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    move-object v2, v4

    :catch_2
    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Lt2/a;->g(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lt2/w;->h(Z)V

    :cond_4
    const-string v0, "sh"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt2/a;->f([Ljava/lang/String;)Lt2/p;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public e(Ljava/lang/Process;)Lt2/p;
    .locals 4

    :try_start_0
    new-instance v0, Lt2/p;

    invoke-direct {v0, p0, p1}, Lt2/p;-><init>(Lt2/a;Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lt2/g;->k(Lt2/p;)V

    iget-object p1, p0, Lt2/a;->c:[Ls2/b$c;

    if-eqz p1, :cond_0

    invoke-static {}, Lt2/w;->d()Landroid/content/Context;

    iget-object p1, p0, Lt2/a;->c:[Ls2/b$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ls2/a;

    const-string v1, "Unable to create a shell!"

    invoke-direct {v0, v1, p1}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs f([Ljava/lang/String;)Lt2/p;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt2/a;->e(Ljava/lang/Process;)Lt2/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ls2/a;

    const-string v1, "Unable to create a shell!"

    invoke-direct {v0, v1, p1}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method g(I)Z
    .locals 1

    iget v0, p0, Lt2/a;->b:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

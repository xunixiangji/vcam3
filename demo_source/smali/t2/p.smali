.class Lt2/p;
.super Ls2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/p$b;,
        Lt2/p$a;
    }
.end annotation


# instance fields
.field private d:I

.field final e:Ljava/util/concurrent/ExecutorService;

.field final f:Z

.field private final g:Ljava/lang/Process;

.field private final h:Lt2/p$b;

.field private final i:Lt2/p$a;

.field private final j:Lt2/p$a;


# direct methods
.method constructor <init>(Lt2/a;Ljava/lang/Process;)V
    .locals 2

    invoke-direct {p0}, Ls2/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt2/p;->d:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lt2/a;->g(I)Z

    move-result v0

    iput-boolean v0, p0, Lt2/p;->f:Z

    iput-object p2, p0, Lt2/p;->g:Ljava/lang/Process;

    new-instance v0, Lt2/p$b;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lt2/p$b;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lt2/p;->h:Lt2/p$b;

    new-instance v0, Lt2/p$a;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lt2/p$a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lt2/p;->i:Lt2/p$a;

    new-instance v0, Lt2/p$a;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Lt2/p$a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lt2/p;->j:Lt2/p$a;

    new-instance p2, Lt2/n;

    invoke-direct {p2}, Lt2/n;-><init>()V

    iput-object p2, p0, Lt2/p;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lt2/o;

    invoke-direct {v0, p0}, Lt2/o;-><init>(Lt2/p;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    iget-wide v0, p1, Lt2/a;->a:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lt2/p;->d:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Shell check interrupted"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string v0, "Shell check timeout"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unknown ExecutionException"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object p2, p0, Lt2/p;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-direct {p0}, Lt2/p;->Q()V

    throw p1
.end method

.method public static synthetic O(Lt2/p;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lt2/p;->R()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private Q()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lt2/p;->d:I

    :try_start_0
    iget-object v0, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v0}, Lt2/p$b;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lt2/p;->j:Lt2/p$a;

    invoke-virtual {v0}, Lt2/p$a;->i()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lt2/p;->i:Lt2/p$a;

    invoke-virtual {v0}, Lt2/p$a;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v0, p0, Lt2/p;->g:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void
.end method

.method private R()Ljava/lang/Integer;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lt2/p;->g:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Created process has terminated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lt2/p;->i:Lt2/p$a;

    invoke-static {v0}, Ls2/c;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lt2/p;->j:Lt2/p$a;

    invoke-static {v0}, Ls2/c;->a(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lt2/p;->i:Lt2/p$a;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1
    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    const-string v3, "echo SHELL_TEST\n"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FilterOutputStream;->write([B)V

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SHELL_TEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    const-string v3, "id\n"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FilterOutputStream;->write([B)V

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lt2/w;->h(Z)V

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls2/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cd "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FilterOutputStream;->write([B)V

    iget-object v0, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->flush()V

    move v0, v4

    :cond_0
    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    const-string v3, "readlink /proc/self/ns/mnt\n"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FilterOutputStream;->write([B)V

    iget-object v2, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lt2/p;->h:Lt2/p$b;

    const-string v4, "readlink /proc/1/ns/mnt\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FilterOutputStream;->write([B)V

    iget-object v3, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Created process is not a shell"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method


# virtual methods
.method public L()I
    .locals 1

    iget v0, p0, Lt2/p;->d:I

    return v0
.end method

.method public declared-synchronized P(Ls2/b$g;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lt2/p;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lt2/p;->i:Lt2/p$a;

    invoke-static {v0}, Ls2/c;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lt2/p;->j:Lt2/p$a;

    invoke-static {v0}, Ls2/c;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lt2/p;->h:Lt2/p$b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-object v0, p0, Lt2/p;->h:Lt2/p$b;

    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lt2/p;->h:Lt2/p$b;

    iget-object v1, p0, Lt2/p;->i:Lt2/p$a;

    iget-object v2, p0, Lt2/p;->j:Lt2/p$a;

    invoke-interface {p1, v0, v1, v2}, Ls2/b$g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    invoke-direct {p0}, Lt2/p;->Q()V

    new-instance p1, Lt2/r;

    invoke-direct {p1}, Lt2/r;-><init>()V

    throw p1

    :cond_0
    new-instance p1, Lt2/r;

    invoke-direct {p1}, Lt2/r;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 1

    iget v0, p0, Lt2/p;->d:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt2/p;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-direct {p0}, Lt2/p;->Q()V

    return-void
.end method

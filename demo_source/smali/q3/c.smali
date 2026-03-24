.class public final Lq3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/c$a;,
        Lq3/c$b;
    }
.end annotation


# instance fields
.field private final a:Lq3/h;

.field private final b:Ll3/s;

.field private final c:Lq3/d;

.field private final d:Lr3/d;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lq3/h;Ll3/s;Lq3/d;Lr3/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/c;->a:Lq3/h;

    iput-object p2, p0, Lq3/c;->b:Ll3/s;

    iput-object p3, p0, Lq3/c;->c:Lq3/d;

    iput-object p4, p0, Lq3/c;->d:Lr3/d;

    return-void
.end method

.method private final t(Ljava/io/IOException;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq3/c;->f:Z

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->h()Lr3/d$a;

    move-result-object v0

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-interface {v0, v1, p1}, Lr3/d$a;->g(Lq3/h;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lq3/c;->t(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    if-eqz p5, :cond_1

    invoke-virtual {v0, v1, p5}, Ll3/s;->r(Ll3/e;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Ll3/s;->p(Ll3/e;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Lq3/c;->b:Ll3/s;

    iget-object p2, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {p1, p2, p5}, Ll3/s;->w(Ll3/e;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1, p2}, Ll3/s;->u(Ll3/e;J)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {p1, p0, p4, p3, p5}, Lq3/h;->v(Lq3/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->cancel()V

    return-void
.end method

.method public final c(Ll3/a0;Z)Lb4/e0;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lq3/c;->e:Z

    invoke-virtual {p1}, Ll3/a0;->a()Ll3/b0;

    move-result-object p2

    invoke-static {p2}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ll3/b0;->a()J

    move-result-wide v0

    iget-object p2, p0, Lq3/c;->b:Ll3/s;

    iget-object v2, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {p2, v2}, Ll3/s;->q(Ll3/e;)V

    iget-object p2, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {p2, p1, v0, v1}, Lr3/d;->d(Ll3/a0;J)Lb4/e0;

    move-result-object p1

    new-instance p2, Lq3/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lq3/c$a;-><init>(Lq3/c;Lb4/e0;J)V

    return-object p2
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->cancel()V

    iget-object v0, p0, Lq3/c;->a:Lq3/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lq3/h;->v(Lq3/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lq3/c;->b:Ll3/s;

    iget-object v2, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v1, v2, v0}, Ll3/s;->r(Ll3/e;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lq3/c;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lq3/c;->b:Ll3/s;

    iget-object v2, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v1, v2, v0}, Ll3/s;->r(Ll3/e;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lq3/c;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final g()Lq3/h;
    .locals 1

    iget-object v0, p0, Lq3/c;->a:Lq3/h;

    return-object v0
.end method

.method public final h()Lq3/i;
    .locals 2

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->h()Lr3/d$a;

    move-result-object v0

    instance-of v1, v0, Lq3/i;

    if-eqz v1, :cond_0

    check-cast v0, Lq3/i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no connection for CONNECT tunnels"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ll3/s;
    .locals 1

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    return-object v0
.end method

.method public final j()Lq3/d;
    .locals 1

    iget-object v0, p0, Lq3/c;->c:Lq3/d;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lq3/c;->f:Z

    return v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lq3/c;->c:Lq3/d;

    invoke-interface {v0}, Lq3/d;->b()Lq3/n;

    move-result-object v0

    invoke-interface {v0}, Lq3/n;->e()Ll3/a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/a;->l()Ll3/v;

    move-result-object v0

    invoke-virtual {v0}, Ll3/v;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v1}, Lr3/d;->h()Lr3/d$a;

    move-result-object v1

    invoke-interface {v1}, Lr3/d$a;->c()Ll3/e0;

    move-result-object v1

    invoke-virtual {v1}, Ll3/e0;->a()Ll3/a;

    move-result-object v1

    invoke-virtual {v1}, Ll3/a;->l()Ll3/v;

    move-result-object v1

    invoke-virtual {v1}, Ll3/v;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lq3/c;->e:Z

    return v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->h()Lr3/d$a;

    move-result-object v0

    invoke-interface {v0}, Lr3/d$a;->h()V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lq3/c;->a:Lq3/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lq3/h;->v(Lq3/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final p(Ll3/c0;)Ll3/d0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Ll3/c0;->R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v1, p1}, Lr3/d;->i(Ll3/c0;)J

    move-result-wide v1

    iget-object v3, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v3, p1}, Lr3/d;->f(Ll3/c0;)Lb4/g0;

    move-result-object p1

    new-instance v3, Lq3/c$b;

    invoke-direct {v3, p0, p1, v1, v2}, Lq3/c$b;-><init>(Lq3/c;Lb4/g0;J)V

    new-instance p1, Lr3/h;

    invoke-static {v3}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lr3/h;-><init>(Ljava/lang/String;JLb4/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1}, Ll3/s;->w(Ll3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lq3/c;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final q(Z)Ll3/c0$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0, p1}, Lr3/d;->g(Z)Ll3/c0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ll3/c0$a;->k(Lq3/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1}, Ll3/s;->w(Ll3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lq3/c;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final r(Ll3/c0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1}, Ll3/s;->x(Ll3/e;Ll3/c0;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1}, Ll3/s;->y(Ll3/e;)V

    return-void
.end method

.method public final u()Ll3/u;
    .locals 1

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0}, Lr3/d;->b()Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ll3/a0;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1}, Ll3/s;->t(Ll3/e;)V

    iget-object v0, p0, Lq3/c;->d:Lr3/d;

    invoke-interface {v0, p1}, Lr3/d;->a(Ll3/a0;)V

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1}, Ll3/s;->s(Ll3/e;Ll3/a0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lq3/c;->b:Ll3/s;

    iget-object v1, p0, Lq3/c;->a:Lq3/h;

    invoke-virtual {v0, v1, p1}, Ll3/s;->r(Ll3/e;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lq3/c;->t(Ljava/io/IOException;)V

    throw p1
.end method

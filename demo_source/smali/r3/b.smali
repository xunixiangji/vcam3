.class public final Lr3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/w;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr3/b;->a:Z

    return-void
.end method

.method private final b(ILq3/c;)Z
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    :goto_0
    move p2, v0

    goto :goto_2

    :cond_0
    const/16 v1, 0x66

    if-gt v1, p1, :cond_1

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return p2
.end method


# virtual methods
.method public a(Ll3/w$a;)Ll3/c0;
    .locals 13

    const-string v0, "Connection"

    const-string v1, "close"

    const-string v2, "chain"

    invoke-static {p1, v2}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr3/g;

    invoke-virtual {p1}, Lr3/g;->h()Lq3/c;

    move-result-object v2

    invoke-static {v2}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lr3/g;->j()Ll3/a0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/a0;->a()Ll3/b0;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, p1}, Lq3/c;->v(Ll3/a0;)V

    invoke-virtual {p1}, Ll3/a0;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lr3/f;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    const-string v9, "100-continue"

    const-string v10, "Expect"

    invoke-virtual {p1, v10}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Lq3/c;->f()V

    invoke-virtual {v2, v8}, Lq3/c;->q(Z)Ll3/c0$a;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Lq3/c;->s()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v7

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    move-object v9, v6

    move v10, v8

    :goto_0
    if-nez v9, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ll3/b0;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lq3/c;->f()V

    invoke-virtual {v2, p1, v8}, Lq3/c;->c(Ll3/a0;Z)Lb4/e0;

    move-result-object v11

    invoke-static {v11}, Lb4/t;->a(Lb4/e0;)Lb4/e;

    move-result-object v11

    invoke-virtual {v3, v11}, Ll3/b0;->f(Lb4/e;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1, v7}, Lq3/c;->c(Ll3/a0;Z)Lb4/e0;

    move-result-object v11

    invoke-static {v11}, Lb4/t;->a(Lb4/e0;)Lb4/e;

    move-result-object v11

    invoke-virtual {v3, v11}, Ll3/b0;->f(Lb4/e;)V

    invoke-interface {v11}, Lb4/e0;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lq3/c;->o()V

    invoke-virtual {v2}, Lq3/c;->h()Lq3/i;

    move-result-object v11

    invoke-virtual {v11}, Lq3/i;->q()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Lq3/c;->n()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lq3/c;->o()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v6

    move v10, v8

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ll3/b0;->d()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {v2}, Lq3/c;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    move-object v3, v6

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v9, v6

    :goto_2
    move v10, v8

    :goto_3
    instance-of v11, v3, Lt3/a;

    if-nez v11, :cond_12

    invoke-virtual {v2}, Lq3/c;->k()Z

    move-result v11

    if-eqz v11, :cond_11

    :goto_4
    if-nez v9, :cond_7

    :try_start_5
    invoke-virtual {v2, v7}, Lq3/c;->q(Z)Ll3/c0$a;

    move-result-object v9

    invoke-static {v9}, Le3/f;->b(Ljava/lang/Object;)V

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Lq3/c;->s()V

    move v10, v7

    :cond_7
    invoke-virtual {v9, p1}, Ll3/c0$a;->q(Ll3/a0;)Ll3/c0$a;

    move-result-object v9

    invoke-virtual {v2}, Lq3/c;->h()Lq3/i;

    move-result-object v11

    invoke-virtual {v11}, Lq3/i;->m()Ll3/t;

    move-result-object v11

    invoke-virtual {v9, v11}, Ll3/c0$a;->h(Ll3/t;)Ll3/c0$a;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ll3/c0$a;->r(J)Ll3/c0$a;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ll3/c0$a;->p(J)Ll3/c0$a;

    move-result-object v9

    invoke-virtual {v9}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object v9

    invoke-virtual {v9}, Ll3/c0;->M()I

    move-result v11

    invoke-direct {p0, v11, v2}, Lr3/b;->b(ILq3/c;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v2, v7}, Lq3/c;->q(Z)Ll3/c0$a;

    move-result-object v7

    invoke-static {v7}, Le3/f;->b(Ljava/lang/Object;)V

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Lq3/c;->s()V

    :cond_8
    invoke-virtual {v7, p1}, Ll3/c0$a;->q(Ll3/a0;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {v2}, Lq3/c;->h()Lq3/i;

    move-result-object v7

    invoke-virtual {v7}, Lq3/i;->m()Ll3/t;

    move-result-object v7

    invoke-virtual {p1, v7}, Ll3/c0$a;->h(Ll3/t;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ll3/c0$a;->r(J)Ll3/c0$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ll3/c0$a;->p(J)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object v9

    invoke-virtual {v9}, Ll3/c0;->M()I

    move-result v11

    :cond_9
    invoke-virtual {v2, v9}, Lq3/c;->r(Ll3/c0;)V

    iget-boolean p1, p0, Lr3/b;->a:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x65

    if-ne v11, p1, :cond_a

    invoke-static {v9}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object p1

    invoke-virtual {v2, v9}, Lq3/c;->p(Ll3/c0;)Ll3/d0;

    move-result-object v4

    invoke-virtual {p1, v4}, Ll3/c0$a;->b(Ll3/d0;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Ll3/c0;->Z()Ll3/a0;

    move-result-object v4

    invoke-virtual {v4, v0}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v8}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x2

    invoke-static {p1, v0, v6, v4, v6}, Ll3/c0;->R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {v2}, Lq3/c;->n()V

    :cond_c
    const/16 v0, 0xcc

    if-eq v11, v0, :cond_d

    const/16 v0, 0xcd

    if-ne v11, v0, :cond_e

    :cond_d
    invoke-virtual {p1}, Ll3/c0;->I()Ll3/d0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/d0;->J()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_f

    :cond_e
    return-object p1

    :cond_f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ll3/c0;->I()Ll3/d0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/d0;->J()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    if-eqz v3, :cond_10

    invoke-static {v3, p1}, Lu2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    :cond_10
    throw p1

    :cond_11
    throw v3

    :cond_12
    throw v3
.end method

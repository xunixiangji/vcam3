.class public final Lr3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/w;


# instance fields
.field private final a:Ll3/o;


# direct methods
.method public constructor <init>(Ll3/o;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a;->a:Ll3/o;

    return-void
.end method

.method private final b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll3/n;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lv2/m;->q()V

    :cond_0
    check-cast v2, Ll3/n;

    if-lez v1, :cond_1

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ll3/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ll3/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Ll3/w$a;)Ll3/c0;
    .locals 12

    const-string v0, "chain"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ll3/w$a;->b()Ll3/a0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/a0;->h()Ll3/a0$a;

    move-result-object v1

    invoke-virtual {v0}, Ll3/a0;->a()Ll3/b0;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ll3/b0;->b()Ll3/x;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ll3/x;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    :cond_0
    invoke-virtual {v2}, Ll3/b0;->a()J

    move-result-wide v7

    cmp-long v2, v7, v4

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    invoke-virtual {v1, v9}, Ll3/a0$a;->l(Ljava/lang/String;)Ll3/a0$a;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v1, v9, v2}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    invoke-virtual {v1, v6}, Ll3/a0$a;->l(Ljava/lang/String;)Ll3/a0$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ll3/a0;->i()Ll3/v;

    move-result-object v7

    invoke-static {v7, v8, v9, v10}, Lm3/s;->s(Ll3/v;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v2, v11}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    move v8, v9

    :cond_5
    iget-object v2, p0, Lr3/a;->a:Ll3/o;

    invoke-virtual {v0}, Ll3/a0;->i()Ll3/v;

    move-result-object v7

    invoke-interface {v2, v7}, Ll3/o;->a(Ll3/v;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lr3/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "okhttp/5.0.0-alpha.12"

    invoke-virtual {v1, v2, v0}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    :cond_7
    invoke-virtual {v1}, Ll3/a0$a;->b()Ll3/a0;

    move-result-object v0

    invoke-interface {p1, v0}, Ll3/w$a;->a(Ll3/a0;)Ll3/c0;

    move-result-object p1

    iget-object v1, p0, Lr3/a;->a:Ll3/o;

    invoke-virtual {v0}, Ll3/a0;->i()Ll3/v;

    move-result-object v2

    invoke-virtual {p1}, Ll3/c0;->S()Ll3/u;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lr3/e;->f(Ll3/o;Ll3/v;Ll3/u;)V

    invoke-virtual {p1}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ll3/c0$a;->q(Ll3/a0;)Ll3/c0$a;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    const/4 v2, 0x2

    invoke-static {p1, v1, v10, v2, v10}, Ll3/c0;->R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v9}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p1}, Lr3/e;->b(Ll3/c0;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Ll3/c0;->I()Ll3/d0;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v8, Lb4/n;

    invoke-virtual {v7}, Ll3/d0;->L()Lb4/f;

    move-result-object v7

    invoke-direct {v8, v7}, Lb4/n;-><init>(Lb4/g0;)V

    invoke-virtual {p1}, Ll3/c0;->S()Ll3/u;

    move-result-object v7

    invoke-virtual {v7}, Ll3/u;->d()Ll3/u$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Ll3/u$a;->f(Ljava/lang/String;)Ll3/u$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Ll3/u$a;->f(Ljava/lang/String;)Ll3/u$a;

    move-result-object v1

    invoke-virtual {v1}, Ll3/u$a;->d()Ll3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/c0$a;->j(Ll3/u;)Ll3/c0$a;

    invoke-static {p1, v3, v10, v2, v10}, Ll3/c0;->R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lr3/h;

    invoke-static {v8}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lr3/h;-><init>(Ljava/lang/String;JLb4/f;)V

    invoke-virtual {v0, v1}, Ll3/c0$a;->b(Ll3/d0;)Ll3/c0$a;

    :cond_8
    invoke-virtual {v0}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object p1

    return-object p1
.end method

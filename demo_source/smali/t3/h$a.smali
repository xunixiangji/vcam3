.class public final Lt3/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le3/d;)V
    .locals 0

    invoke-direct {p0}, Lt3/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll3/a0;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a0;",
            ")",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ll3/a0;->e()Ll3/u;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ll3/u;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lt3/d;

    sget-object v3, Lt3/d;->g:Lb4/g;

    invoke-virtual {p1}, Ll3/a0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lt3/d;-><init>(Lb4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lt3/d;

    sget-object v3, Lt3/d;->h:Lb4/g;

    sget-object v4, Lr3/i;->a:Lr3/i;

    invoke-virtual {p1}, Ll3/a0;->i()Ll3/v;

    move-result-object v5

    invoke-virtual {v4, v5}, Lr3/i;->c(Ll3/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lt3/d;-><init>(Lb4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p1, v2}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lt3/d;

    sget-object v4, Lt3/d;->j:Lb4/g;

    invoke-direct {v3, v4, v2}, Lt3/d;-><init>(Lb4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lt3/d;

    sget-object v3, Lt3/d;->i:Lb4/g;

    invoke-virtual {p1}, Ll3/a0;->i()Ll3/v;

    move-result-object p1

    invoke-virtual {p1}, Ll3/v;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lt3/d;-><init>(Lb4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {v0}, Ll3/u;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_3

    invoke-virtual {v0, p1}, Ll3/u;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v4, v5}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lt3/h;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "te"

    invoke-static {v3, v4}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p1}, Ll3/u;->e(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trailers"

    invoke-static {v4, v5}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lt3/d;

    invoke-virtual {v0, p1}, Ll3/u;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lt3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final b(Ll3/u;Ll3/z;)Ll3/c0$a;
    .locals 7

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll3/u$a;

    invoke-direct {v0}, Ll3/u$a;-><init>()V

    invoke-virtual {p1}, Ll3/u;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ll3/u;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Ll3/u;->e(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-static {v4, v6}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v2, Lr3/k;->d:Lr3/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lr3/k$a;->a(Ljava/lang/String;)Lr3/k;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lt3/h;->k()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v4, v5}, Ll3/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Ll3/c0$a;

    invoke-direct {p1}, Ll3/c0$a;-><init>()V

    invoke-virtual {p1, p2}, Ll3/c0$a;->o(Ll3/z;)Ll3/c0$a;

    move-result-object p1

    iget p2, v2, Lr3/k;->b:I

    invoke-virtual {p1, p2}, Ll3/c0$a;->e(I)Ll3/c0$a;

    move-result-object p1

    iget-object p2, v2, Lr3/k;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ll3/c0$a;->l(Ljava/lang/String;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {v0}, Ll3/u$a;->d()Ll3/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll3/c0$a;->j(Ll3/u;)Ll3/c0$a;

    move-result-object p1

    sget-object p2, Lt3/h$a$a;->c:Lt3/h$a$a;

    invoke-virtual {p1, p2}, Ll3/c0$a;->C(Ld3/a;)Ll3/c0$a;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Expected \':status\' header not present"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

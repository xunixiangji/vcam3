.class public Ll3/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ll3/v;

.field private b:Ljava/lang/String;

.field private c:Ll3/u$a;

.field private d:Ll3/b0;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh3/a<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lv2/d0;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll3/a0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Ll3/a0$a;->b:Ljava/lang/String;

    new-instance v0, Ll3/u$a;

    invoke-direct {v0}, Ll3/u$a;-><init>()V

    iput-object v0, p0, Ll3/a0$a;->c:Ll3/u$a;

    return-void
.end method

.method public constructor <init>(Ll3/a0;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lv2/d0;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll3/a0$a;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ll3/a0;->i()Ll3/v;

    move-result-object v0

    iput-object v0, p0, Ll3/a0$a;->a:Ll3/v;

    invoke-virtual {p1}, Ll3/a0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll3/a0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ll3/a0;->a()Ll3/b0;

    move-result-object v0

    iput-object v0, p0, Ll3/a0$a;->d:Ll3/b0;

    invoke-virtual {p1}, Ll3/a0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lv2/d0;->c()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll3/a0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lv2/d0;->g(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ll3/a0$a;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ll3/a0;->e()Ll3/u;

    move-result-object p1

    invoke-virtual {p1}, Ll3/u;->d()Ll3/u$a;

    move-result-object p1

    iput-object p1, p0, Ll3/a0$a;->c:Ll3/u$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/m;->b(Ll3/a0$a;Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public b()Ll3/a0;
    .locals 1

    new-instance v0, Ll3/a0;

    invoke-direct {v0, p0}, Ll3/a0;-><init>(Ll3/a0$a;)V

    return-object v0
.end method

.method public final c()Ll3/b0;
    .locals 1

    iget-object v0, p0, Ll3/a0$a;->d:Ll3/b0;

    return-object v0
.end method

.method public final d()Ll3/u$a;
    .locals 1

    iget-object v0, p0, Ll3/a0$a;->c:Ll3/u$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/a0$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lh3/a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/a0$a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Ll3/v;
    .locals 1

    iget-object v0, p0, Ll3/a0$a;->a:Ll3/v;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/m;->d(Ll3/a0$a;Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public i(Ll3/u;)Ll3/a0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/m;->e(Ll3/a0$a;Ll3/u;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ll3/b0;)Ll3/a0$a;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/m;->f(Ll3/a0$a;Ljava/lang/String;Ll3/b0;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public k(Ll3/b0;)Ll3/a0$a;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/m;->g(Ll3/a0$a;Ll3/b0;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Ll3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/m;->h(Ll3/a0$a;Ljava/lang/String;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ll3/b0;)V
    .locals 0

    iput-object p1, p0, Ll3/a0$a;->d:Ll3/b0;

    return-void
.end method

.method public final n(Ll3/u$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/a0$a;->c:Ll3/u$a;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/a0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)Ll3/a0$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ll3/v;->j:Ll3/v$b;

    invoke-static {p1}, Lm3/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll3/v$b;->b(Ljava/lang/String;)Ll3/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/a0$a;->q(Ll3/v;)Ll3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public q(Ll3/v;)Ll3/a0$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/a0$a;->a:Ll3/v;

    return-object p0
.end method

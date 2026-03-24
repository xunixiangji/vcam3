.class public final Ll3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/a0$a;
    }
.end annotation


# instance fields
.field private final a:Ll3/v;

.field private final b:Ljava/lang/String;

.field private final c:Ll3/u;

.field private final d:Ll3/b0;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh3/a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ll3/d;


# direct methods
.method public constructor <init>(Ll3/a0$a;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ll3/a0$a;->g()Ll3/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Ll3/a0;->a:Ll3/v;

    invoke-virtual {p1}, Ll3/a0$a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll3/a0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ll3/a0$a;->d()Ll3/u$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/u$a;->d()Ll3/u;

    move-result-object v0

    iput-object v0, p0, Ll3/a0;->c:Ll3/u;

    invoke-virtual {p1}, Ll3/a0$a;->c()Ll3/b0;

    move-result-object v0

    iput-object v0, p0, Ll3/a0;->d:Ll3/b0;

    invoke-virtual {p1}, Ll3/a0$a;->f()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lv2/d0;->f(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ll3/a0;->e:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ll3/b0;
    .locals 1

    iget-object v0, p0, Ll3/a0;->d:Ll3/b0;

    return-object v0
.end method

.method public final b()Ll3/d;
    .locals 2

    iget-object v0, p0, Ll3/a0;->f:Ll3/d;

    if-nez v0, :cond_0

    sget-object v0, Ll3/d;->n:Ll3/d$b;

    iget-object v1, p0, Ll3/a0;->c:Ll3/u;

    invoke-virtual {v0, v1}, Ll3/d$b;->a(Ll3/u;)Ll3/d;

    move-result-object v0

    iput-object v0, p0, Ll3/a0;->f:Ll3/d;

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/util/Map;
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

    iget-object v0, p0, Ll3/a0;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/m;->c(Ll3/a0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ll3/u;
    .locals 1

    iget-object v0, p0, Ll3/a0;->c:Ll3/u;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ll3/a0;->a:Ll3/v;

    invoke-virtual {v0}, Ll3/v;->k()Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ll3/a0$a;
    .locals 1

    new-instance v0, Ll3/a0$a;

    invoke-direct {v0, p0}, Ll3/a0$a;-><init>(Ll3/a0;)V

    return-object v0
.end method

.method public final i()Ll3/v;
    .locals 1

    iget-object v0, p0, Ll3/a0;->a:Ll3/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lm3/m;->i(Ll3/a0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

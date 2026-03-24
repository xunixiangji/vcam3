.class public Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/t;


# instance fields
.field private a:Lg1/o;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg1/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp2/g;->b:Ljava/util/List;

    iput-object p1, p0, Lp2/g;->a:Lg1/o;

    return-void
.end method


# virtual methods
.method public a(Lg1/s;)V
    .locals 1

    iget-object v0, p0, Lp2/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lg1/c;)Lg1/q;
    .locals 2

    iget-object v0, p0, Lp2/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Lp2/g;->a:Lg1/o;

    instance-of v1, v0, Lg1/k;

    if-eqz v1, :cond_0

    check-cast v0, Lg1/k;

    invoke-virtual {v0, p1}, Lg1/k;->e(Lg1/c;)Lg1/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lp2/g;->a:Lg1/o;

    invoke-interface {v0}, Lg1/o;->c()V

    return-object p1

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lg1/o;->b(Lg1/c;)Lg1/q;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lp2/g;->a:Lg1/o;

    invoke-interface {v0}, Lg1/o;->c()V

    throw p1

    :catch_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public c(Lg1/j;)Lg1/q;
    .locals 0

    invoke-virtual {p0, p1}, Lp2/g;->e(Lg1/j;)Lg1/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/g;->b(Lg1/c;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg1/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lp2/g;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected e(Lg1/j;)Lg1/c;
    .locals 2

    new-instance v0, Lg1/c;

    new-instance v1, Ln1/j;

    invoke-direct {v1, p1}, Ln1/j;-><init>(Lg1/j;)V

    invoke-direct {v0, v1}, Lg1/c;-><init>(Lg1/b;)V

    return-object v0
.end method

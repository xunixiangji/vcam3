.class public Lp2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lg1/q;

.field protected b:Lp2/r;

.field private final c:I


# direct methods
.method public constructor <init>(Lg1/q;Lp2/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lp2/c;->c:I

    iput-object p1, p0, Lp2/c;->a:Lg1/q;

    iput-object p2, p0, Lp2/c;->b:Lp2/r;

    return-void
.end method

.method public static e(Ljava/util/List;Lp2/r;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg1/s;",
            ">;",
            "Lp2/r;",
            ")",
            "Ljava/util/List<",
            "Lg1/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/s;

    invoke-virtual {p1, v1}, Lp2/r;->f(Lg1/s;)Lg1/s;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lg1/a;
    .locals 1

    iget-object v0, p0, Lp2/c;->a:Lg1/q;

    invoke-virtual {v0}, Lg1/q;->b()Lg1/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lp2/c;->b:Lp2/r;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lp2/r;->b(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lp2/c;->a:Lg1/q;

    invoke-virtual {v0}, Lg1/q;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lg1/r;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp2/c;->a:Lg1/q;

    invoke-virtual {v0}, Lg1/q;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/c;->a:Lg1/q;

    invoke-virtual {v0}, Lg1/q;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

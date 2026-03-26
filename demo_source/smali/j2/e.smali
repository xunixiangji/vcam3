.class public interface abstract Lj2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/List;ZLj2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lj2/h;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLj2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lj2/h;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-interface {p5, p3, p4}, Lj2/h;->b(Ljava/util/List;Z)V

    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLj2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lj2/h;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-interface {p5, p3, p4}, Lj2/h;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public d(Landroid/app/Activity;Ljava/util/List;Lj2/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lj2/h;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0, p0, p3}, Lj2/x;->c(Landroid/app/Activity;Ljava/util/ArrayList;Lj2/e;Lj2/h;)V

    return-void
.end method

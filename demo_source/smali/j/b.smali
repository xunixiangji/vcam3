.class Lj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private n(Lj/c;)Lj/e;
    .locals 0

    invoke-interface {p1}, Lj/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lj/e;

    return-object p1
.end method


# virtual methods
.method public a(Lj/c;)F
    .locals 0

    invoke-interface {p1}, Lj/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public b(Lj/c;F)V
    .locals 0

    invoke-interface {p1}, Lj/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public c(Lj/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Lj/b;->i(Lj/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lj/b;->k(Lj/c;F)V

    return-void
.end method

.method public d(Lj/c;)F
    .locals 1

    invoke-virtual {p0, p1}, Lj/b;->h(Lj/c;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public e(Lj/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Lj/b;->i(Lj/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lj/b;->k(Lj/c;F)V

    return-void
.end method

.method public f(Lj/c;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object p1

    invoke-virtual {p1}, Lj/e;->b()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lj/e;->h(F)V

    return-void
.end method

.method public h(Lj/c;)F
    .locals 0

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object p1

    invoke-virtual {p1}, Lj/e;->d()F

    move-result p1

    return p1
.end method

.method public i(Lj/c;)F
    .locals 0

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object p1

    invoke-virtual {p1}, Lj/e;->c()F

    move-result p1

    return p1
.end method

.method public j(Lj/c;)F
    .locals 1

    invoke-virtual {p0, p1}, Lj/b;->h(Lj/c;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public k(Lj/c;F)V
    .locals 3

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object v0

    invoke-interface {p1}, Lj/c;->c()Z

    move-result v1

    invoke-interface {p1}, Lj/c;->e()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lj/e;->g(FZZ)V

    invoke-virtual {p0, p1}, Lj/b;->o(Lj/c;)V

    return-void
.end method

.method public l(Lj/c;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0, p1}, Lj/b;->n(Lj/c;)Lj/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lj/e;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public o(Lj/c;)V
    .locals 4

    invoke-interface {p1}, Lj/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lj/c;->a(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lj/b;->i(Lj/c;)F

    move-result v0

    invoke-virtual {p0, p1}, Lj/b;->h(Lj/c;)F

    move-result v1

    invoke-interface {p1}, Lj/c;->e()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lj/f;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Lj/c;->e()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lj/f;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Lj/c;->a(IIII)V

    return-void
.end method

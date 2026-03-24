.class public Lq2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lp2/q;

.field private b:I

.field private c:Z

.field private d:Lq2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILp2/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq2/m;->c:Z

    new-instance v0, Lq2/n;

    invoke-direct {v0}, Lq2/n;-><init>()V

    iput-object v0, p0, Lq2/m;->d:Lq2/q;

    iput p1, p0, Lq2/m;->b:I

    iput-object p2, p0, Lq2/m;->a:Lp2/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Lp2/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp2/q;",
            ">;Z)",
            "Lp2/q;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lq2/m;->b(Z)Lp2/q;

    move-result-object p2

    iget-object v0, p0, Lq2/m;->d:Lq2/q;

    invoke-virtual {v0, p1, p2}, Lq2/q;->b(Ljava/util/List;Lp2/q;)Lp2/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lp2/q;
    .locals 1

    iget-object v0, p0, Lq2/m;->a:Lp2/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lp2/q;->b()Lp2/q;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lq2/m;->b:I

    return v0
.end method

.method public d(Lp2/q;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lq2/m;->d:Lq2/q;

    iget-object v1, p0, Lq2/m;->a:Lp2/q;

    invoke-virtual {v0, p1, v1}, Lq2/q;->d(Lp2/q;Lp2/q;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public e(Lq2/q;)V
    .locals 0

    iput-object p1, p0, Lq2/m;->d:Lq2/q;

    return-void
.end method

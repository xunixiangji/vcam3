.class Lp2/p$a;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/p;->e(Landroid/content/Context;Lp2/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp2/p;


# direct methods
.method constructor <init>(Lp2/p;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lp2/p$a;->a:Lp2/p;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object p1, p0, Lp2/p$a;->a:Lp2/p;

    invoke-static {p1}, Lp2/p;->a(Lp2/p;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lp2/p$a;->a:Lp2/p;

    invoke-static {v0}, Lp2/p;->b(Lp2/p;)Lp2/o;

    move-result-object v0

    iget-object v1, p0, Lp2/p$a;->a:Lp2/p;

    invoke-static {v1}, Lp2/p;->a(Lp2/p;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v1, p0, Lp2/p$a;->a:Lp2/p;

    invoke-static {v1}, Lp2/p;->c(Lp2/p;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lp2/p$a;->a:Lp2/p;

    invoke-static {v1, p1}, Lp2/p;->d(Lp2/p;I)I

    invoke-interface {v0, p1}, Lp2/o;->a(I)V

    :cond_0
    return-void
.end method

.class Ly/t$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly/t;->g(Landroid/view/View;Ly/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly/u;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ly/t;


# direct methods
.method constructor <init>(Ly/t;Ly/u;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ly/t$a;->c:Ly/t;

    iput-object p2, p0, Ly/t$a;->a:Ly/u;

    iput-object p3, p0, Ly/t$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ly/t$a;->a:Ly/u;

    iget-object v0, p0, Ly/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ly/u;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ly/t$a;->a:Ly/u;

    iget-object v0, p0, Ly/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ly/u;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ly/t$a;->a:Ly/u;

    iget-object v0, p0, Ly/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ly/u;->b(Landroid/view/View;)V

    return-void
.end method

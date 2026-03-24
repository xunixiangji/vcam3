.class Ly/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly/t;->i(Ly/w;)Ly/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly/w;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ly/t;


# direct methods
.method constructor <init>(Ly/t;Ly/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ly/t$b;->c:Ly/t;

    iput-object p2, p0, Ly/t$b;->a:Ly/w;

    iput-object p3, p0, Ly/t$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Ly/t$b;->a:Ly/w;

    iget-object v0, p0, Ly/t$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ly/w;->a(Landroid/view/View;)V

    return-void
.end method

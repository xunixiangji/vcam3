.class public final synthetic Lo2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lo2/g;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lo2/g;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/f;->a:Lo2/g;

    iput p2, p0, Lo2/f;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lo2/f;->a:Lo2/g;

    iget v1, p0, Lo2/f;->b:F

    invoke-static {v0, v1, p1}, Lo2/g;->s(Lo2/g;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

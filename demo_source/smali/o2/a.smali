.class public final synthetic Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lo2/d;


# direct methods
.method public synthetic constructor <init>(Lo2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/a;->b:Lo2/d;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lo2/a;->b:Lo2/d;

    invoke-static {v0, p1, p2}, Lo2/d;->b(Lo2/d;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

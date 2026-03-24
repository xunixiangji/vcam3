.class Lr2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr2/a;


# direct methods
.method constructor <init>(Lr2/a;)V
    .locals 0

    iput-object p1, p0, Lr2/a$c;->a:Lr2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Lr2/a$c;->a:Lr2/a;

    invoke-static {v0}, Lr2/a;->B1(Lr2/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lr2/a$k;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    iget-object v2, p0, Lr2/a$c;->a:Lr2/a;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/d;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lr2/a$k;-><init>(Landroid/media/Image;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

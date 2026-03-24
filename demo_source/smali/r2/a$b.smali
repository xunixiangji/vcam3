.class Lr2/a$b;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


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

    iput-object p1, p0, Lr2/a$b;->a:Lr2/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lr2/a$b;->a:Lr2/a;

    invoke-static {v0}, Lr2/a;->x1(Lr2/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lr2/a$b;->a:Lr2/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr2/a;->z1(Lr2/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    iget-object p2, p0, Lr2/a$b;->a:Lr2/a;

    invoke-static {p2}, Lr2/a;->x1(Lr2/a;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lr2/a$b;->a:Lr2/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr2/a;->z1(Lr2/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lr2/a$b;->a:Lr2/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lr2/a$b;->a:Lr2/a;

    invoke-static {v0}, Lr2/a;->x1(Lr2/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lr2/a$b;->a:Lr2/a;

    invoke-static {v0, p1}, Lr2/a;->z1(Lr2/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lr2/a$b;->a:Lr2/a;

    invoke-static {p1}, Lr2/a;->A1(Lr2/a;)V

    return-void
.end method

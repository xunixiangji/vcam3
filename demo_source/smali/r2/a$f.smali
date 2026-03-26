.class Lr2/a$f;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr2/a;->M1()V
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

    iput-object p1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object p1, p0, Lr2/a$f;->a:Lr2/a;

    const-string v0, "Failed"

    invoke-static {p1, v0}, Lr2/a;->v1(Lr2/a;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {v0}, Lr2/a;->y1(Lr2/a;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {v0, p1}, Lr2/a;->H1(Lr2/a;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object p1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {p1}, Lr2/a;->q1(Lr2/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {p1}, Lr2/a;->q1(Lr2/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Lr2/a;->r1(Lr2/a;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {p1}, Lr2/a;->q1(Lr2/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lr2/a;->t1(Lr2/a;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    iget-object p1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {p1}, Lr2/a;->G1(Lr2/a;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {v0}, Lr2/a;->s1(Lr2/a;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {v1}, Lr2/a;->u1(Lr2/a;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lr2/a$f;->a:Lr2/a;

    invoke-static {v2}, Lr2/a;->B1(Lr2/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

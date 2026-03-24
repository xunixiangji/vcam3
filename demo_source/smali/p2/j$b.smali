.class Lp2/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp2/j;


# direct methods
.method constructor <init>(Lp2/j;)V
    .locals 0

    iput-object p1, p0, Lp2/j$b;->a:Lp2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {p1}, Lp2/j;->c(Lp2/j;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {v0}, Lp2/j;->d(Lp2/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {v0}, Lp2/j;->e(Lp2/j;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Ll1/k;->i:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lp2/r;)V
    .locals 3

    iget-object v0, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {v0}, Lp2/j;->c(Lp2/j;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {v1}, Lp2/j;->d(Lp2/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lp2/j$b;->a:Lp2/j;

    invoke-static {v1}, Lp2/j;->e(Lp2/j;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Ll1/k;->e:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

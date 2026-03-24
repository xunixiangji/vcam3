.class final Lt3/g$i;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g;->t0(ILt3/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Lu2/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lt3/g;

.field final synthetic d:I

.field final synthetic e:Lt3/b;


# direct methods
.method constructor <init>(Lt3/g;ILt3/b;)V
    .locals 0

    iput-object p1, p0, Lt3/g$i;->c:Lt3/g;

    iput p2, p0, Lt3/g$i;->d:I

    iput-object p3, p0, Lt3/g$i;->e:Lt3/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lt3/g$i;->c:Lt3/g;

    invoke-static {v0}, Lt3/g;->O(Lt3/g;)Lt3/m;

    move-result-object v0

    iget v1, p0, Lt3/g$i;->d:I

    iget-object v2, p0, Lt3/g$i;->e:Lt3/b;

    invoke-interface {v0, v1, v2}, Lt3/m;->c(ILt3/b;)V

    iget-object v0, p0, Lt3/g$i;->c:Lt3/g;

    iget v1, p0, Lt3/g$i;->d:I

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lt3/g;->J(Lt3/g;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$i;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

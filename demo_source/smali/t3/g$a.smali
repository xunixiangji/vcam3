.class final Lt3/g$a;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g;-><init>(Lt3/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lt3/g;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lt3/g;J)V
    .locals 0

    iput-object p1, p0, Lt3/g$a;->c:Lt3/g;

    iput-wide p2, p0, Lt3/g$a;->d:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Long;
    .locals 8

    iget-object v0, p0, Lt3/g$a;->c:Lt3/g;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lt3/g;->N(Lt3/g;)J

    move-result-wide v1

    invoke-static {v0}, Lt3/g;->M(Lt3/g;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lt3/g;->M(Lt3/g;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lt3/g;->V(Lt3/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lt3/g$a;->c:Lt3/g;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt3/g;->i(Lt3/g;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0, v3, v2, v3}, Lt3/g;->F0(ZII)V

    iget-wide v0, p0, Lt3/g$a;->d:J

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$a;->c()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

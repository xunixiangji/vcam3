.class final Lt3/g$f;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g;->q0(ILb4/f;IZ)V
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

.field final synthetic e:Lb4/d;

.field final synthetic f:I

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lt3/g;ILb4/d;IZ)V
    .locals 0

    iput-object p1, p0, Lt3/g$f;->c:Lt3/g;

    iput p2, p0, Lt3/g$f;->d:I

    iput-object p3, p0, Lt3/g$f;->e:Lb4/d;

    iput p4, p0, Lt3/g$f;->f:I

    iput-boolean p5, p0, Lt3/g$f;->g:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    iget-object v0, p0, Lt3/g$f;->c:Lt3/g;

    iget v1, p0, Lt3/g$f;->d:I

    iget-object v2, p0, Lt3/g$f;->e:Lb4/d;

    iget v3, p0, Lt3/g$f;->f:I

    iget-boolean v4, p0, Lt3/g$f;->g:Z

    :try_start_0
    invoke-static {v0}, Lt3/g;->O(Lt3/g;)Lt3/m;

    move-result-object v5

    invoke-interface {v5, v1, v2, v3, v4}, Lt3/m;->d(ILb4/f;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lt3/g;->m0()Lt3/k;

    move-result-object v3

    sget-object v5, Lt3/b;->l:Lt3/b;

    invoke-virtual {v3, v1, v5}, Lt3/k;->R(ILt3/b;)V

    :cond_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lt3/g;->J(Lt3/g;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$f;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

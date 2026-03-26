.class final Lt3/g$h;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g;->s0(ILjava/util/List;)V
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

.field final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt3/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lt3/g;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/g;",
            "I",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/g$h;->c:Lt3/g;

    iput p2, p0, Lt3/g$h;->d:I

    iput-object p3, p0, Lt3/g$h;->e:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lt3/g$h;->c:Lt3/g;

    invoke-static {v0}, Lt3/g;->O(Lt3/g;)Lt3/m;

    move-result-object v0

    iget v1, p0, Lt3/g$h;->d:I

    iget-object v2, p0, Lt3/g$h;->e:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lt3/m;->a(ILjava/util/List;)Z

    move-result v0

    iget-object v1, p0, Lt3/g$h;->c:Lt3/g;

    iget v2, p0, Lt3/g$h;->d:I

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lt3/g;->m0()Lt3/k;

    move-result-object v0

    sget-object v3, Lt3/b;->l:Lt3/b;

    invoke-virtual {v0, v2, v3}, Lt3/k;->R(ILt3/b;)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lt3/g;->J(Lt3/g;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$h;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

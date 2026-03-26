.class final Lt3/g$e$b;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g$e;->b(ZIILjava/util/List;)V
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

.field final synthetic d:Lt3/j;


# direct methods
.method constructor <init>(Lt3/g;Lt3/j;)V
    .locals 0

    iput-object p1, p0, Lt3/g$e$b;->c:Lt3/g;

    iput-object p2, p0, Lt3/g$e$b;->d:Lt3/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lt3/g$e$b;->c:Lt3/g;

    invoke-virtual {v0}, Lt3/g;->f0()Lt3/g$d;

    move-result-object v0

    iget-object v1, p0, Lt3/g$e$b;->d:Lt3/j;

    invoke-virtual {v0, v1}, Lt3/g$d;->b(Lt3/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lw3/h;->a:Lw3/h$a;

    invoke-virtual {v1}, Lw3/h$a;->g()Lw3/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lt3/g$e$b;->c:Lt3/g;

    invoke-virtual {v3}, Lt3/g;->c0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lw3/h;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    iget-object v1, p0, Lt3/g$e$b;->d:Lt3/j;

    :try_start_1
    sget-object v2, Lt3/b;->e:Lt3/b;

    invoke-virtual {v1, v2, v0}, Lt3/j;->e(Lt3/b;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$e$b;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

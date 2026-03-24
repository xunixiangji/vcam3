.class final Lt3/g$e$a;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g$e;->l(ZLt3/n;)V
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

.field final synthetic d:Le3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le3/k<",
            "Lt3/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lt3/g;Le3/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/g;",
            "Le3/k<",
            "Lt3/n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/g$e$a;->c:Lt3/g;

    iput-object p2, p0, Lt3/g$e$a;->d:Le3/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lt3/g$e$a;->c:Lt3/g;

    invoke-virtual {v0}, Lt3/g;->f0()Lt3/g$d;

    move-result-object v0

    iget-object v1, p0, Lt3/g$e$a;->c:Lt3/g;

    iget-object v2, p0, Lt3/g$e$a;->d:Le3/k;

    iget-object v2, v2, Le3/k;->b:Ljava/lang/Object;

    check-cast v2, Lt3/n;

    invoke-virtual {v0, v1, v2}, Lt3/g$d;->a(Lt3/g;Lt3/n;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$e$a;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

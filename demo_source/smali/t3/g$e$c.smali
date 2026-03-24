.class final Lt3/g$e$c;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g$e;->i(ZII)V
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

.field final synthetic e:I


# direct methods
.method constructor <init>(Lt3/g;II)V
    .locals 0

    iput-object p1, p0, Lt3/g$e$c;->c:Lt3/g;

    iput p2, p0, Lt3/g$e$c;->d:I

    iput p3, p0, Lt3/g$e$c;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lt3/g$e$c;->c:Lt3/g;

    iget v1, p0, Lt3/g$e$c;->d:I

    iget v2, p0, Lt3/g$e$c;->e:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lt3/g;->F0(ZII)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$e$c;->c()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

.class Lb1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb1/g;-><init>(Lb1/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb1/g;


# direct methods
.method constructor <init>(Lb1/g;)V
    .locals 0

    iput-object p1, p0, Lb1/g$a;->a:Lb1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb1/m;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lb1/g$a;->a:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lb1/m;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lb1/g$a;->a:Lb1/g;

    invoke-static {v0}, Lb1/g;->c(Lb1/g;)[Lb1/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lb1/m;->f(Landroid/graphics/Matrix;)Lb1/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lb1/m;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Lb1/g$a;->a:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lb1/m;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lb1/g$a;->a:Lb1/g;

    invoke-static {v0}, Lb1/g;->d(Lb1/g;)[Lb1/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lb1/m;->f(Landroid/graphics/Matrix;)Lb1/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

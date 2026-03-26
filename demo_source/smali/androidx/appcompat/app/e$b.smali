.class Landroidx/appcompat/app/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/e;->O()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/e$b;->a:Landroidx/appcompat/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ly/x;)Ly/x;
    .locals 4

    invoke-virtual {p2}, Ly/x;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/e$b;->a:Landroidx/appcompat/app/e;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/e;->I0(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ly/x;->b()I

    move-result v0

    invoke-virtual {p2}, Ly/x;->c()I

    move-result v2

    invoke-virtual {p2}, Ly/x;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Ly/x;->f(IIII)Ly/x;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Ly/p;->O(Landroid/view/View;Ly/x;)Ly/x;

    move-result-object p1

    return-object p1
.end method

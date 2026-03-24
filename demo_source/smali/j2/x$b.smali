.class Lj2/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/x;->i(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:I

.field final synthetic e:Lj2/x;


# direct methods
.method constructor <init>(Lj2/x;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lj2/x$b;->e:Lj2/x;

    iput-object p2, p0, Lj2/x$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lj2/x$b;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lj2/x$b;->c:Ljava/util/ArrayList;

    iput p5, p0, Lj2/x$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lj2/x$b;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj2/x$b;->d(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic d(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2

    new-instance v0, Lj2/x$b$a;

    invoke-direct {v0, p0}, Lj2/x$b$a;-><init>(Lj2/x$b;)V

    new-instance v1, Lj2/x$b$b;

    invoke-direct {v1, p0, p3, p4, p2}, Lj2/x$b$b;-><init>(Lj2/x$b;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {p1, p2, v0, v1}, Lj2/x;->c(Landroid/app/Activity;Ljava/util/ArrayList;Lj2/e;Lj2/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    iget-object p1, p0, Lj2/x$b;->e:Lj2/x;

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lj2/c;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x96

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    iget-object v2, p0, Lj2/x$b;->a:Landroid/app/Activity;

    iget-object v3, p0, Lj2/x$b;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lj2/x$b;->c:Ljava/util/ArrayList;

    iget v5, p0, Lj2/x$b;->d:I

    new-instance v6, Lj2/y;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj2/y;-><init>(Lj2/x$b;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-static {v6, p1, p2}, Lj2/a0;->u(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p1, p0, Lj2/x$b;->e:Lj2/x;

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lj2/x$b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    iget-object p2, p0, Lj2/x$b;->e:Lj2/x;

    iget v0, p0, Lj2/x$b;->d:I

    iget-object v1, p0, Lj2/x$b;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lj2/x;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

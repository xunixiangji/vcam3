.class Lg0/c$j;
.super Lg0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/c;->o(Landroid/view/ViewGroup;Lg0/r;Lg0/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lg0/c;


# direct methods
.method constructor <init>(Lg0/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lg0/c$j;->c:Lg0/c;

    iput-object p2, p0, Lg0/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lg0/m;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg0/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lg0/l;)V
    .locals 1

    iget-object p1, p0, Lg0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg0/v;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/c$j;->a:Z

    return-void
.end method

.method public c(Lg0/l;)V
    .locals 2

    iget-boolean v0, p0, Lg0/c$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg0/v;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lg0/l;->Q(Lg0/l$f;)Lg0/l;

    return-void
.end method

.method public d(Lg0/l;)V
    .locals 1

    iget-object p1, p0, Lg0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg0/v;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public e(Lg0/l;)V
    .locals 1

    iget-object p1, p0, Lg0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg0/v;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.class Lg0/d$a;
.super Lg0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/d;->k0(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lg0/d;


# direct methods
.method constructor <init>(Lg0/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg0/d$a;->b:Lg0/d;

    iput-object p2, p0, Lg0/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lg0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lg0/l;)V
    .locals 2

    iget-object v0, p0, Lg0/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lg0/y;->g(Landroid/view/View;F)V

    iget-object v0, p0, Lg0/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Lg0/y;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Lg0/l;->Q(Lg0/l$f;)Lg0/l;

    return-void
.end method

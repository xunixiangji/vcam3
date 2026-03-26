.class public Lp2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/OrientationEventListener;

.field private d:Lp2/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lp2/p;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lp2/p;->b:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic b(Lp2/p;)Lp2/o;
    .locals 0

    iget-object p0, p0, Lp2/p;->d:Lp2/o;

    return-object p0
.end method

.method static synthetic c(Lp2/p;)I
    .locals 0

    iget p0, p0, Lp2/p;->a:I

    return p0
.end method

.method static synthetic d(Lp2/p;I)I
    .locals 0

    iput p1, p0, Lp2/p;->a:I

    return p1
.end method


# virtual methods
.method public e(Landroid/content/Context;Lp2/o;)V
    .locals 1

    invoke-virtual {p0}, Lp2/p;->f()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lp2/p;->d:Lp2/o;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lp2/p;->b:Landroid/view/WindowManager;

    new-instance p2, Lp2/p$a;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lp2/p$a;-><init>(Lp2/p;Landroid/content/Context;I)V

    iput-object p2, p0, Lp2/p;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {p2}, Landroid/view/OrientationEventListener;->enable()V

    iget-object p1, p0, Lp2/p;->b:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lp2/p;->a:I

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lp2/p;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp2/p;->c:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lp2/p;->b:Landroid/view/WindowManager;

    iput-object v0, p0, Lp2/p;->d:Lp2/o;

    return-void
.end method

.class final Lcom/ashokvarma/bottomnavigation/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ashokvarma/bottomnavigation/b;->d(Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/b$a;->a:Landroid/view/View;

    iput p2, p0, Lcom/ashokvarma/bottomnavigation/b$a;->b:I

    iput-object p3, p0, Lcom/ashokvarma/bottomnavigation/b$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/b$a;->a:Landroid/view/View;

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/b$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/b$a;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/ashokvarma/bottomnavigation/b$a;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/ashokvarma/bottomnavigation/b$a;->a()V

    return-void
.end method

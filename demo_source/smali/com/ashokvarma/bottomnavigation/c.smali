.class public Lcom/ashokvarma/bottomnavigation/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/c;->e:Z

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/c;->a:I

    iput-object p2, p0, Lcom/ashokvarma/bottomnavigation/c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/c;->h:I

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lo/a;->b(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    iget p1, p0, Lcom/ashokvarma/bottomnavigation/c;->j:I

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method b()Lcom/ashokvarma/bottomnavigation/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/c;->a:I

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lo/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->b:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method d(Landroid/content/Context;)I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/c;->k:I

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lo/a;->b(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    iget p1, p0, Lcom/ashokvarma/bottomnavigation/c;->m:I

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/c;->c:I

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lo/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->d:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/c;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/c;->e:Z

    return v0
.end method

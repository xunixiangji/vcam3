.class public Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln1/b;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Ln1/b;->l()I

    move-result v6

    invoke-virtual {p1}, Ln1/b;->h()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_2

    mul-int v3, v2, v6

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_1

    add-int v5, v3, v4

    invoke-virtual {p1, v4, v2}, Ln1/b;->e(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    :goto_2
    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Lg1/a;IILjava/util/Map;)Ln1/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lg1/a;",
            "II",
            "Ljava/util/Map<",
            "Lg1/g;",
            "*>;)",
            "Ln1/b;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lg1/l;

    invoke-direct {v0}, Lg1/l;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lg1/l;->a(Ljava/lang/String;Lg1/a;IILjava/util/Map;)Ln1/b;

    move-result-object p1
    :try_end_0
    .catch Lg1/v; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lg1/v;

    invoke-direct {p2, p1}, Lg1/v;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public c(Ljava/lang/String;Lg1/a;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lg1/a;",
            "II",
            "Ljava/util/Map<",
            "Lg1/g;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lp2/b;->b(Ljava/lang/String;Lg1/a;IILjava/util/Map;)Ln1/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/b;->a(Ln1/b;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

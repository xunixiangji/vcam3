.class public Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/o;


# static fields
.field private static final b:[Lg1/s;


# instance fields
.field private final a:Lg2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lg1/s;

    sput-object v0, Lf2/a;->b:[Lg1/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg2/e;

    invoke-direct {v0}, Lg2/e;-><init>()V

    iput-object v0, p0, Lf2/a;->a:Lg2/e;

    return-void
.end method

.method private static d(Ln1/b;)Ln1/b;
    .locals 11

    invoke-virtual {p0}, Ln1/b;->k()[I

    move-result-object v0

    invoke-virtual {p0}, Ln1/b;->f()[I

    move-result-object v1

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    invoke-static {v0, p0}, Lf2/a;->e([ILn1/b;)F

    move-result v2

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v5, v1, v3

    const/4 v6, 0x0

    aget v0, v0, v6

    aget v1, v1, v6

    if-ge v0, v1, :cond_b

    if-ge v4, v5, :cond_b

    sub-int v7, v5, v4

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_1

    add-int v1, v0, v7

    invoke-virtual {p0}, Ln1/b;->l()I

    move-result v8

    if-ge v1, v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    sub-int v8, v1, v0

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v8, :cond_a

    if-lez v3, :cond_a

    if-ne v3, v8, :cond_9

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_3

    if-gt v9, v7, :cond_2

    sub-int/2addr v0, v9

    goto :goto_1

    :cond_2
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v5

    if-lez v1, :cond_5

    if-gt v1, v7, :cond_4

    sub-int/2addr v4, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    new-instance v1, Ln1/b;

    invoke-direct {v1, v8, v3}, Ln1/b;-><init>(II)V

    move v5, v6

    :goto_3
    if-ge v5, v3, :cond_8

    int-to-float v7, v5

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v4

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_7

    int-to-float v10, v9

    mul-float/2addr v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {p0, v10, v7}, Ln1/b;->e(II)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1, v9, v5}, Ln1/b;->n(II)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-object v1

    :cond_9
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_a
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_b
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0

    :cond_c
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0
.end method

.method private static e([ILn1/b;)F
    .locals 8

    invoke-virtual {p1}, Ln1/b;->h()I

    move-result v0

    invoke-virtual {p1}, Ln1/b;->l()I

    move-result v1

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    move v6, v2

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v5, v0, :cond_1

    invoke-virtual {p1, v3, v5}, Ln1/b;->e(II)Z

    move-result v7

    if-eq v4, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    xor-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_2

    if-eq v5, v0, :cond_2

    aget p0, p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 p1, 0x40e00000    # 7.0f

    div-float/2addr p0, p1

    return p0

    :cond_2
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Lg1/c;Ljava/util/Map;)Lg1/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg1/c;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Lg1/q;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Lg1/e;->d:Lg1/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg1/c;->a()Ln1/b;

    move-result-object p1

    invoke-static {p1}, Lf2/a;->d(Ln1/b;)Ln1/b;

    move-result-object p1

    iget-object v0, p0, Lf2/a;->a:Lg2/e;

    invoke-virtual {v0, p1, p2}, Lg2/e;->c(Ln1/b;Ljava/util/Map;)Ln1/e;

    move-result-object p1

    sget-object p2, Lf2/a;->b:[Lg1/s;

    goto :goto_0

    :cond_0
    new-instance v0, Lh2/c;

    invoke-virtual {p1}, Lg1/c;->a()Ln1/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lh2/c;-><init>(Ln1/b;)V

    invoke-virtual {v0, p2}, Lh2/c;->e(Ljava/util/Map;)Ln1/g;

    move-result-object p1

    iget-object v0, p0, Lf2/a;->a:Lg2/e;

    invoke-virtual {p1}, Ln1/g;->a()Ln1/b;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lg2/e;->c(Ln1/b;Ljava/util/Map;)Ln1/e;

    move-result-object p2

    invoke-virtual {p1}, Ln1/g;->b()[Lg1/s;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_0
    invoke-virtual {p1}, Ln1/e;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lg2/i;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ln1/e;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/i;

    invoke-virtual {v0, p2}, Lg2/i;->a([Lg1/s;)V

    :cond_1
    new-instance v0, Lg1/q;

    invoke-virtual {p1}, Ln1/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ln1/e;->e()[B

    move-result-object v2

    sget-object v3, Lg1/a;->m:Lg1/a;

    invoke-direct {v0, v1, v2, p2, v3}, Lg1/q;-><init>(Ljava/lang/String;[B[Lg1/s;Lg1/a;)V

    invoke-virtual {p1}, Ln1/e;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object v1, Lg1/r;->d:Lg1/r;

    invoke-virtual {v0, v1, p2}, Lg1/q;->h(Lg1/r;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ln1/e;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v1, Lg1/r;->e:Lg1/r;

    invoke-virtual {v0, v1, p2}, Lg1/q;->h(Lg1/r;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Ln1/e;->i()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lg1/r;->k:Lg1/r;

    invoke-virtual {p1}, Ln1/e;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lg1/q;->h(Lg1/r;Ljava/lang/Object;)V

    sget-object p2, Lg1/r;->l:Lg1/r;

    invoke-virtual {p1}, Ln1/e;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lg1/q;->h(Lg1/r;Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public b(Lg1/c;)Lg1/q;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf2/a;->a(Lg1/c;Ljava/util/Map;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

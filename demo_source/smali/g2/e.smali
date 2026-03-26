.class public final Lg2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lp1/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp1/c;

    sget-object v1, Lp1/a;->l:Lp1/a;

    invoke-direct {v0, v1}, Lp1/c;-><init>(Lp1/a;)V

    iput-object v0, p0, Lg2/e;->a:Lp1/c;

    return-void
.end method

.method private a([BI)V
    .locals 5

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg2/e;->a:Lp1/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lp1/c;->a([II)V
    :try_end_0
    .catch Lp1/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    invoke-static {}, Lg1/d;->a()Lg1/d;

    move-result-object p1

    throw p1
.end method

.method private b(Lg2/a;Ljava/util/Map;)Ln1/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/a;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Ln1/e;"
        }
    .end annotation

    invoke-virtual {p1}, Lg2/a;->e()Lg2/j;

    move-result-object v0

    invoke-virtual {p1}, Lg2/a;->d()Lg2/g;

    move-result-object v1

    invoke-virtual {v1}, Lg2/g;->d()Lg2/f;

    move-result-object v1

    invoke-virtual {p1}, Lg2/a;->c()[B

    move-result-object p1

    invoke-static {p1, v0, v1}, Lg2/b;->b([BLg2/j;Lg2/f;)[Lg2/b;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lg2/b;->c()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v5, [B

    array-length v4, p1

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lg2/b;->a()[B

    move-result-object v8

    invoke-virtual {v7}, Lg2/b;->c()I

    move-result v7

    invoke-direct {p0, v8, v7}, Lg2/e;->a([BI)V

    move v9, v3

    :goto_2
    if-ge v9, v7, :cond_1

    add-int/lit8 v10, v6, 0x1

    aget-byte v11, v8, v9

    aput-byte v11, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0, v1, p2}, Lg2/d;->a([BLg2/j;Lg2/f;Ljava/util/Map;)Ln1/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public c(Ln1/b;Ljava/util/Map;)Ln1/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/b;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Ln1/e;"
        }
    .end annotation

    new-instance v0, Lg2/a;

    invoke-direct {v0, p1}, Lg2/a;-><init>(Ln1/b;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lg2/e;->b(Lg2/a;Ljava/util/Map;)Ln1/e;

    move-result-object p1
    :try_end_0
    .catch Lg1/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lg1/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lg2/a;->f()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lg2/a;->g(Z)V

    invoke-virtual {v0}, Lg2/a;->e()Lg2/j;

    invoke-virtual {v0}, Lg2/a;->d()Lg2/g;

    invoke-virtual {v0}, Lg2/a;->b()V

    invoke-direct {p0, v0, p2}, Lg2/e;->b(Lg2/a;Ljava/util/Map;)Ln1/e;

    move-result-object p2

    new-instance v0, Lg2/i;

    invoke-direct {v0, v2}, Lg2/i;-><init>(Z)V

    invoke-virtual {p2, v0}, Ln1/e;->m(Ljava/lang/Object;)V
    :try_end_1
    .catch Lg1/h; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lg1/d; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw v1
.end method

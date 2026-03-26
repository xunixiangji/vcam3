.class public final Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/o;


# static fields
.field private static final b:[Lg1/s;


# instance fields
.field private final a:Lv1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lg1/s;

    sput-object v0, Lu1/a;->b:[Lg1/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    iput-object v0, p0, Lu1/a;->a:Lv1/c;

    return-void
.end method

.method private static d(Ln1/b;)Ln1/b;
    .locals 14

    invoke-virtual {p0}, Ln1/b;->g()[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v0, v0, v6

    new-instance v6, Ln1/b;

    const/16 v7, 0x1e

    const/16 v8, 0x21

    invoke-direct {v6, v7, v8}, Ln1/b;-><init>(II)V

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_2

    mul-int v10, v9, v0

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v8

    add-int/2addr v10, v3

    move v11, v1

    :goto_1
    if-ge v11, v7, :cond_1

    mul-int v12, v11, v5

    div-int/lit8 v13, v5, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int/2addr v13, v5

    div-int/2addr v13, v4

    add-int/2addr v12, v13

    div-int/2addr v12, v7

    add-int/2addr v12, v2

    invoke-virtual {p0, v12, v10}, Ln1/b;->e(II)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6, v11, v9}, Ln1/b;->n(II)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-object v6

    :cond_3
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lg1/c;Ljava/util/Map;)Lg1/q;
    .locals 4
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

    invoke-virtual {p1}, Lg1/c;->a()Ln1/b;

    move-result-object p1

    invoke-static {p1}, Lu1/a;->d(Ln1/b;)Ln1/b;

    move-result-object p1

    iget-object v0, p0, Lu1/a;->a:Lv1/c;

    invoke-virtual {v0, p1, p2}, Lv1/c;->b(Ln1/b;Ljava/util/Map;)Ln1/e;

    move-result-object p1

    new-instance p2, Lg1/q;

    invoke-virtual {p1}, Ln1/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ln1/e;->e()[B

    move-result-object v1

    sget-object v2, Lu1/a;->b:[Lg1/s;

    sget-object v3, Lg1/a;->k:Lg1/a;

    invoke-direct {p2, v0, v1, v2, v3}, Lg1/q;-><init>(Ljava/lang/String;[B[Lg1/s;Lg1/a;)V

    invoke-virtual {p1}, Ln1/e;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lg1/r;->e:Lg1/r;

    invoke-virtual {p2, v0, p1}, Lg1/q;->h(Lg1/r;Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public b(Lg1/c;)Lg1/q;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lu1/a;->a(Lg1/c;Ljava/util/Map;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

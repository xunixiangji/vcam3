.class public final Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sections"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ranges"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mappings"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lv3/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lv3/a;->c:Ljava/lang/String;

    return-void
.end method

.method private final a(III)I
    .locals 3

    and-int/lit8 p1, p1, 0x7f

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_1

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lv3/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Le3/f;->f(II)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 p3, v0, -0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_2

    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_1
    neg-int p1, p2

    add-int/lit8 v0, p1, -0x1

    :cond_2
    if-ltz v0, :cond_3

    mul-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 v0, p1, 0x4

    :goto_1
    return v0
.end method

.method private final b(I)I
    .locals 5

    const v0, 0x1fff80

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lv3/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v2, 0x4

    iget-object v4, p0, Lv3/a;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lv3/c;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1, v3}, Le3/f;->f(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    neg-int p1, v1

    add-int/lit8 v2, p1, -0x1

    :cond_2
    if-ltz v2, :cond_3

    mul-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_3
    neg-int p1, v2

    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 v2, p1, 0x4

    :goto_1
    return v2
.end method


# virtual methods
.method public final c(ILb4/e;)Z
    .locals 6

    const-string v0, "sink"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lv3/a;->b(I)I

    move-result v0

    iget-object v1, p0, Lv3/a;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Lv3/c;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lv3/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lv3/a;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6

    invoke-static {v2, v0}, Lv3/c;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv3/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lv3/a;->a(III)I

    move-result v0

    iget-object v1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_1

    if-ge v1, v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lv3/c;->a(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lv3/a;->c:Ljava/lang/String;

    add-int/2addr v1, p1

    invoke-interface {p2, v0, p1, v1}, Lb4/e;->h(Ljava/lang/String;II)Lb4/e;

    goto/16 :goto_a

    :cond_2
    const/16 v5, 0x50

    if-gt v2, v1, :cond_3

    if-ge v1, v5, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    sub-int/2addr p1, v0

    :goto_3
    invoke-interface {p2, p1}, Lb4/e;->r(I)Lb4/e;

    goto/16 :goto_a

    :cond_4
    if-gt v5, v1, :cond_5

    const/16 v2, 0x60

    if-ge v1, v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    if-eqz v2, :cond_6

    iget-object v2, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/2addr p1, v0

    goto :goto_3

    :cond_6
    const/16 v2, 0x77

    if-eq v1, v2, :cond_f

    const/16 v2, 0x78

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v2, 0x79

    if-ne v1, v2, :cond_8

    invoke-interface {p2, p1}, Lb4/e;->r(I)Lb4/e;

    return v4

    :cond_8
    const/16 v2, 0x7a

    if-ne v1, v2, :cond_9

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_6
    invoke-interface {p2, p1}, Lb4/e;->B(I)Lb4/e;

    goto/16 :goto_a

    :cond_9
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_a

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit16 p1, p1, 0x80

    goto :goto_6

    :cond_a
    const/16 v2, 0x7c

    if-ne v1, v2, :cond_b

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_8
    invoke-interface {p2, p1}, Lb4/e;->B(I)Lb4/e;

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    goto :goto_5

    :cond_b
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_c

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit16 p1, p1, 0x80

    goto :goto_8

    :cond_c
    const/16 v2, 0x7e

    if-ne v1, v2, :cond_d

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_9
    invoke-interface {p2, p1}, Lb4/e;->B(I)Lb4/e;

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    goto :goto_7

    :cond_d
    const/16 v2, 0x7f

    if-ne v1, v2, :cond_e

    iget-object p1, p0, Lv3/a;->b:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit16 p1, p1, 0x80

    goto :goto_9

    :cond_e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected rangesIndex for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    :goto_a
    return v3
.end method

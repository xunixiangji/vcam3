.class public final Lv3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv3/d;

.field private static final b:Ljava/lang/String;

.field private static final c:Lb4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/d;

    invoke-direct {v0}, Lv3/d;-><init>()V

    sput-object v0, Lv3/d;->a:Lv3/d;

    const-string v0, "xn--"

    sput-object v0, Lv3/d;->b:Ljava/lang/String;

    sget-object v1, Lb4/g;->e:Lb4/g$a;

    invoke-virtual {v1, v0}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v0

    sput-object v0, Lv3/d;->c:Lb4/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(IIZ)I
    .locals 0

    if-eqz p3, :cond_0

    div-int/lit16 p1, p1, 0x2bc

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    div-int p2, p1, p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_1
    const/16 p3, 0x1c7

    if-le p1, p3, :cond_1

    div-int/lit8 p1, p1, 0x23

    add-int/lit8 p2, p2, 0x24

    goto :goto_1

    :cond_1
    mul-int/lit8 p3, p1, 0x24

    add-int/lit8 p1, p1, 0x26

    div-int/2addr p3, p1

    add-int/2addr p2, p3

    return p2
.end method

.method private final b(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj3/a;->e(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, 0x1

    if-ge v2, p3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p2, 0x10000

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    add-int/2addr v1, p2

    move p2, v2

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v1, 0x3f

    :cond_3
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final d(Ljava/lang/String;IILb4/d;)Z
    .locals 23

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    sget-object v2, Lv3/d;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lj3/l;->n(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v9, v6, v7, v8}, Lb4/d;->r0(Ljava/lang/String;II)Lb4/d;

    return v10

    :cond_0
    add-int/lit8 v7, v7, 0x4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lj3/l;->R(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/16 v1, 0x3a

    const/16 v2, 0x5b

    const/16 v3, 0x7b

    const/16 v4, 0x30

    const/16 v5, 0x41

    const/16 v12, 0x61

    const/4 v13, 0x0

    if-lt v0, v7, :cond_a

    :goto_0
    if-ge v7, v0, :cond_9

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v12, v7, :cond_1

    if-ge v7, v3, :cond_1

    move v15, v10

    goto :goto_1

    :cond_1
    move v15, v13

    :goto_1
    if-eqz v15, :cond_2

    :goto_2
    move v15, v10

    goto :goto_3

    :cond_2
    if-gt v5, v7, :cond_3

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    move v15, v13

    :goto_3
    if-eqz v15, :cond_4

    :goto_4
    move v15, v10

    goto :goto_5

    :cond_4
    if-gt v4, v7, :cond_5

    if-ge v7, v1, :cond_5

    goto :goto_4

    :cond_5
    move v15, v13

    :goto_5
    if-eqz v15, :cond_6

    :goto_6
    move v15, v10

    goto :goto_7

    :cond_6
    const/16 v15, 0x2d

    if-ne v7, v15, :cond_7

    goto :goto_6

    :cond_7
    move v15, v13

    :goto_7
    if-eqz v15, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v7, v14

    goto :goto_0

    :cond_8
    return v13

    :cond_9
    add-int/2addr v7, v10

    :cond_a
    const/16 v0, 0x80

    const/16 v14, 0x48

    move v15, v13

    :goto_8
    if-ge v7, v8, :cond_1e

    const/16 v10, 0x24

    const v1, 0x7fffffff

    invoke-static {v10, v1}, Lg3/j;->h(II)Lg3/f;

    move-result-object v4

    invoke-static {v4, v10}, Lg3/j;->g(Lg3/d;I)Lg3/d;

    move-result-object v4

    invoke-virtual {v4}, Lg3/d;->a()I

    move-result v10

    invoke-virtual {v4}, Lg3/d;->b()I

    move-result v1

    invoke-virtual {v4}, Lg3/d;->c()I

    move-result v4

    if-lez v4, :cond_b

    if-le v10, v1, :cond_c

    :cond_b
    if-gez v4, :cond_1a

    if-gt v1, v10, :cond_1a

    :cond_c
    move/from16 v17, v15

    const/16 v18, 0x1

    :goto_9
    if-ne v7, v8, :cond_d

    return v13

    :cond_d
    add-int/lit8 v19, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v12, v7, :cond_e

    if-ge v7, v3, :cond_e

    const/16 v20, 0x1

    goto :goto_a

    :cond_e
    move/from16 v20, v13

    :goto_a
    const/16 v21, 0x1a

    if-eqz v20, :cond_f

    add-int/lit8 v7, v7, -0x61

    :goto_b
    move/from16 v2, v18

    goto :goto_e

    :cond_f
    if-gt v5, v7, :cond_10

    if-ge v7, v2, :cond_10

    const/16 v20, 0x1

    goto :goto_c

    :cond_10
    move/from16 v20, v13

    :goto_c
    if-eqz v20, :cond_11

    add-int/lit8 v7, v7, -0x41

    goto :goto_b

    :cond_11
    const/16 v2, 0x30

    if-gt v2, v7, :cond_12

    const/16 v2, 0x3a

    if-ge v7, v2, :cond_13

    const/16 v22, 0x1

    goto :goto_d

    :cond_12
    const/16 v2, 0x3a

    :cond_13
    move/from16 v22, v13

    :goto_d
    if-eqz v22, :cond_19

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v7, v7, 0x1a

    goto :goto_b

    :goto_e
    mul-int v18, v7, v2

    const v16, 0x7fffffff

    sub-int v3, v16, v18

    move/from16 v5, v17

    if-le v5, v3, :cond_14

    return v13

    :cond_14
    add-int v17, v5, v18

    if-gt v10, v14, :cond_15

    const/4 v3, 0x1

    goto :goto_10

    :cond_15
    add-int/lit8 v3, v14, 0x1a

    if-lt v10, v3, :cond_16

    goto :goto_f

    :cond_16
    sub-int v21, v10, v14

    :goto_f
    move/from16 v3, v21

    :goto_10
    if-lt v7, v3, :cond_18

    rsub-int/lit8 v3, v3, 0x24

    const v5, 0x7fffffff

    div-int v7, v5, v3

    if-le v2, v7, :cond_17

    return v13

    :cond_17
    mul-int v18, v2, v3

    if-eq v10, v1, :cond_18

    add-int/2addr v10, v4

    move/from16 v7, v19

    const/16 v2, 0x5b

    const/16 v3, 0x7b

    const/16 v5, 0x41

    goto :goto_9

    :cond_18
    move/from16 v7, v19

    goto :goto_11

    :cond_19
    return v13

    :cond_1a
    move/from16 v17, v15

    :goto_11
    sub-int v1, v17, v15

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move-object/from16 v4, p0

    if-nez v15, :cond_1b

    move v5, v3

    goto :goto_12

    :cond_1b
    move v5, v13

    :goto_12
    invoke-direct {v4, v1, v2, v5}, Lv3/d;->a(IIZ)I

    move-result v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    div-int v1, v17, v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_1c

    return v13

    :cond_1c
    add-int/2addr v0, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    rem-int v1, v17, v1

    const v2, 0x10ffff

    if-le v0, v2, :cond_1d

    return v13

    :cond_1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    move v10, v3

    const/16 v1, 0x3a

    const/16 v2, 0x5b

    const/16 v3, 0x7b

    const/16 v4, 0x30

    const/16 v5, 0x41

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v4, p0

    move v3, v10

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lb4/d;->s0(I)Lb4/d;

    goto :goto_13

    :cond_1f
    return v3
.end method

.method private final f(Ljava/lang/String;IILb4/d;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p3}, Lv3/d;->h(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v1, v2, v4, v5}, Lb4/d;->r0(Ljava/lang/String;II)Lb4/d;

    return v3

    :cond_0
    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    sget-object v6, Lv3/d;->c:Lb4/g;

    invoke-virtual {v1, v6}, Lb4/d;->g0(Lb4/g;)Lb4/d;

    invoke-direct/range {p0 .. p3}, Lv3/d;->b(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0x80

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ge v7, v8, :cond_1

    invoke-virtual {v1, v7}, Lb4/d;->k0(I)Lb4/d;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Lb4/d;->k0(I)Lb4/d;

    :cond_3
    const/16 v4, 0x48

    move v9, v5

    move v7, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_16

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const v13, 0x7fffffff

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-lt v12, v8, :cond_5

    goto :goto_2

    :cond_5
    move v12, v13

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-lt v15, v8, :cond_7

    goto :goto_3

    :cond_7
    move v15, v13

    :goto_3
    if-le v12, v15, :cond_8

    move-object v11, v14

    move v12, v15

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    :goto_4
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v10

    sub-int v8, v10, v8

    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v8, v11

    sub-int v11, v13, v8

    if-le v9, v11, :cond_9

    return v5

    :cond_9
    add-int/2addr v9, v8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ge v11, v10, :cond_c

    if-ne v9, v13, :cond_b

    return v5

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    if-ne v11, v10, :cond_a

    const/16 v11, 0x24

    invoke-static {v11, v13}, Lg3/j;->h(II)Lg3/f;

    move-result-object v12

    invoke-static {v12, v11}, Lg3/j;->g(Lg3/d;I)Lg3/d;

    move-result-object v11

    invoke-virtual {v11}, Lg3/d;->a()I

    move-result v12

    invoke-virtual {v11}, Lg3/d;->b()I

    move-result v14

    invoke-virtual {v11}, Lg3/d;->c()I

    move-result v11

    if-lez v11, :cond_d

    if-le v12, v14, :cond_e

    :cond_d
    if-gez v11, :cond_11

    if-gt v14, v12, :cond_11

    :cond_e
    move v15, v9

    :goto_6
    if-gt v12, v4, :cond_f

    move v5, v3

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v4, 0x1a

    if-lt v12, v5, :cond_10

    const/16 v5, 0x1a

    goto :goto_7

    :cond_10
    sub-int v5, v12, v4

    :goto_7
    if-lt v15, v5, :cond_12

    sub-int/2addr v15, v5

    rsub-int/lit8 v16, v5, 0x24

    rem-int v17, v15, v16

    add-int v5, v5, v17

    invoke-direct {v0, v5}, Lv3/d;->g(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lb4/d;->k0(I)Lb4/d;

    div-int v15, v15, v16

    if-eq v12, v14, :cond_12

    add-int/2addr v12, v11

    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    move v15, v9

    :cond_12
    invoke-direct {v0, v15}, Lv3/d;->g(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lb4/d;->k0(I)Lb4/d;

    add-int/lit8 v4, v7, 0x1

    if-ne v7, v6, :cond_13

    move v5, v3

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    :goto_8
    invoke-direct {v0, v9, v4, v5}, Lv3/d;->a(IIZ)I

    move-result v5

    move v7, v4

    move v4, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_14
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_15
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_16
    return v3
.end method

.method private final g(I)I
    .locals 3

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x61

    goto :goto_0

    :cond_0
    const/16 v1, 0x24

    if-ge p1, v1, :cond_1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x30

    :goto_0
    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h(Ljava/lang/String;II)Z
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lb4/d;

    invoke-direct {v1}, Lb4/d;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v4, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    move v5, v2

    invoke-static/range {v3 .. v8}, Lj3/l;->M(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v3, v0

    :cond_0
    invoke-direct {p0, p1, v2, v3, v1}, Lv3/d;->d(Ljava/lang/String;IILb4/d;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-ge v3, v0, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lb4/d;->k0(I)Lb4/d;

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lb4/d;->Z()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lb4/d;

    invoke-direct {v1}, Lb4/d;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v4, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    move v5, v2

    invoke-static/range {v3 .. v8}, Lj3/l;->M(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v3, v0

    :cond_0
    invoke-direct {p0, p1, v2, v3, v1}, Lv3/d;->f(Ljava/lang/String;IILb4/d;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-ge v3, v0, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lb4/d;->k0(I)Lb4/d;

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lb4/d;->Z()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

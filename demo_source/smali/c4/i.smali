.class public final Lc4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Ljava/util/List;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc4/h;",
            ">;)",
            "Ljava/util/Map<",
            "Lb4/y;",
            "Lc4/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb4/y;->c:Lb4/y$a;

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb4/y$a;->d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;

    move-result-object v0

    new-array v1, v3, [Lu2/g;

    new-instance v3, Lc4/h;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    move-object v5, v3

    move-object v6, v0

    invoke-direct/range {v5 .. v20}, Lc4/h;-><init>(Lb4/y;ZLjava/lang/String;JJJILjava/lang/Long;JILe3/d;)V

    invoke-static {v0, v3}, Lu2/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lu2/g;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lv2/d0;->d([Lu2/g;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lc4/i$a;

    invoke-direct {v1}, Lc4/i$a;-><init>()V

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lv2/m;->K(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc4/h;

    invoke-virtual {v2}, Lc4/h;->a()Lb4/y;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/h;

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2}, Lc4/h;->a()Lb4/y;

    move-result-object v3

    invoke-virtual {v3}, Lb4/y;->h()Lb4/y;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc4/h;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lc4/h;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lc4/h;->a()Lb4/y;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v15, Lc4/h;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    move-object v4, v15

    move-object v5, v3

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v4 .. v19}, Lc4/h;-><init>(Lb4/y;ZLjava/lang/String;JJJILjava/lang/Long;JILe3/d;)V

    move-object/from16 v4, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lc4/h;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lc4/h;->a()Lb4/y;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static final b(II)Ljava/lang/Long;
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    shr-int/lit8 v0, p0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v1, v0, 0x7bc

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 v3, p0, 0x1f

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 v4, p0, 0x1f

    shr-int/lit8 p0, p1, 0x5

    and-int/lit8 v5, p0, 0x3f

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v2, v0, -0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static final c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lj3/a;->a(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lb4/y;Lb4/j;Ld3/b;)Lb4/j0;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/y;",
            "Lb4/j;",
            "Ld3/b<",
            "-",
            "Lc4/h;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lb4/j0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "zipPath"

    invoke-static {v0, v3}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fileSystem"

    invoke-static {v1, v3}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "predicate"

    invoke-static {v2, v3}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lb4/j;->a(Lb4/y;)Lb4/h;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lb4/h;->Q()J

    move-result-wide v4

    const/16 v6, 0x16

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    const-wide/32 v8, 0x10000

    sub-long v8, v4, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_0
    invoke-virtual {v3, v4, v5}, Lb4/h;->R(J)Lb4/g0;

    move-result-object v10

    invoke-static {v10}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-interface {v10}, Lb4/f;->y()I

    move-result v11

    const v12, 0x6054b50

    if-ne v11, v12, :cond_7

    invoke-static {v10}, Lc4/i;->f(Lb4/f;)Lc4/e;

    move-result-object v8

    invoke-virtual {v8}, Lc4/e;->b()I

    move-result v9

    int-to-long v11, v9

    invoke-interface {v10, v11, v12}, Lb4/f;->e(J)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-interface {v10}, Lb4/g0;->close()V

    const/16 v10, 0x14

    int-to-long v10, v10

    sub-long/2addr v4, v10

    cmp-long v10, v4, v6

    const/4 v11, 0x0

    if-lez v10, :cond_3

    invoke-virtual {v3, v4, v5}, Lb4/h;->R(J)Lb4/g0;

    move-result-object v4

    invoke-static {v4}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-interface {v4}, Lb4/f;->y()I

    move-result v5

    const v10, 0x7064b50

    if-ne v5, v10, :cond_2

    invoke-interface {v4}, Lb4/f;->y()I

    move-result v5

    invoke-interface {v4}, Lb4/f;->m()J

    move-result-wide v12

    invoke-interface {v4}, Lb4/f;->y()I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v3, v12, v13}, Lb4/h;->R(J)Lb4/g0;

    move-result-object v5

    invoke-static {v5}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v5}, Lb4/f;->y()I

    move-result v10

    const v12, 0x6064b50

    if-ne v10, v12, :cond_0

    invoke-static {v5, v8}, Lc4/i;->i(Lb4/f;Lc4/e;)Lc4/e;

    move-result-object v8

    sget-object v10, Lu2/l;->a:Lu2/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v5, v11}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v5, v1}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported zip: spanned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    sget-object v5, Lu2/l;->a:Lu2/l;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {v4, v11}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-static {v4, v1}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lc4/e;->a()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lb4/h;->R(J)Lb4/g0;

    move-result-object v5

    invoke-static {v5}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v8}, Lc4/e;->c()J

    move-result-wide v12

    :goto_3
    cmp-long v10, v6, v12

    if-gez v10, :cond_6

    invoke-static {v5}, Lc4/i;->e(Lb4/f;)Lc4/h;

    move-result-object v10

    invoke-virtual {v10}, Lc4/h;->e()J

    move-result-wide v14

    invoke-virtual {v8}, Lc4/e;->a()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    invoke-interface {v2, v10}, Ld3/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v2, Lu2/l;->a:Lu2/l;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {v5, v11}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lc4/i;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lb4/j0;

    invoke-direct {v4, v0, v1, v2, v9}, Lb4/j0;-><init>(Lb4/y;Lb4/j;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    invoke-static {v3, v11}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-static {v5, v1}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    invoke-interface {v10}, Lb4/g0;->close()V

    const-wide/16 v10, -0x1

    add-long/2addr v4, v10

    cmp-long v10, v4, v8

    if-ltz v10, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6
    move-exception v0

    invoke-interface {v10}, Lb4/g0;->close()V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a zip: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb4/h;->Q()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lc3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final e(Lb4/f;)Lc4/h;
    .locals 27

    move-object/from16 v8, p0

    const-string v0, "<this>"

    invoke-static {v8, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_7

    const-wide/16 v0, 0x4

    invoke-interface {v8, v0, v1}, Lb4/f;->o(J)V

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_6

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v0

    and-int v12, v0, v1

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v2

    and-int/2addr v2, v1

    invoke-static {v2, v0}, Lc4/i;->b(II)Ljava/lang/Long;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long v9, v2, v4

    new-instance v11, Le3/j;

    invoke-direct {v11}, Le3/j;-><init>()V

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v11, Le3/j;->b:J

    new-instance v14, Le3/j;

    invoke-direct {v14}, Le3/j;-><init>()V

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v14, Le3/j;->b:J

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v2

    and-int v15, v2, v1

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v2

    and-int v7, v2, v1

    const-wide/16 v1, 0x8

    invoke-interface {v8, v1, v2}, Lb4/f;->o(J)V

    new-instance v6, Le3/j;

    invoke-direct {v6}, Le3/j;-><init>()V

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    iput-wide v1, v6, Le3/j;->b:J

    int-to-long v0, v0

    invoke-interface {v8, v0, v1}, Lb4/f;->e(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v3, v3, v1, v0}, Lj3/l;->B(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    iget-wide v0, v14, Le3/j;->b:J

    cmp-long v0, v0, v4

    const-wide/16 v18, 0x0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    int-to-long v3, v1

    add-long v3, v3, v18

    move-object/from16 v22, v6

    goto :goto_0

    :cond_0
    move-object/from16 v22, v6

    move-wide/from16 v3, v18

    :goto_0
    iget-wide v5, v11, Le3/j;->b:J

    const-wide v20, 0xffffffffL

    cmp-long v0, v5, v20

    if-nez v0, :cond_1

    int-to-long v5, v1

    add-long/2addr v3, v5

    :cond_1
    move-object v5, v2

    move-object/from16 v6, v22

    iget-wide v1, v6, Le3/j;->b:J

    cmp-long v1, v1, v20

    if-nez v1, :cond_2

    const/16 v0, 0x8

    int-to-long v0, v0

    add-long/2addr v3, v0

    :cond_2
    move-wide/from16 v20, v3

    new-instance v4, Le3/h;

    invoke-direct {v4}, Le3/h;-><init>()V

    new-instance v2, Lc4/i$b;

    const/4 v3, 0x0

    move-object v0, v2

    move-object/from16 v17, v13

    const/4 v13, 0x2

    move-object v1, v4

    move-object v13, v2

    move-wide/from16 v23, v9

    move/from16 v22, v12

    const/4 v9, 0x0

    move-object v12, v3

    move-wide/from16 v2, v20

    move-object v10, v4

    move-object v4, v14

    move-object/from16 v25, v5

    move-object/from16 v5, p0

    move-object/from16 v26, v6

    move-object v6, v11

    move v9, v7

    move-object/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Lc4/i$b;-><init>(Le3/h;JLe3/j;Lb4/f;Le3/j;Le3/j;)V

    invoke-static {v8, v15, v13}, Lc4/i;->g(Lb4/f;ILd3/c;)V

    cmp-long v0, v20, v18

    if-lez v0, :cond_4

    iget-boolean v0, v10, Le3/h;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    int-to-long v0, v9

    invoke-interface {v8, v0, v1}, Lb4/f;->e(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lb4/y;->c:Lb4/y$a;

    const-string v1, "/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v12}, Lb4/y$a;->d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Lb4/y;->k(Ljava/lang/String;)Lb4/y;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v12}, Lj3/l;->k(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    new-instance v1, Lc4/h;

    iget-wide v8, v11, Le3/j;->b:J

    iget-wide v10, v14, Le3/j;->b:J

    move-object/from16 v2, v26

    iget-wide v14, v2, Le3/j;->b:J

    move-object v2, v1

    move-object v3, v0

    move-wide/from16 v6, v23

    move/from16 v12, v22

    move-object/from16 v13, v17

    invoke-direct/range {v2 .. v15}, Lc4/h;-><init>(Lb4/y;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad zip: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final f(Lb4/f;)Lc4/e;
    .locals 10

    invoke-interface {p0}, Lb4/f;->f()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-interface {p0}, Lb4/f;->f()S

    move-result v2

    and-int/2addr v2, v1

    invoke-interface {p0}, Lb4/f;->f()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v5, v3

    invoke-interface {p0}, Lb4/f;->f()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x4

    invoke-interface {p0, v2, v3}, Lb4/f;->o(J)V

    invoke-interface {p0}, Lb4/f;->y()I

    move-result v0

    int-to-long v2, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    invoke-interface {p0}, Lb4/f;->f()S

    move-result p0

    and-int v9, p0, v1

    new-instance p0, Lc4/e;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lc4/e;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported zip: spanned"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final g(Lb4/f;ILd3/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/f;",
            "I",
            "Ld3/c<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lu2/l;",
            ">;)V"
        }
    .end annotation

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    invoke-interface {p0}, Lb4/f;->f()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-interface {p0}, Lb4/f;->f()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    invoke-interface {p0, v4, v5}, Lb4/f;->w(J)V

    invoke-interface {p0}, Lb4/f;->a()Lb4/d;

    move-result-object v6

    invoke-virtual {v6}, Lb4/d;->c0()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ld3/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lb4/f;->a()Lb4/d;

    move-result-object v8

    invoke-virtual {v8}, Lb4/d;->c0()J

    move-result-wide v8

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    invoke-interface {p0}, Lb4/f;->a()Lb4/d;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lb4/d;->o(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported zip: too many bytes processed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private static final h(Lb4/f;Lb4/i;)Lb4/i;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Le3/k;

    invoke-direct {v1}, Le3/k;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lb4/i;->a()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Le3/k;->b:Ljava/lang/Object;

    new-instance v3, Le3/k;

    invoke-direct {v3}, Le3/k;-><init>()V

    new-instance v4, Le3/k;

    invoke-direct {v4}, Le3/k;-><init>()V

    invoke-interface/range {p0 .. p0}, Lb4/f;->y()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_3

    const-wide/16 v5, 0x2

    invoke-interface {v0, v5, v6}, Lb4/f;->o(J)V

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_2

    const-wide/16 v7, 0x12

    invoke-interface {v0, v7, v8}, Lb4/f;->o(J)V

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    invoke-interface/range {p0 .. p0}, Lb4/f;->f()S

    move-result v5

    and-int/2addr v5, v6

    invoke-interface {v0, v7, v8}, Lb4/f;->o(J)V

    if-nez p1, :cond_1

    int-to-long v3, v5

    invoke-interface {v0, v3, v4}, Lb4/f;->o(J)V

    return-object v2

    :cond_1
    new-instance v2, Lc4/i$c;

    invoke-direct {v2, v0, v1, v3, v4}, Lc4/i$c;-><init>(Lb4/f;Le3/k;Le3/k;Le3/k;)V

    invoke-static {v0, v5, v2}, Lc4/i;->g(Lb4/f;ILd3/c;)V

    new-instance v0, Lb4/i;

    invoke-virtual/range {p1 .. p1}, Lb4/i;->d()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lb4/i;->c()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lb4/i;->b()Ljava/lang/Long;

    move-result-object v10

    iget-object v2, v4, Le3/k;->b:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    iget-object v1, v1, Le3/k;->b:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    iget-object v1, v3, Le3/k;->b:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/Long;

    const/4 v14, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lb4/i;-><init>(ZZLb4/y;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILe3/d;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lc4/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final i(Lb4/f;Lc4/e;)Lc4/e;
    .locals 8

    const-wide/16 v0, 0xc

    invoke-interface {p0, v0, v1}, Lb4/f;->o(J)V

    invoke-interface {p0}, Lb4/f;->y()I

    move-result v0

    invoke-interface {p0}, Lb4/f;->y()I

    move-result v1

    invoke-interface {p0}, Lb4/f;->m()J

    move-result-wide v3

    invoke-interface {p0}, Lb4/f;->m()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-wide/16 v0, 0x8

    invoke-interface {p0, v0, v1}, Lb4/f;->o(J)V

    invoke-interface {p0}, Lb4/f;->m()J

    move-result-wide v5

    new-instance p0, Lc4/e;

    invoke-virtual {p1}, Lc4/e;->b()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lc4/e;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: spanned"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Lb4/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc4/i;->h(Lb4/f;Lb4/i;)Lb4/i;

    return-void
.end method

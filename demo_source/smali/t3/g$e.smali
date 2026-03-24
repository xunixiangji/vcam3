.class public final Lt3/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/i$c;
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt3/i$c;",
        "Ld3/a<",
        "Lu2/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lt3/i;

.field final synthetic c:Lt3/g;


# direct methods
.method public constructor <init>(Lt3/g;Lt3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/i;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$e;->c:Lt3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt3/g$e;->b:Lt3/i;

    return-void
.end method


# virtual methods
.method public a(ILt3/b;Lb4/g;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lb4/g;->y()I

    iget-object p2, p0, Lt3/g$e;->c:Lt3/g;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lt3/g;->k0()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lt3/j;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lt3/g;->X(Lt3/g;Z)V

    sget-object v1, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast p3, [Lt3/j;

    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lt3/j;->l()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lt3/j;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lt3/b;->k:Lt3/b;

    invoke-virtual {v1, v2}, Lt3/j;->z(Lt3/b;)V

    iget-object v2, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v1}, Lt3/j;->l()I

    move-result v1

    invoke-virtual {v2, v1}, Lt3/g;->v0(I)Lt3/j;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public b(ZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;)V"
        }
    .end annotation

    const-string p3, "headerBlock"

    invoke-static {p4, p3}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {p3, p2}, Lt3/g;->u0(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {p3, p2, p4, p1}, Lt3/g;->r0(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, Lt3/g$e;->c:Lt3/g;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p3, p2}, Lt3/g;->j0(I)Lt3/j;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {p3}, Lt3/g;->S(Lt3/g;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lt3/g;->e0()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    :try_start_2
    rem-int/lit8 v0, p2, 0x2

    invoke-virtual {p3}, Lt3/g;->g0()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    :try_start_3
    invoke-static {p4}, Lm3/s;->q(Ljava/util/List;)Ll3/u;

    move-result-object v5

    new-instance p4, Lt3/j;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move-object v2, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lt3/j;-><init>(ILt3/g;ZZLl3/u;)V

    invoke-virtual {p3, p2}, Lt3/g;->x0(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3}, Lt3/g;->k0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lt3/g;->Q(Lt3/g;)Lp3/d;

    move-result-object p1

    invoke-virtual {p1}, Lp3/d;->k()Lp3/c;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lt3/g;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lt3/g$e$b;

    invoke-direct {v5, p3, p4}, Lt3/g$e$b;-><init>(Lt3/g;Lt3/j;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lp3/c;->d(Lp3/c;Ljava/lang/String;JZLd3/a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p3

    return-void

    :cond_4
    :try_start_4
    sget-object p2, Lu2/l;->a:Lu2/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p3

    invoke-static {p4}, Lm3/s;->q(Ljava/util/List;)Ll3/u;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lt3/j;->y(Ll3/u;Z)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public c(ZILb4/f;I)V
    .locals 2

    const-string v0, "source"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p2}, Lt3/g;->u0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lt3/g;->q0(ILb4/f;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p2}, Lt3/g;->j0(I)Lt3/j;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    sget-object v0, Lt3/b;->e:Lt3/b;

    invoke-virtual {p1, p2, v0}, Lt3/g;->H0(ILt3/b;)V

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lt3/g;->C0(J)V

    invoke-interface {p3, v0, v1}, Lb4/f;->o(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lt3/j;->x(Lb4/f;I)V

    if-eqz p1, :cond_2

    sget-object p1, Lm3/s;->a:Ll3/u;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lt3/j;->y(Ll3/u;Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$e;->m()V

    sget-object v0, Lu2/l;->a:Lu2/l;

    return-object v0
.end method

.method public e(ILt3/b;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p1}, Lt3/g;->u0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p1, p2}, Lt3/g;->t0(ILt3/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p1}, Lt3/g;->v0(I)Lt3/j;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lt3/j;->z(Lt3/b;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(IJ)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lt3/g;->l0()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lt3/g;->Y(Lt3/g;J)V

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p1, p2}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    sget-object p2, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v0, p1}, Lt3/g;->j0(I)Lt3/j;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lt3/j;->b(J)V

    sget-object p2, Lu2/l;->a:Lu2/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public h(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {p1, p2, p3}, Lt3/g;->s0(ILjava/util/List;)V

    return-void
.end method

.method public i(ZII)V
    .locals 8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    :goto_0
    :try_start_0
    sget-object p2, Lu2/l;->a:Lu2/l;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lt3/g;->I(Lt3/g;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lt3/g;->T(Lt3/g;J)V

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p1, p2}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lt3/g;->L(Lt3/g;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lt3/g;->U(Lt3/g;J)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lt3/g;->N(Lt3/g;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lt3/g;->W(Lt3/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_3
    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    invoke-static {p1}, Lt3/g;->R(Lt3/g;)Lp3/c;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v1}, Lt3/g;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ping"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lt3/g$e$c;

    iget-object p1, p0, Lt3/g$e;->c:Lt3/g;

    invoke-direct {v5, p1, p2, p3}, Lt3/g$e$c;-><init>(Lt3/g;II)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lp3/c;->d(Lp3/c;Ljava/lang/String;JZLd3/a;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public j(IIIZ)V
    .locals 0

    return-void
.end method

.method public k(ZLt3/n;)V
    .locals 9

    const-string v0, "settings"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt3/g$e;->c:Lt3/g;

    invoke-static {v0}, Lt3/g;->R(Lt3/g;)Lp3/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v2}, Lt3/g;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " applyAndAckSettings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lt3/g$e$d;

    invoke-direct {v6, p0, p1, p2}, Lt3/g$e$d;-><init>(Lt3/g$e;ZLt3/n;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lp3/c;->d(Lp3/c;Ljava/lang/String;JZLd3/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final l(ZLt3/n;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "settings"

    invoke-static {v0, v2}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le3/k;

    invoke-direct {v2}, Le3/k;-><init>()V

    iget-object v3, v1, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v3}, Lt3/g;->m0()Lt3/k;

    move-result-object v3

    iget-object v4, v1, Lt3/g$e;->c:Lt3/g;

    monitor-enter v3

    :try_start_0
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lt3/g;->i0()Lt3/n;

    move-result-object v5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lt3/n;

    invoke-direct {v6}, Lt3/n;-><init>()V

    invoke-virtual {v6, v5}, Lt3/n;->g(Lt3/n;)V

    invoke-virtual {v6, v0}, Lt3/n;->g(Lt3/n;)V

    move-object v0, v6

    :goto_0
    iput-object v0, v2, Le3/k;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lt3/n;->c()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v5}, Lt3/n;->c()I

    move-result v0

    int-to-long v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lt3/g;->k0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lt3/g;->k0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v8, v5, [Lt3/j;

    invoke-interface {v0, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt3/j;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    move-object v8, v0

    iget-object v0, v2, Le3/k;->b:Ljava/lang/Object;

    check-cast v0, Lt3/n;

    invoke-virtual {v4, v0}, Lt3/g;->y0(Lt3/n;)V

    invoke-static {v4}, Lt3/g;->P(Lt3/g;)Lp3/c;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lt3/g;->c0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " onSettings"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    new-instance v14, Lt3/g$e$a;

    invoke-direct {v14, v4, v2}, Lt3/g$e$a;-><init>(Lt3/g;Le3/k;)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lp3/c;->d(Lp3/c;Ljava/lang/String;JZLd3/a;ILjava/lang/Object;)V

    sget-object v0, Lu2/l;->a:Lu2/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Lt3/g;->m0()Lt3/k;

    move-result-object v0

    iget-object v2, v2, Le3/k;->b:Ljava/lang/Object;

    check-cast v2, Lt3/n;

    invoke-virtual {v0, v2}, Lt3/k;->i(Lt3/n;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v4, v0}, Lt3/g;->i(Lt3/g;Ljava/io/IOException;)V

    :goto_3
    sget-object v0, Lu2/l;->a:Lu2/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v3

    if-eqz v8, :cond_3

    array-length v0, v8

    :goto_4
    if-ge v5, v0, :cond_3

    aget-object v2, v8, v5

    monitor-enter v2

    :try_start_5
    invoke-virtual {v2, v6, v7}, Lt3/j;->b(J)V

    sget-object v3, Lu2/l;->a:Lu2/l;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public m()V
    .locals 5

    sget-object v0, Lt3/b;->f:Lt3/b;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lt3/g$e;->b:Lt3/i;

    invoke-virtual {v2, p0}, Lt3/i;->J(Lt3/i$c;)V

    :cond_0
    iget-object v2, p0, Lt3/g$e;->b:Lt3/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lt3/i;->I(ZLt3/i$c;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lt3/b;->d:Lt3/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lt3/b;->l:Lt3/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v3, v2, v0, v1}, Lt3/g;->Z(Lt3/b;Lt3/b;Ljava/io/IOException;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_2
    sget-object v0, Lt3/b;->e:Lt3/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v2, v0, v0, v1}, Lt3/g;->Z(Lt3/b;Lt3/b;Ljava/io/IOException;)V

    :goto_1
    iget-object v0, p0, Lt3/g$e;->b:Lt3/i;

    invoke-static {v0}, Lm3/p;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v3

    :goto_2
    iget-object v4, p0, Lt3/g$e;->c:Lt3/g;

    invoke-virtual {v4, v2, v0, v1}, Lt3/g;->Z(Lt3/b;Lt3/b;Ljava/io/IOException;)V

    iget-object v0, p0, Lt3/g$e;->b:Lt3/i;

    invoke-static {v0}, Lm3/p;->f(Ljava/io/Closeable;)V

    throw v3
.end method

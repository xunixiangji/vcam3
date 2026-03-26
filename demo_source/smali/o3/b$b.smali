.class public final Lo3/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ll3/a0;

.field private final c:Ll3/c0;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLl3/a0;Ll3/c0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo3/b$b;->a:J

    iput-object p3, p0, Lo3/b$b;->b:Ll3/a0;

    iput-object p4, p0, Lo3/b$b;->c:Ll3/c0;

    const/4 p1, -0x1

    iput p1, p0, Lo3/b$b;->l:I

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ll3/c0;->a0()J

    move-result-wide p2

    iput-wide p2, p0, Lo3/b$b;->i:J

    invoke-virtual {p4}, Ll3/c0;->Y()J

    move-result-wide p2

    iput-wide p2, p0, Lo3/b$b;->j:J

    invoke-virtual {p4}, Ll3/c0;->S()Ll3/u;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2}, Ll3/u;->size()I

    move-result p4

    :goto_0
    if-ge p3, p4, :cond_5

    invoke-virtual {p2, p3}, Ll3/u;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3}, Ll3/u;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lr3/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo3/b$b;->d:Ljava/util/Date;

    iput-object v1, p0, Lo3/b$b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-static {v0, v2, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lr3/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo3/b$b;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-static {v0, v2, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lr3/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo3/b$b;->f:Ljava/util/Date;

    iput-object v1, p0, Lo3/b$b;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-static {v0, v2, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lo3/b$b;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-static {v0, v2, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1, p1}, Lm3/p;->E(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo3/b$b;->l:I

    :cond_4
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final a()J
    .locals 11

    iget-object v0, p0, Lo3/b$b;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lo3/b$b;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget v0, p0, Lo3/b$b;->l:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_1
    iget-wide v5, p0, Lo3/b$b;->j:J

    iget-wide v7, p0, Lo3/b$b;->i:J

    sub-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, p0, Lo3/b$b;->a:J

    iget-wide v9, p0, Lo3/b$b;->j:J

    sub-long/2addr v7, v9

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    return-wide v3
.end method

.method private final c()Lo3/b;
    .locals 13

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {v0, v2, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v0}, Ll3/a0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-virtual {v0}, Ll3/c0;->P()Ll3/t;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {v0, v2, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v0

    :cond_1
    sget-object v0, Lo3/b;->c:Lo3/b$a;

    iget-object v2, p0, Lo3/b$b;->c:Ll3/c0;

    iget-object v3, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v0, v2, v3}, Lo3/b$a;->a(Ll3/c0;Ll3/a0;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {v0, v2, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v0}, Ll3/a0;->b()Ll3/d;

    move-result-object v0

    invoke-virtual {v0}, Ll3/d;->i()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {p0, v2}, Lo3/b$b;->e(Ll3/a0;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-virtual {v2}, Ll3/c0;->J()Ll3/d;

    move-result-object v2

    invoke-direct {p0}, Lo3/b$b;->a()J

    move-result-wide v3

    invoke-direct {p0}, Lo3/b$b;->d()J

    move-result-wide v5

    invoke-virtual {v0}, Ll3/d;->e()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ll3/d;->e()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_4
    invoke-virtual {v0}, Ll3/d;->g()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ll3/d;->g()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_5
    move-wide v11, v9

    :goto_0
    invoke-virtual {v2}, Ll3/d;->h()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ll3/d;->f()I

    move-result v7

    if-eq v7, v8, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ll3/d;->f()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_6
    invoke-virtual {v2}, Ll3/d;->i()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-virtual {v0}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object v0

    cmp-long v2, v11, v5

    const-string v5, "Warning"

    if-ltz v2, :cond_7

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v5, v2}, Ll3/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;

    :cond_7
    const-wide/32 v6, 0x5265c00

    cmp-long v2, v3, v6

    if-lez v2, :cond_8

    invoke-direct {p0}, Lo3/b$b;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v5, v2}, Ll3/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;

    :cond_8
    new-instance v2, Lo3/b;

    invoke-virtual {v0}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v2

    :cond_9
    iget-object v0, p0, Lo3/b$b;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_a

    const-string v2, "If-None-Match"

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lo3/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo3/b$b;->g:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lo3/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lo3/b$b;->e:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v1}, Ll3/a0;->e()Ll3/u;

    move-result-object v1

    invoke-virtual {v1}, Ll3/u;->d()Ll3/u$a;

    move-result-object v1

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Ll3/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    iget-object v0, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v0}, Ll3/a0;->h()Ll3/a0$a;

    move-result-object v0

    invoke-virtual {v1}, Ll3/u$a;->d()Ll3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/a0$a;->i(Ll3/u;)Ll3/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/a0$a;->b()Ll3/a0;

    move-result-object v0

    new-instance v1, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-direct {v1, v0, v2}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v1

    :cond_c
    new-instance v0, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {v0, v2, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v0

    :cond_d
    :goto_2
    new-instance v0, Lo3/b;

    iget-object v2, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-direct {v0, v2, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    return-object v0
.end method

.method private final d()J
    .locals 7

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll3/c0;->J()Ll3/d;

    move-result-object v0

    invoke-virtual {v0}, Ll3/d;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ll3/d;->e()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lo3/b$b;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lo3/b$b;->d:Ljava/util/Date;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lo3/b$b;->j:J

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Lo3/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-virtual {v0}, Ll3/c0;->Z()Ll3/a0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/a0;->i()Ll3/v;

    move-result-object v0

    invoke-virtual {v0}, Ll3/v;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo3/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lo3/b$b;->i:J

    :goto_1
    iget-object v0, p0, Lo3/b$b;->f:Ljava/util/Date;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const/16 v0, 0xa

    int-to-long v0, v0

    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private final e(Ll3/a0;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p1, v0}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final f()Z
    .locals 2

    iget-object v0, p0, Lo3/b$b;->c:Ll3/c0;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll3/c0;->J()Ll3/d;

    move-result-object v0

    invoke-virtual {v0}, Ll3/d;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo3/b$b;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final b()Lo3/b;
    .locals 2

    invoke-direct {p0}, Lo3/b$b;->c()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->b()Ll3/a0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo3/b$b;->b:Ll3/a0;

    invoke-virtual {v1}, Ll3/a0;->b()Ll3/d;

    move-result-object v1

    invoke-virtual {v1}, Ll3/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lo3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo3/b;-><init>(Ll3/a0;Ll3/c0;)V

    :cond_0
    return-object v0
.end method

.class public final Lt3/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lb4/f;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lb4/f;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/i$b;->b:Lb4/f;

    return-void
.end method

.method private final I()V
    .locals 9

    iget v0, p0, Lt3/i$b;->e:I

    iget-object v1, p0, Lt3/i$b;->b:Lb4/f;

    invoke-static {v1}, Lm3/p;->B(Lb4/f;)I

    move-result v1

    iput v1, p0, Lt3/i$b;->f:I

    iput v1, p0, Lt3/i$b;->c:I

    iget-object v1, p0, Lt3/i$b;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->H()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lm3/p;->b(BI)I

    move-result v1

    iget-object v3, p0, Lt3/i$b;->b:Lb4/f;

    invoke-interface {v3}, Lb4/f;->H()B

    move-result v3

    invoke-static {v3, v2}, Lm3/p;->b(BI)I

    move-result v2

    iput v2, p0, Lt3/i$b;->d:I

    sget-object v2, Lt3/i;->f:Lt3/i$a;

    invoke-virtual {v2}, Lt3/i$a;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lt3/i$a;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Lt3/f;->a:Lt3/f;

    const/4 v4, 0x1

    iget v5, p0, Lt3/i$b;->e:I

    iget v6, p0, Lt3/i$b;->c:I

    iget v8, p0, Lt3/i$b;->d:I

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Lt3/f;->c(ZIIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lt3/i$b;->b:Lb4/f;

    invoke-interface {v2}, Lb4/f;->s()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lt3/i$b;->e:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != TYPE_CONTINUATION"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final J(I)V
    .locals 0

    iput p1, p0, Lt3/i$b;->d:I

    return-void
.end method

.method public final K(I)V
    .locals 0

    iput p1, p0, Lt3/i$b;->f:I

    return-void
.end method

.method public final L(I)V
    .locals 0

    iput p1, p0, Lt3/i$b;->c:I

    return-void
.end method

.method public final M(I)V
    .locals 0

    iput p1, p0, Lt3/i$b;->g:I

    return-void
.end method

.method public final N(I)V
    .locals 0

    iput p1, p0, Lt3/i$b;->e:I

    return-void
.end method

.method public b()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lt3/i$b;->b:Lb4/f;

    invoke-interface {v0}, Lb4/g0;->b()Lb4/h0;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lt3/i$b;->f:I

    return v0
.end method

.method public u(Lb4/d;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lt3/i$b;->f:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lt3/i$b;->b:Lb4/f;

    iget v3, p0, Lt3/i$b;->g:I

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lb4/f;->o(J)V

    const/4 v0, 0x0

    iput v0, p0, Lt3/i$b;->g:I

    iget v0, p0, Lt3/i$b;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lt3/i$b;->I()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lt3/i$b;->b:Lb4/f;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lb4/g0;->u(Lb4/d;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    :cond_2
    iget p3, p0, Lt3/i$b;->f:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lt3/i$b;->f:I

    return-wide p1
.end method

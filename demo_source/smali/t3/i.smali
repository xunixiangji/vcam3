.class public final Lt3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/i$a;,
        Lt3/i$b;,
        Lt3/i$c;
    }
.end annotation


# static fields
.field public static final f:Lt3/i$a;

.field private static final g:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lb4/f;

.field private final c:Z

.field private final d:Lt3/i$b;

.field private final e:Lt3/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/i$a;-><init>(Le3/d;)V

    sput-object v0, Lt3/i;->f:Lt3/i$a;

    const-class v0, Lt3/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(...)"

    invoke-static {v0, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lt3/i;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lb4/f;Z)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/i;->b:Lb4/f;

    iput-boolean p2, p0, Lt3/i;->c:Z

    new-instance v2, Lt3/i$b;

    invoke-direct {v2, p1}, Lt3/i$b;-><init>(Lb4/f;)V

    iput-object v2, p0, Lt3/i;->d:Lt3/i$b;

    new-instance p1, Lt3/e$a;

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lt3/e$a;-><init>(Lb4/g0;IIILe3/d;)V

    iput-object p1, p0, Lt3/i;->e:Lt3/e$a;

    return-void
.end method

.method private final K(Lt3/i$c;III)V
    .locals 4

    if-eqz p4, :cond_4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->H()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lm3/p;->b(BI)I

    move-result v1

    :cond_2
    sget-object v2, Lt3/i;->f:Lt3/i$a;

    invoke-virtual {v2, p2, p3, v1}, Lt3/i$a;->b(III)I

    move-result p2

    iget-object p3, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {p1, v0, p4, p3, p2}, Lt3/i$c;->c(ZILb4/f;I)V

    iget-object p1, p0, Lt3/i;->b:Lb4/f;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lb4/f;->o(J)V

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final L(Lt3/i$c;III)V
    .locals 3

    const/16 p3, 0x8

    if-lt p2, p3, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {p4}, Lb4/f;->s()I

    move-result p4

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v0}, Lb4/f;->s()I

    move-result v0

    sub-int/2addr p2, p3

    sget-object p3, Lt3/b;->c:Lt3/b$a;

    invoke-virtual {p3, v0}, Lt3/b$a;->a(I)Lt3/b;

    move-result-object p3

    if-eqz p3, :cond_1

    sget-object v0, Lb4/g;->f:Lb4/g;

    if-lez p2, :cond_0

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lb4/f;->l(J)Lb4/g;

    move-result-object v0

    :cond_0
    invoke-interface {p1, p4, p3, v0}, Lt3/i$c;->a(ILt3/b;Lb4/g;)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_GOAWAY unexpected error code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_GOAWAY length < 8: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final M(IIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt3/i;->d:Lt3/i$b;

    invoke-virtual {v0, p1}, Lt3/i$b;->K(I)V

    iget-object p1, p0, Lt3/i;->d:Lt3/i$b;

    invoke-virtual {p1}, Lt3/i$b;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lt3/i$b;->L(I)V

    iget-object p1, p0, Lt3/i;->d:Lt3/i$b;

    invoke-virtual {p1, p2}, Lt3/i$b;->M(I)V

    iget-object p1, p0, Lt3/i;->d:Lt3/i$b;

    invoke-virtual {p1, p3}, Lt3/i$b;->J(I)V

    iget-object p1, p0, Lt3/i;->d:Lt3/i$b;

    invoke-virtual {p1, p4}, Lt3/i$b;->N(I)V

    iget-object p1, p0, Lt3/i;->e:Lt3/e$a;

    invoke-virtual {p1}, Lt3/e$a;->k()V

    iget-object p1, p0, Lt3/i;->e:Lt3/e$a;

    invoke-virtual {p1}, Lt3/e$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final N(Lt3/i$c;III)V
    .locals 3

    if-eqz p4, :cond_3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->H()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lm3/p;->b(BI)I

    move-result v1

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lt3/i;->P(Lt3/i$c;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    sget-object v2, Lt3/i;->f:Lt3/i$a;

    invoke-virtual {v2, p2, p3, v1}, Lt3/i$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v1, p3, p4}, Lt3/i;->M(IIII)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v0, p4, p3, p2}, Lt3/i$c;->b(ZIILjava/util/List;)V

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final O(Lt3/i$c;III)V
    .locals 1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {p2}, Lb4/f;->s()I

    move-result p2

    iget-object p4, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {p4}, Lb4/f;->s()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lt3/i$c;->i(ZII)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PING length != 8: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final P(Lt3/i$c;I)V
    .locals 5

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v0}, Lb4/f;->s()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v3}, Lb4/f;->H()B

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lm3/p;->b(BI)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lt3/i$c;->j(IIIZ)V

    return-void
.end method

.method private final Q(Lt3/i$c;III)V
    .locals 0

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lt3/i;->P(Lt3/i$c;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PRIORITY length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 5"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final R(Lt3/i$c;III)V
    .locals 3

    if-eqz p4, :cond_1

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v0}, Lb4/f;->H()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lm3/p;->b(BI)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->s()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    sget-object v2, Lt3/i;->f:Lt3/i$a;

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, p2, p3, v0}, Lt3/i$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lt3/i;->M(IIII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lt3/i$c;->h(IILjava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final S(Lt3/i$c;III)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {p2}, Lb4/f;->s()I

    move-result p2

    sget-object p3, Lt3/b;->c:Lt3/b$a;

    invoke-virtual {p3, p2}, Lt3/b$a;->a(I)Lt3/b;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p4, p3}, Lt3/i$c;->e(ILt3/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM unexpected error code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 4"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final T(Lt3/i$c;III)V
    .locals 7

    if-nez p4, :cond_e

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lt3/i$c;->f()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_d

    new-instance p3, Lt3/n;

    invoke-direct {p3}, Lt3/n;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lg3/j;->h(II)Lg3/f;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lg3/j;->g(Lg3/d;I)Lg3/d;

    move-result-object p2

    invoke-virtual {p2}, Lg3/d;->a()I

    move-result v1

    invoke-virtual {p2}, Lg3/d;->b()I

    move-result v2

    invoke-virtual {p2}, Lg3/d;->c()I

    move-result p2

    if-lez p2, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    if-gez p2, :cond_c

    if-gt v2, v1, :cond_c

    :cond_3
    :goto_0
    iget-object v3, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v3}, Lb4/f;->p()S

    move-result v3

    const v4, 0xffff

    invoke-static {v3, v4}, Lm3/p;->c(SI)I

    move-result v3

    iget-object v4, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v4}, Lb4/f;->s()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v3, v5, :cond_9

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    if-eq v3, v6, :cond_6

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_5

    const v5, 0xffffff

    if-gt v4, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v3, 0x7

    if-ltz v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move v3, v6

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_b

    if-ne v4, p4, :cond_a

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_1
    invoke-virtual {p3, v3, v4}, Lt3/n;->h(II)Lt3/n;

    if-eq v1, v2, :cond_c

    add-int/2addr v1, p2

    goto :goto_0

    :cond_c
    invoke-interface {p1, v0, p3}, Lt3/i$c;->k(ZLt3/n;)V

    return-void

    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_SETTINGS length % 6 != 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final U(Lt3/i$c;III)V
    .locals 9

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v0}, Lb4/f;->s()I

    move-result v0

    const-wide/32 v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lm3/p;->d(IJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-object p3, Lt3/i;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lt3/f;->a:Lt3/f;

    const/4 v4, 0x1

    move v5, p4

    move v6, p2

    move-wide v7, v0

    invoke-virtual/range {v3 .. v8}, Lt3/f;->d(ZIIJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p4, v0, v1}, Lt3/i$c;->g(IJ)V

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "windowSizeIncrement was 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    sget-object v0, Lt3/i;->g:Ljava/util/logging/Logger;

    sget-object v1, Lt3/f;->a:Lt3/f;

    const/4 v2, 0x1

    const/16 v5, 0x8

    move v3, p4

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lt3/f;->c(ZIIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic i()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lt3/i;->g:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final I(ZLt3/i$c;)Z
    .locals 11

    const-string v0, "handler"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lb4/f;->w(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-static {v0}, Lm3/p;->B(Lb4/f;)I

    move-result v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->H()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lm3/p;->b(BI)I

    move-result v7

    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->H()B

    move-result v1

    invoke-static {v1, v2}, Lm3/p;->b(BI)I

    move-result v8

    iget-object v1, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v1}, Lb4/f;->s()I

    move-result v1

    const v2, 0x7fffffff

    and-int v9, v1, v2

    const/16 v1, 0x8

    if-eq v7, v1, :cond_0

    sget-object v10, Lt3/i;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lt3/f;->a:Lt3/f;

    const/4 v2, 0x1

    move v3, v9

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lt3/f;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne v7, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lt3/f;->a:Lt3/f;

    invoke-virtual {v0, v7}, Lt3/f;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    packed-switch v7, :pswitch_data_0

    iget-object p1, p0, Lt3/i;->b:Lb4/f;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lb4/f;->o(J)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->U(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->L(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->O(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->R(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->T(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->S(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->Q(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->N(Lt3/i$c;III)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0, v8, v9}, Lt3/i;->K(Lt3/i$c;III)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FRAME_SIZE_ERROR: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Lt3/i$c;)V
    .locals 4

    const-string v0, "handler"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lt3/i;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lt3/i;->I(ZLt3/i$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lt3/i;->b:Lb4/f;

    sget-object v0, Lt3/f;->b:Lb4/g;

    invoke-virtual {v0}, Lb4/g;->y()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2}, Lb4/f;->l(J)Lb4/g;

    move-result-object p1

    sget-object v1, Lt3/i;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< CONNECTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb4/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lm3/s;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, p1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a connection header but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb4/g;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lt3/i;->b:Lb4/f;

    invoke-interface {v0}, Lb4/g0;->close()V

    return-void
.end method

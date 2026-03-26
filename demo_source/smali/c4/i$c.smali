.class final Lc4/i$c;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/i;->h(Lb4/f;Lb4/i;)Lb4/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/c<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lu2/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lb4/f;

.field final synthetic d:Le3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Le3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Le3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb4/f;Le3/k;Le3/k;Le3/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/f;",
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;",
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;",
            "Le3/k<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc4/i$c;->c:Lb4/f;

    iput-object p2, p0, Lc4/i$c;->d:Le3/k;

    iput-object p3, p0, Lc4/i$c;->e:Le3/k;

    iput-object p4, p0, Lc4/i$c;->f:Le3/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lc4/i$c;->c(IJ)V

    sget-object p1, Lu2/l;->a:Lu2/l;

    return-object p1
.end method

.method public final c(IJ)V
    .locals 9

    const/16 v0, 0x5455

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    const-string v2, "bad zip: extended timestamp extra too short"

    if-ltz p1, :cond_9

    iget-object p1, p0, Lc4/i$c;->c:Lb4/f;

    invoke-interface {p1}, Lb4/f;->H()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const/4 v7, 0x4

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_2

    move v4, v5

    :cond_2
    iget-object p1, p0, Lc4/i$c;->c:Lb4/f;

    if-eqz v3, :cond_3

    const-wide/16 v0, 0x5

    :cond_3
    const-wide/16 v7, 0x4

    if-eqz v6, :cond_4

    add-long/2addr v0, v7

    :cond_4
    if-eqz v4, :cond_5

    add-long/2addr v0, v7

    :cond_5
    cmp-long p2, p2, v0

    if-ltz p2, :cond_8

    const-wide/16 p2, 0x3e8

    if-eqz v3, :cond_6

    iget-object v0, p0, Lc4/i$c;->d:Le3/k;

    invoke-interface {p1}, Lb4/f;->y()I

    move-result p1

    int-to-long v1, p1

    mul-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Le3/k;->b:Ljava/lang/Object;

    :cond_6
    if-eqz v6, :cond_7

    iget-object p1, p0, Lc4/i$c;->e:Le3/k;

    iget-object v0, p0, Lc4/i$c;->c:Lb4/f;

    invoke-interface {v0}, Lb4/f;->y()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Le3/k;->b:Ljava/lang/Object;

    :cond_7
    if-eqz v4, :cond_a

    iget-object p1, p0, Lc4/i$c;->f:Le3/k;

    iget-object v0, p0, Lc4/i$c;->c:Lb4/f;

    invoke-interface {v0}, Lb4/f;->y()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Le3/k;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return-void
.end method

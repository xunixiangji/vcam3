.class final Lc4/i$b;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/i;->e(Lb4/f;)Lc4/h;
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
.field final synthetic c:Le3/h;

.field final synthetic d:J

.field final synthetic e:Le3/j;

.field final synthetic f:Lb4/f;

.field final synthetic g:Le3/j;

.field final synthetic h:Le3/j;


# direct methods
.method constructor <init>(Le3/h;JLe3/j;Lb4/f;Le3/j;Le3/j;)V
    .locals 0

    iput-object p1, p0, Lc4/i$b;->c:Le3/h;

    iput-wide p2, p0, Lc4/i$b;->d:J

    iput-object p4, p0, Lc4/i$b;->e:Le3/j;

    iput-object p5, p0, Lc4/i$b;->f:Lb4/f;

    iput-object p6, p0, Lc4/i$b;->g:Le3/j;

    iput-object p7, p0, Lc4/i$b;->h:Le3/j;

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

    invoke-virtual {p0, p1, v0, v1}, Lc4/i$b;->c(IJ)V

    sget-object p1, Lu2/l;->a:Lu2/l;

    return-object p1
.end method

.method public final c(IJ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lc4/i$b;->c:Le3/h;

    iget-boolean v1, p1, Le3/h;->b:Z

    if-nez v1, :cond_4

    iput-boolean v0, p1, Le3/h;->b:Z

    iget-wide v0, p0, Lc4/i$b;->d:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lc4/i$b;->e:Le3/j;

    iget-wide p2, p1, Le3/j;->b:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-object p2, p0, Lc4/i$b;->f:Lb4/f;

    invoke-interface {p2}, Lb4/f;->m()J

    move-result-wide p2

    :cond_0
    iput-wide p2, p1, Le3/j;->b:J

    iget-object p1, p0, Lc4/i$b;->g:Le3/j;

    iget-wide p2, p1, Le3/j;->b:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lc4/i$b;->f:Lb4/f;

    invoke-interface {p2}, Lb4/f;->m()J

    move-result-wide p2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iput-wide p2, p1, Le3/j;->b:J

    iget-object p1, p0, Lc4/i$b;->h:Le3/j;

    iget-wide p2, p1, Le3/j;->b:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    iget-object p2, p0, Lc4/i$b;->f:Lb4/f;

    invoke-interface {p2}, Lb4/f;->m()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Le3/j;->b:J

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

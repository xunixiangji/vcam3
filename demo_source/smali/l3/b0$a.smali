.class public final Ll3/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le3/d;)V
    .locals 0

    invoke-direct {p0}, Ll3/b0$a;-><init>()V

    return-void
.end method

.method public static synthetic d(Ll3/b0$a;[BLl3/x;IIILjava/lang/Object;)Ll3/b0;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    array-length p4, p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Ll3/b0$a;->c([BLl3/x;II)Ll3/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ll3/x;)Ll3/b0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lm3/c;->b(Ll3/x;)Lu2/g;

    move-result-object p2

    invoke-virtual {p2}, Lu2/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Lu2/g;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll3/x;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ll3/b0$a;->c([BLl3/x;II)Ll3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ll3/x;Ljava/lang/String;)Ll3/b0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Ll3/b0$a;->a(Ljava/lang/String;Ll3/x;)Ll3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final c([BLl3/x;II)Ll3/b0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lm3/l;->c([BLl3/x;II)Ll3/b0;

    move-result-object p1

    return-object p1
.end method

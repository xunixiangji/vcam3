.class public final Lm3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/b0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ll3/b0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final c([BLl3/x;II)Ll3/b0;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lm3/p;->e(JJJ)V

    new-instance v0, Lm3/l$a;

    invoke-direct {v0, p1, p3, p0, p2}, Lm3/l$a;-><init>(Ll3/x;I[BI)V

    return-object v0
.end method

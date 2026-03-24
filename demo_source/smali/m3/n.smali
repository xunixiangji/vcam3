.class public final Lm3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb4/f;Ll3/x;J)Ll3/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm3/n$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lm3/n$a;-><init>(Ll3/x;JLb4/f;)V

    return-object v0
.end method

.method public static final b(Ll3/d0;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/d0;->L()Lb4/f;

    move-result-object p0

    invoke-static {p0}, Lm3/p;->f(Ljava/io/Closeable;)V

    return-void
.end method

.method public static final c([BLl3/x;)Ll3/d0;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ll3/d0;->b:Ll3/d0$a;

    new-instance v1, Lb4/d;

    invoke-direct {v1}, Lb4/d;-><init>()V

    invoke-virtual {v1, p0}, Lb4/d;->h0([B)Lb4/d;

    move-result-object v1

    array-length p0, p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, p1, v2, v3}, Ll3/d0$a;->a(Lb4/f;Ll3/x;J)Ll3/d0;

    move-result-object p0

    return-object p0
.end method

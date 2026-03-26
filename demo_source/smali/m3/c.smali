.class public final Lm3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/x;)Ljava/nio/charset/Charset;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ll3/x;->b(Ll3/x;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lj3/d;->b:Ljava/nio/charset/Charset;

    :cond_1
    return-object p0
.end method

.method public static final b(Ll3/x;)Lu2/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/x;",
            ")",
            "Lu2/g<",
            "Ljava/nio/charset/Charset;",
            "Ll3/x;",
            ">;"
        }
    .end annotation

    sget-object v0, Lj3/d;->b:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Ll3/x;->b(Ll3/x;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ll3/x;->e:Ll3/x$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ll3/x$a;->a(Ljava/lang/String;)Ll3/x;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-static {v0, p0}, Lu2/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lu2/g;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ll3/m;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketEnabledCipherSuites"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/m;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll3/m;->d()[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ll3/i;->b:Ll3/i$b;

    invoke-virtual {v0}, Ll3/i$b;->c()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lm3/p;->x([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

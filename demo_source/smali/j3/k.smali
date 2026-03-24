.class public final Lj3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lj3/h;
    .locals 0

    invoke-static {p0, p1, p2}, Lj3/k;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lj3/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/util/regex/MatchResult;)Lg3/f;
    .locals 0

    invoke-static {p0}, Lj3/k;->e(Ljava/util/regex/MatchResult;)Lg3/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Ljava/util/regex/MatchResult;I)Lg3/f;
    .locals 0

    invoke-static {p0, p1}, Lj3/k;->f(Ljava/util/regex/MatchResult;I)Lg3/f;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lj3/h;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lj3/i;

    invoke-direct {p1, p0, p2}, Lj3/i;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static final e(Ljava/util/regex/MatchResult;)Lg3/f;
    .locals 1

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->end()I

    move-result p0

    invoke-static {v0, p0}, Lg3/j;->h(II)Lg3/f;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Ljava/util/regex/MatchResult;I)Lg3/f;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result p0

    invoke-static {v0, p0}, Lg3/j;->h(II)Lg3/f;

    move-result-object p0

    return-object p0
.end method

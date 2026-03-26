.class final Lj3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/h;


# instance fields
.field private final a:Ljava/util/regex/Matcher;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lj3/g;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/i;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lj3/i;->b:Ljava/lang/CharSequence;

    new-instance p1, Lj3/i$b;

    invoke-direct {p1, p0}, Lj3/i$b;-><init>(Lj3/i;)V

    iput-object p1, p0, Lj3/i;->c:Lj3/g;

    return-void
.end method

.method public static final synthetic d(Lj3/i;)Ljava/util/regex/MatchResult;
    .locals 0

    invoke-direct {p0}, Lj3/i;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final e()Ljava/util/regex/MatchResult;
    .locals 1

    iget-object v0, p0, Lj3/i;->a:Ljava/util/regex/Matcher;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj3/i;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lj3/i$a;

    invoke-direct {v0, p0}, Lj3/i$a;-><init>(Lj3/i;)V

    iput-object v0, p0, Lj3/i;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lj3/i;->d:Ljava/util/List;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Lj3/g;
    .locals 1

    iget-object v0, p0, Lj3/i;->c:Lj3/g;

    return-object v0
.end method

.method public c()Lg3/f;
    .locals 1

    invoke-direct {p0}, Lj3/i;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0}, Lj3/k;->b(Ljava/util/regex/MatchResult;)Lg3/f;

    move-result-object v0

    return-object v0
.end method

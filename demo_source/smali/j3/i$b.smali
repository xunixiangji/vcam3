.class public final Lj3/i$b;
.super Lv2/a;
.source "SourceFile"

# interfaces
.implements Lj3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/i;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/a<",
        "Lj3/f;",
        ">;",
        "Lj3/g;"
    }
.end annotation


# instance fields
.field final synthetic b:Lj3/i;


# direct methods
.method constructor <init>(Lj3/i;)V
    .locals 0

    iput-object p1, p0, Lj3/i$b;->b:Lj3/i;

    invoke-direct {p0}, Lv2/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lj3/i$b;->b:Lj3/i;

    invoke-static {v0}, Lj3/i;->d(Lj3/i;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge b(Lj3/f;)Z
    .locals 0

    invoke-super {p0, p1}, Lv2/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj3/f;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lj3/f;

    invoke-virtual {p0, p1}, Lj3/i$b;->b(Lj3/f;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lj3/f;
    .locals 3

    iget-object v0, p0, Lj3/i$b;->b:Lj3/i;

    invoke-static {v0}, Lj3/i;->d(Lj3/i;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lj3/k;->c(Ljava/util/regex/MatchResult;I)Lg3/f;

    move-result-object v0

    invoke-virtual {v0}, Lg3/f;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Lj3/f;

    iget-object v2, p0, Lj3/i$b;->b:Lj3/i;

    invoke-static {v2}, Lj3/i;->d(Lj3/i;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "group(...)"

    invoke-static {p1, v2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lj3/f;-><init>(Ljava/lang/String;Lg3/f;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj3/f;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lv2/m;->j(Ljava/util/Collection;)Lg3/f;

    move-result-object v0

    invoke-static {v0}, Lv2/m;->x(Ljava/lang/Iterable;)Li3/c;

    move-result-object v0

    new-instance v1, Lj3/i$b$a;

    invoke-direct {v1, p0}, Lj3/i$b$a;-><init>(Lj3/i$b;)V

    invoke-static {v0, v1}, Li3/d;->f(Li3/c;Ld3/b;)Li3/c;

    move-result-object v0

    invoke-interface {v0}, Li3/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lq3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/n$a;,
        Lq3/n$b;
    }
.end annotation


# direct methods
.method public static synthetic d(Lq3/n;Lq3/i;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lq3/n;->f(Lq3/i;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hasNext"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Lv2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv2/e<",
            "Lq3/n$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lq3/n$b;
.end method

.method public abstract c(Ll3/v;)Z
.end method

.method public abstract e()Ll3/a;
.end method

.method public abstract f(Lq3/i;)Z
.end method

.method public abstract g()Z
.end method

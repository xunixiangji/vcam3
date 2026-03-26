.class Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld3/a;)Lu2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld3/a<",
            "+TT;>;)",
            "Lu2/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu2/h;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lu2/h;-><init>(Ld3/a;Ljava/lang/Object;ILe3/d;)V

    return-object v0
.end method

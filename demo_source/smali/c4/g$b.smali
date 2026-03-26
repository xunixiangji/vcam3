.class final Lc4/g$b;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/g;-><init>(Ljava/lang/ClassLoader;ZLb4/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Ljava/util/List<",
        "+",
        "Lu2/g<",
        "+",
        "Lb4/j;",
        "+",
        "Lb4/y;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lc4/g;


# direct methods
.method constructor <init>(Lc4/g;)V
    .locals 0

    iput-object p1, p0, Lc4/g$b;->c:Lc4/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu2/g<",
            "Lb4/j;",
            "Lb4/y;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lc4/g$b;->c:Lc4/g;

    invoke-static {v0}, Lc4/g;->c(Lc4/g;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lc4/g;->e(Lc4/g;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc4/g$b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

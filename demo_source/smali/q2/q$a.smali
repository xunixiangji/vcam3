.class Lq2/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/q;->a(Ljava/util/List;Lp2/q;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lp2/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lp2/q;

.field final synthetic c:Lq2/q;


# direct methods
.method constructor <init>(Lq2/q;Lp2/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lq2/q$a;->c:Lq2/q;

    iput-object p2, p0, Lq2/q$a;->b:Lp2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp2/q;Lp2/q;)I
    .locals 2

    iget-object v0, p0, Lq2/q$a;->c:Lq2/q;

    iget-object v1, p0, Lq2/q$a;->b:Lp2/q;

    invoke-virtual {v0, p1, v1}, Lq2/q;->c(Lp2/q;Lp2/q;)F

    move-result p1

    iget-object v0, p0, Lq2/q$a;->c:Lq2/q;

    iget-object v1, p0, Lq2/q$a;->b:Lp2/q;

    invoke-virtual {v0, p2, v1}, Lq2/q;->c(Lp2/q;Lp2/q;)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lp2/q;

    check-cast p2, Lp2/q;

    invoke-virtual {p0, p1, p2}, Lq2/q$a;->a(Lp2/q;Lp2/q;)I

    move-result p1

    return p1
.end method

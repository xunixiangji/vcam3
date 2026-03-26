.class public final Ll3/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ll3/u$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/h;->b(Ll3/u$a;Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ll3/u$a;
    .locals 7

    const-string v0, "line"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x3a

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lj3/l;->M(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "substring(...)"

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Ll3/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    const-string v4, ""

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v4, p1}, Ll3/u$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    :goto_0
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/h;->c(Ll3/u$a;Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ll3/u;
    .locals 1

    invoke-static {p0}, Lm3/h;->d(Ll3/u$a;)Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/u$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ll3/u$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/h;->l(Ll3/u$a;Ljava/lang/String;)Ll3/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/h;->m(Ll3/u$a;Ljava/lang/String;Ljava/lang/String;)Ll3/u$a;

    move-result-object p1

    return-object p1
.end method

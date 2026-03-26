.class public final Ll3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/u$a;,
        Ll3/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lu2/g<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lf3/a;"
    }
.end annotation


# static fields
.field public static final c:Ll3/u$b;


# instance fields
.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/u$b;-><init>(Le3/d;)V

    sput-object v0, Ll3/u;->c:Ll3/u$b;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/u;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/u;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Lm3/h;->g([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/u;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lm3/h;->j(Ll3/u;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ll3/u$a;
    .locals 1

    invoke-static {p0}, Lm3/h;->k(Ll3/u;)Ll3/u$a;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lm3/h;->o(Ll3/u;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lm3/h;->e(Ll3/u;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/h;->p(Ll3/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lm3/h;->f(Ll3/u;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu2/g<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lm3/h;->i(Ll3/u;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ll3/u;->b:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lm3/h;->n(Ll3/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

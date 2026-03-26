.class public final Lw1/t;
.super Lw1/y;
.source "SourceFile"


# instance fields
.field private final i:Lw1/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw1/y;-><init>()V

    new-instance v0, Lw1/i;

    invoke-direct {v0}, Lw1/i;-><init>()V

    iput-object v0, p0, Lw1/t;->i:Lw1/y;

    return-void
.end method

.method private static t(Lg1/q;)Lg1/q;
    .locals 5

    invoke-virtual {p0}, Lg1/q;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    new-instance v1, Lg1/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lg1/q;->e()[Lg1/s;

    move-result-object v3

    sget-object v4, Lg1/a;->p:Lg1/a;

    invoke-direct {v1, v0, v2, v3, v4}, Lg1/q;-><init>(Ljava/lang/String;[B[Lg1/s;Lg1/a;)V

    invoke-virtual {p0}, Lg1/q;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg1/q;->d()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lg1/q;->g(Ljava/util/Map;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lg1/h;->a()Lg1/h;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lg1/c;Ljava/util/Map;)Lg1/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg1/c;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Lg1/q;"
        }
    .end annotation

    iget-object v0, p0, Lw1/t;->i:Lw1/y;

    invoke-virtual {v0, p1, p2}, Lw1/r;->a(Lg1/c;Ljava/util/Map;)Lg1/q;

    move-result-object p1

    invoke-static {p1}, Lw1/t;->t(Lg1/q;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg1/c;)Lg1/q;
    .locals 1

    iget-object v0, p0, Lw1/t;->i:Lw1/y;

    invoke-virtual {v0, p1}, Lw1/r;->b(Lg1/c;)Lg1/q;

    move-result-object p1

    invoke-static {p1}, Lw1/t;->t(Lg1/q;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public d(ILn1/a;Ljava/util/Map;)Lg1/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln1/a;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Lg1/q;"
        }
    .end annotation

    iget-object v0, p0, Lw1/t;->i:Lw1/y;

    invoke-virtual {v0, p1, p2, p3}, Lw1/y;->d(ILn1/a;Ljava/util/Map;)Lg1/q;

    move-result-object p1

    invoke-static {p1}, Lw1/t;->t(Lg1/q;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method protected m(Ln1/a;[ILjava/lang/StringBuilder;)I
    .locals 1

    iget-object v0, p0, Lw1/t;->i:Lw1/y;

    invoke-virtual {v0, p1, p2, p3}, Lw1/y;->m(Ln1/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public n(ILn1/a;[ILjava/util/Map;)Lg1/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln1/a;",
            "[I",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Lg1/q;"
        }
    .end annotation

    iget-object v0, p0, Lw1/t;->i:Lw1/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw1/y;->n(ILn1/a;[ILjava/util/Map;)Lg1/q;

    move-result-object p1

    invoke-static {p1}, Lw1/t;->t(Lg1/q;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method r()Lg1/a;
    .locals 1

    sget-object v0, Lg1/a;->p:Lg1/a;

    return-object v0
.end method

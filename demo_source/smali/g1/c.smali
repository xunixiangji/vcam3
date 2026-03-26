.class public final Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg1/b;

.field private b:Ln1/b;


# direct methods
.method public constructor <init>(Lg1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg1/c;->a:Lg1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ln1/b;
    .locals 1

    iget-object v0, p0, Lg1/c;->b:Ln1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0}, Lg1/b;->b()Ln1/b;

    move-result-object v0

    iput-object v0, p0, Lg1/c;->b:Ln1/b;

    :cond_0
    iget-object v0, p0, Lg1/c;->b:Ln1/b;

    return-object v0
.end method

.method public b(ILn1/a;)Ln1/a;
    .locals 1

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0, p1, p2}, Lg1/b;->c(ILn1/a;)Ln1/a;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0}, Lg1/b;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0}, Lg1/b;->f()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0}, Lg1/b;->e()Lg1/j;

    move-result-object v0

    invoke-virtual {v0}, Lg1/j;->f()Z

    move-result v0

    return v0
.end method

.method public f()Lg1/c;
    .locals 3

    iget-object v0, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v0}, Lg1/b;->e()Lg1/j;

    move-result-object v0

    invoke-virtual {v0}, Lg1/j;->g()Lg1/j;

    move-result-object v0

    new-instance v1, Lg1/c;

    iget-object v2, p0, Lg1/c;->a:Lg1/b;

    invoke-virtual {v2, v0}, Lg1/b;->a(Lg1/j;)Lg1/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lg1/c;-><init>(Lg1/b;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lg1/c;->a()Ln1/b;

    move-result-object v0

    invoke-virtual {v0}, Ln1/b;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lg1/m; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

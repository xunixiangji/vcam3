.class public Lp2/m;
.super Lp2/g;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lg1/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lp2/g;-><init>(Lg1/o;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp2/m;->c:Z

    return-void
.end method


# virtual methods
.method protected e(Lg1/j;)Lg1/c;
    .locals 2

    iget-boolean v0, p0, Lp2/m;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp2/m;->c:Z

    new-instance v0, Lg1/c;

    new-instance v1, Ln1/j;

    invoke-virtual {p1}, Lg1/j;->e()Lg1/j;

    move-result-object p1

    invoke-direct {v1, p1}, Ln1/j;-><init>(Lg1/j;)V

    invoke-direct {v0, v1}, Lg1/c;-><init>(Lg1/b;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/m;->c:Z

    new-instance v0, Lg1/c;

    new-instance v1, Ln1/j;

    invoke-direct {v1, p1}, Ln1/j;-><init>(Lg1/j;)V

    invoke-direct {v0, v1}, Lg1/c;-><init>(Lg1/b;)V

    return-object v0
.end method

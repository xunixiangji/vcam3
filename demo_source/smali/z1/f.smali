.class abstract Lz1/f;
.super Lz1/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ln1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/i;-><init>(Ln1/a;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lz1/j;->c()Ln1/a;

    move-result-object v0

    invoke-virtual {v0}, Ln1/a;->l()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lz1/h;->f(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lz1/i;->j(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lg1/m;->a()Lg1/m;

    move-result-object v0

    throw v0
.end method

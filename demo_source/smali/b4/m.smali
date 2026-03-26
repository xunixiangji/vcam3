.class public Lb4/m;
.super Lb4/h0;
.source "SourceFile"


# instance fields
.field private f:Lb4/h0;


# direct methods
.method public constructor <init>(Lb4/h0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb4/h0;-><init>()V

    iput-object p1, p0, Lb4/m;->f:Lb4/h0;

    return-void
.end method


# virtual methods
.method public a()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->a()Lb4/h0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->b()Lb4/h0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lb4/h0;
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0, p1, p2}, Lb4/h0;->d(J)Lb4/h0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lb4/h0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    invoke-virtual {v0, p1, p2, p3}, Lb4/h0;->g(JLjava/util/concurrent/TimeUnit;)Lb4/h0;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lb4/m;->f:Lb4/h0;

    return-object v0
.end method

.method public final j(Lb4/h0;)Lb4/m;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lb4/m;->f:Lb4/h0;

    return-object p0
.end method

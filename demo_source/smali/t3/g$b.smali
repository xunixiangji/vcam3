.class public final Lt3/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lp3/d;

.field public c:Ljava/net/Socket;

.field public d:Ljava/lang/String;

.field public e:Lb4/f;

.field public f:Lb4/e;

.field private g:Lt3/g$d;

.field private h:Lt3/m;

.field private i:I

.field private j:Lt3/c;


# direct methods
.method public constructor <init>(ZLp3/d;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt3/g$b;->a:Z

    iput-object p2, p0, Lt3/g$b;->b:Lp3/d;

    sget-object p1, Lt3/g$d;->b:Lt3/g$d;

    iput-object p1, p0, Lt3/g$b;->g:Lt3/g$d;

    sget-object p1, Lt3/m;->b:Lt3/m;

    iput-object p1, p0, Lt3/g$b;->h:Lt3/m;

    sget-object p1, Lt3/c$a;->a:Lt3/c$a;

    iput-object p1, p0, Lt3/g$b;->j:Lt3/c;

    return-void
.end method


# virtual methods
.method public final a()Lt3/g;
    .locals 1

    new-instance v0, Lt3/g;

    invoke-direct {v0, p0}, Lt3/g;-><init>(Lt3/g$b;)V

    return-object v0
.end method

.method public final b(Lt3/c;)Lt3/g$b;
    .locals 1

    const-string v0, "flowControlListener"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->j:Lt3/c;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lt3/g$b;->a:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "connectionName"

    invoke-static {v0}, Le3/f;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lt3/c;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->j:Lt3/c;

    return-object v0
.end method

.method public final f()Lt3/g$d;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->g:Lt3/g$d;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lt3/g$b;->i:I

    return v0
.end method

.method public final h()Lt3/m;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->h:Lt3/m;

    return-object v0
.end method

.method public final i()Lb4/e;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->f:Lb4/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sink"

    invoke-static {v0}, Le3/f;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "socket"

    invoke-static {v0}, Le3/f;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lb4/f;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->e:Lb4/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "source"

    invoke-static {v0}, Le3/f;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lp3/d;
    .locals 1

    iget-object v0, p0, Lt3/g$b;->b:Lp3/d;

    return-object v0
.end method

.method public final m(Lt3/g$d;)Lt3/g$b;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->g:Lt3/g$d;

    return-object p0
.end method

.method public final n(I)Lt3/g$b;
    .locals 0

    iput p1, p0, Lt3/g$b;->i:I

    return-object p0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->d:Ljava/lang/String;

    return-void
.end method

.method public final p(Lb4/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->f:Lb4/e;

    return-void
.end method

.method public final q(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->c:Ljava/net/Socket;

    return-void
.end method

.method public final r(Lb4/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt3/g$b;->e:Lb4/f;

    return-void
.end method

.method public final s(Ljava/net/Socket;Ljava/lang/String;Lb4/f;Lb4/e;)Lt3/g$b;
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt3/g$b;->q(Ljava/net/Socket;)V

    iget-boolean p1, p0, Lt3/g$b;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lm3/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockWebServer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt3/g$b;->o(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lt3/g$b;->r(Lb4/f;)V

    invoke-virtual {p0, p4}, Lt3/g$b;->p(Lb4/e;)V

    return-object p0
.end method

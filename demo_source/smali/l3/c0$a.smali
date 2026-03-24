.class public Ll3/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ll3/a0;

.field private b:Ll3/z;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ll3/t;

.field private f:Ll3/u$a;

.field private g:Ll3/d0;

.field private h:Ll3/c0;

.field private i:Ll3/c0;

.field private j:Ll3/c0;

.field private k:J

.field private l:J

.field private m:Lq3/c;

.field private n:Ld3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/a<",
            "Ll3/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll3/c0$a;->c:I

    invoke-static {}, Lm3/p;->m()Ll3/d0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->g:Ll3/d0;

    sget-object v0, Ll3/c0$a$b;->c:Ll3/c0$a$b;

    iput-object v0, p0, Ll3/c0$a;->n:Ld3/a;

    new-instance v0, Ll3/u$a;

    invoke-direct {v0}, Ll3/u$a;-><init>()V

    iput-object v0, p0, Ll3/c0$a;->f:Ll3/u$a;

    return-void
.end method

.method public constructor <init>(Ll3/c0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll3/c0$a;->c:I

    invoke-static {}, Lm3/p;->m()Ll3/d0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->g:Ll3/d0;

    sget-object v0, Ll3/c0$a$b;->c:Ll3/c0$a$b;

    iput-object v0, p0, Ll3/c0$a;->n:Ld3/a;

    invoke-virtual {p1}, Ll3/c0;->Z()Ll3/a0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->a:Ll3/a0;

    invoke-virtual {p1}, Ll3/c0;->X()Ll3/z;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->b:Ll3/z;

    invoke-virtual {p1}, Ll3/c0;->M()I

    move-result v0

    iput v0, p0, Ll3/c0$a;->c:I

    invoke-virtual {p1}, Ll3/c0;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ll3/c0;->P()Ll3/t;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->e:Ll3/t;

    invoke-virtual {p1}, Ll3/c0;->S()Ll3/u;

    move-result-object v0

    invoke-virtual {v0}, Ll3/u;->d()Ll3/u$a;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->f:Ll3/u$a;

    invoke-virtual {p1}, Ll3/c0;->I()Ll3/d0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->g:Ll3/d0;

    invoke-virtual {p1}, Ll3/c0;->U()Ll3/c0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->h:Ll3/c0;

    invoke-virtual {p1}, Ll3/c0;->K()Ll3/c0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->i:Ll3/c0;

    invoke-virtual {p1}, Ll3/c0;->W()Ll3/c0;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->j:Ll3/c0;

    invoke-virtual {p1}, Ll3/c0;->a0()J

    move-result-wide v0

    iput-wide v0, p0, Ll3/c0$a;->k:J

    invoke-virtual {p1}, Ll3/c0;->Y()J

    move-result-wide v0

    iput-wide v0, p0, Ll3/c0$a;->l:J

    invoke-virtual {p1}, Ll3/c0;->N()Lq3/c;

    move-result-object v0

    iput-object v0, p0, Ll3/c0$a;->m:Lq3/c;

    invoke-static {p1}, Ll3/c0;->i(Ll3/c0;)Ld3/a;

    move-result-object p1

    iput-object p1, p0, Ll3/c0$a;->n:Ld3/a;

    return-void
.end method


# virtual methods
.method public final A(Ll3/a0;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->a:Ll3/a0;

    return-void
.end method

.method public final B(Ld3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/a<",
            "Ll3/u;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/c0$a;->n:Ld3/a;

    return-void
.end method

.method public C(Ld3/a;)Ll3/c0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/a<",
            "Ll3/u;",
            ">;)",
            "Ll3/c0$a;"
        }
    .end annotation

    const-string v0, "trailersFn"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->q(Ll3/c0$a;Ld3/a;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/o;->b(Ll3/c0$a;Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ll3/d0;)Ll3/c0$a;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->c(Ll3/c0$a;Ll3/d0;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Ll3/c0;
    .locals 19

    move-object/from16 v0, p0

    iget v5, v0, Ll3/c0$a;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v0, Ll3/c0$a;->a:Ll3/a0;

    if-eqz v2, :cond_3

    iget-object v3, v0, Ll3/c0$a;->b:Ll3/z;

    if-eqz v3, :cond_2

    iget-object v4, v0, Ll3/c0$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v6, v0, Ll3/c0$a;->e:Ll3/t;

    iget-object v1, v0, Ll3/c0$a;->f:Ll3/u$a;

    invoke-virtual {v1}, Ll3/u$a;->d()Ll3/u;

    move-result-object v7

    iget-object v8, v0, Ll3/c0$a;->g:Ll3/d0;

    iget-object v9, v0, Ll3/c0$a;->h:Ll3/c0;

    iget-object v10, v0, Ll3/c0$a;->i:Ll3/c0;

    iget-object v11, v0, Ll3/c0$a;->j:Ll3/c0;

    iget-wide v12, v0, Ll3/c0$a;->k:J

    iget-wide v14, v0, Ll3/c0$a;->l:J

    iget-object v1, v0, Ll3/c0$a;->m:Lq3/c;

    move-object/from16 v16, v1

    iget-object v1, v0, Ll3/c0$a;->n:Ld3/a;

    move-object/from16 v17, v1

    new-instance v18, Ll3/c0;

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Ll3/c0;-><init>(Ll3/a0;Ll3/z;Ljava/lang/String;ILl3/t;Ll3/u;Ll3/d0;Ll3/c0;Ll3/c0;Ll3/c0;JJLq3/c;Ld3/a;)V

    return-object v18

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Ll3/c0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public d(Ll3/c0;)Ll3/c0$a;
    .locals 0

    invoke-static {p0, p1}, Lm3/o;->d(Ll3/c0$a;Ll3/c0;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Ll3/c0$a;
    .locals 0

    invoke-static {p0, p1}, Lm3/o;->f(Ll3/c0$a;I)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ll3/c0$a;->c:I

    return v0
.end method

.method public final g()Ll3/u$a;
    .locals 1

    iget-object v0, p0, Ll3/c0$a;->f:Ll3/u$a;

    return-object v0
.end method

.method public h(Ll3/t;)Ll3/c0$a;
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->e:Ll3/t;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/o;->h(Ll3/c0$a;Ljava/lang/String;Ljava/lang/String;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ll3/u;)Ll3/c0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->i(Ll3/c0$a;Ll3/u;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lq3/c;)V
    .locals 1

    const-string v0, "exchange"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/c0$a;->m:Lq3/c;

    new-instance v0, Ll3/c0$a$a;

    invoke-direct {v0, p1}, Ll3/c0$a$a;-><init>(Lq3/c;)V

    iput-object v0, p0, Ll3/c0$a;->n:Ld3/a;

    return-void
.end method

.method public l(Ljava/lang/String;)Ll3/c0$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->j(Ll3/c0$a;Ljava/lang/String;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public m(Ll3/c0;)Ll3/c0$a;
    .locals 0

    invoke-static {p0, p1}, Lm3/o;->k(Ll3/c0$a;Ll3/c0;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public n(Ll3/c0;)Ll3/c0$a;
    .locals 0

    invoke-static {p0, p1}, Lm3/o;->m(Ll3/c0$a;Ll3/c0;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public o(Ll3/z;)Ll3/c0$a;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->n(Ll3/c0$a;Ll3/z;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public p(J)Ll3/c0$a;
    .locals 0

    iput-wide p1, p0, Ll3/c0$a;->l:J

    return-object p0
.end method

.method public q(Ll3/a0;)Ll3/c0$a;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm3/o;->o(Ll3/c0$a;Ll3/a0;)Ll3/c0$a;

    move-result-object p1

    return-object p1
.end method

.method public r(J)Ll3/c0$a;
    .locals 0

    iput-wide p1, p0, Ll3/c0$a;->k:J

    return-object p0
.end method

.method public final s(Ll3/d0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/c0$a;->g:Ll3/d0;

    return-void
.end method

.method public final t(Ll3/c0;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->i:Ll3/c0;

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Ll3/c0$a;->c:I

    return-void
.end method

.method public final v(Ll3/u$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/c0$a;->f:Ll3/u$a;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final x(Ll3/c0;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->h:Ll3/c0;

    return-void
.end method

.method public final y(Ll3/c0;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->j:Ll3/c0;

    return-void
.end method

.method public final z(Ll3/z;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a;->b:Ll3/z;

    return-void
.end method

.class public final Ls3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b$a;,
        Ls3/b$b;,
        Ls3/b$c;,
        Ls3/b$d;,
        Ls3/b$e;,
        Ls3/b$f;,
        Ls3/b$g;
    }
.end annotation


# static fields
.field public static final h:Ls3/b$d;


# instance fields
.field private final a:Ll3/y;

.field private final b:Lr3/d$a;

.field private final c:Lb4/f;

.field private final d:Lb4/e;

.field private e:I

.field private final f:Ls3/a;

.field private g:Ll3/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls3/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls3/b$d;-><init>(Le3/d;)V

    sput-object v0, Ls3/b;->h:Ls3/b$d;

    return-void
.end method

.method public constructor <init>(Ll3/y;Lr3/d$a;Lb4/f;Lb4/e;)V
    .locals 1

    const-string v0, "carrier"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/b;->a:Ll3/y;

    iput-object p2, p0, Ls3/b;->b:Lr3/d$a;

    iput-object p3, p0, Ls3/b;->c:Lb4/f;

    iput-object p4, p0, Ls3/b;->d:Lb4/e;

    new-instance p1, Ls3/a;

    invoke-direct {p1, p3}, Ls3/a;-><init>(Lb4/f;)V

    iput-object p1, p0, Ls3/b;->f:Ls3/a;

    return-void
.end method

.method public static final synthetic j(Ls3/b;Lb4/m;)V
    .locals 0

    invoke-direct {p0, p1}, Ls3/b;->s(Lb4/m;)V

    return-void
.end method

.method public static final synthetic k(Ls3/b;)Ll3/y;
    .locals 0

    iget-object p0, p0, Ls3/b;->a:Ll3/y;

    return-object p0
.end method

.method public static final synthetic l(Ls3/b;)Ls3/a;
    .locals 0

    iget-object p0, p0, Ls3/b;->f:Ls3/a;

    return-object p0
.end method

.method public static final synthetic m(Ls3/b;)Lb4/e;
    .locals 0

    iget-object p0, p0, Ls3/b;->d:Lb4/e;

    return-object p0
.end method

.method public static final synthetic n(Ls3/b;)Lb4/f;
    .locals 0

    iget-object p0, p0, Ls3/b;->c:Lb4/f;

    return-object p0
.end method

.method public static final synthetic o(Ls3/b;)I
    .locals 0

    iget p0, p0, Ls3/b;->e:I

    return p0
.end method

.method public static final synthetic p(Ls3/b;)Ll3/u;
    .locals 0

    iget-object p0, p0, Ls3/b;->g:Ll3/u;

    return-object p0
.end method

.method public static final synthetic q(Ls3/b;I)V
    .locals 0

    iput p1, p0, Ls3/b;->e:I

    return-void
.end method

.method public static final synthetic r(Ls3/b;Ll3/u;)V
    .locals 0

    iput-object p1, p0, Ls3/b;->g:Ll3/u;

    return-void
.end method

.method private final s(Lb4/m;)V
    .locals 2

    invoke-virtual {p1}, Lb4/m;->i()Lb4/h0;

    move-result-object v0

    sget-object v1, Lb4/h0;->e:Lb4/h0;

    invoke-virtual {p1, v1}, Lb4/m;->j(Lb4/h0;)Lb4/m;

    invoke-virtual {v0}, Lb4/h0;->a()Lb4/h0;

    invoke-virtual {v0}, Lb4/h0;->b()Lb4/h0;

    return-void
.end method

.method private final t(Ll3/a0;)Z
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Ll3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final u(Ll3/c0;)Z
    .locals 3

    const-string v0, "Transfer-Encoding"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Ll3/c0;->R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final v()Lb4/e0;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Ls3/b;->e:I

    new-instance v0, Ls3/b$b;

    invoke-direct {v0, p0}, Ls3/b$b;-><init>(Ls3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls3/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final w(Ll3/v;)Lb4/g0;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Ls3/b;->e:I

    new-instance v0, Ls3/b$c;

    invoke-direct {v0, p0, p1}, Ls3/b$c;-><init>(Ls3/b;Ll3/v;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ls3/b;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final x(J)Lb4/g0;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Ls3/b;->e:I

    new-instance v0, Ls3/b$e;

    invoke-direct {v0, p0, p1, p2}, Ls3/b$e;-><init>(Ls3/b;J)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Ls3/b;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final y()Lb4/e0;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Ls3/b;->e:I

    new-instance v0, Ls3/b$f;

    invoke-direct {v0, p0}, Ls3/b$f;-><init>(Ls3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls3/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final z()Lb4/g0;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Ls3/b;->e:I

    invoke-virtual {p0}, Ls3/b;->h()Lr3/d$a;

    move-result-object v0

    invoke-interface {v0}, Lr3/d$a;->h()V

    new-instance v0, Ls3/b$g;

    invoke-direct {v0, p0}, Ls3/b$g;-><init>(Ls3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls3/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final A(Ll3/c0;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/s;->i(Ll3/c0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Ls3/b;->x(J)Lb4/g0;

    move-result-object p1

    const v0, 0x7fffffff

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1}, Lm3/s;->m(Lb4/g0;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {p1}, Lb4/g0;->close()V

    return-void
.end method

.method public final B(Ll3/u;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Ls3/b;->d:Lb4/e;

    invoke-interface {v0, p2}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    invoke-virtual {p1}, Ll3/u;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Ls3/b;->d:Lb4/e;

    invoke-virtual {p1, v1}, Ll3/u;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    move-result-object v3

    invoke-virtual {p1, v1}, Ll3/u;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    move-result-object v3

    invoke-interface {v3, v0}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ls3/b;->d:Lb4/e;

    invoke-interface {p1, v0}, Lb4/e;->x(Ljava/lang/String;)Lb4/e;

    iput v2, p0, Ls3/b;->e:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Ls3/b;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ll3/a0;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr3/i;->a:Lr3/i;

    invoke-virtual {p0}, Ls3/b;->h()Lr3/d$a;

    move-result-object v1

    invoke-interface {v1}, Lr3/d$a;->c()Ll3/e0;

    move-result-object v1

    invoke-virtual {v1}, Ll3/e0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "type(...)"

    invoke-static {v1, v2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lr3/i;->a(Ll3/a0;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll3/a0;->e()Ll3/u;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ls3/b;->B(Ll3/u;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ll3/u;
    .locals 2

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Ls3/b;->g:Ll3/u;

    if-nez v0, :cond_1

    sget-object v0, Lm3/s;->a:Ll3/u;

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ls3/b;->d:Lb4/e;

    invoke-interface {v0}, Lb4/e;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Ls3/b;->h()Lr3/d$a;

    move-result-object v0

    invoke-interface {v0}, Lr3/d$a;->cancel()V

    return-void
.end method

.method public d(Ll3/a0;J)Lb4/e0;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ll3/a0;->a()Ll3/b0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll3/b0;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Ls3/b;->t(Ll3/a0;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ls3/b;->v()Lb4/e0;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ls3/b;->y()Lb4/e0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ls3/b;->d:Lb4/e;

    invoke-interface {v0}, Lb4/e;->flush()V

    return-void
.end method

.method public f(Ll3/c0;)Lb4/g0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr3/e;->b(Ll3/c0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Ls3/b;->x(J)Lb4/g0;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Ls3/b;->u(Ll3/c0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ll3/c0;->Z()Ll3/a0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/a0;->i()Ll3/v;

    move-result-object p1

    invoke-direct {p0, p1}, Ls3/b;->w(Ll3/v;)Lb4/g0;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lm3/s;->i(Ll3/c0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ls3/b;->z()Lb4/g0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public g(Z)Ll3/c0$a;
    .locals 6

    iget v0, p0, Ls3/b;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    :try_start_0
    sget-object v0, Lr3/k;->d:Lr3/k$a;

    iget-object v4, p0, Ls3/b;->f:Ls3/a;

    invoke-virtual {v4}, Ls3/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lr3/k$a;->a(Ljava/lang/String;)Lr3/k;

    move-result-object v0

    new-instance v4, Ll3/c0$a;

    invoke-direct {v4}, Ll3/c0$a;-><init>()V

    iget-object v5, v0, Lr3/k;->a:Ll3/z;

    invoke-virtual {v4, v5}, Ll3/c0$a;->o(Ll3/z;)Ll3/c0$a;

    move-result-object v4

    iget v5, v0, Lr3/k;->b:I

    invoke-virtual {v4, v5}, Ll3/c0$a;->e(I)Ll3/c0$a;

    move-result-object v4

    iget-object v5, v0, Lr3/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ll3/c0$a;->l(Ljava/lang/String;)Ll3/c0$a;

    move-result-object v4

    iget-object v5, p0, Ls3/b;->f:Ls3/a;

    invoke-virtual {v5}, Ls3/a;->a()Ll3/u;

    move-result-object v5

    invoke-virtual {v4, v5}, Ll3/c0$a;->j(Ll3/u;)Ll3/c0$a;

    move-result-object v4

    sget-object v5, Ls3/b$h;->c:Ls3/b$h;

    invoke-virtual {v4, v5}, Ll3/c0$a;->C(Ld3/a;)Ll3/c0$a;

    move-result-object v4

    const/16 v5, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lr3/k;->b:I

    if-ne p1, v5, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget p1, v0, Lr3/k;->b:I

    if-ne p1, v5, :cond_3

    :goto_2
    iput v2, p0, Ls3/b;->e:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x66

    if-gt v0, p1, :cond_4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Ls3/b;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v4

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ls3/b;->h()Lr3/d$a;

    move-result-object v0

    invoke-interface {v0}, Lr3/d$a;->c()Ll3/e0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/e0;->a()Ll3/a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/a;->l()Ll3/v;

    move-result-object v0

    invoke-virtual {v0}, Ll3/v;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ls3/b;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lr3/d$a;
    .locals 1

    iget-object v0, p0, Ls3/b;->b:Lr3/d$a;

    return-object v0
.end method

.method public i(Ll3/c0;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr3/e;->b(Ll3/c0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ls3/b;->u(Ll3/c0;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lm3/s;->i(Ll3/c0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

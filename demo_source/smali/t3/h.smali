.class public final Lt3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/h$a;
    }
.end annotation


# static fields
.field public static final g:Lt3/h$a;

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lr3/d$a;

.field private final b:Lr3/g;

.field private final c:Lt3/g;

.field private volatile d:Lt3/j;

.field private final e:Ll3/z;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lt3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/h$a;-><init>(Le3/d;)V

    sput-object v0, Lt3/h;->g:Lt3/h$a;

    const-string v2, "connection"

    const-string v3, "host"

    const-string v4, "keep-alive"

    const-string v5, "proxy-connection"

    const-string v6, "te"

    const-string v7, "transfer-encoding"

    const-string v8, "encoding"

    const-string v9, "upgrade"

    const-string v10, ":method"

    const-string v11, ":path"

    const-string v12, ":scheme"

    const-string v13, ":authority"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm3/s;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lt3/h;->h:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm3/s;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lt3/h;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ll3/y;Lr3/d$a;Lr3/g;Lt3/g;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carrier"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt3/h;->a:Lr3/d$a;

    iput-object p3, p0, Lt3/h;->b:Lr3/g;

    iput-object p4, p0, Lt3/h;->c:Lt3/g;

    invoke-virtual {p1}, Ll3/y;->x()Ljava/util/List;

    move-result-object p1

    sget-object p2, Ll3/z;->h:Ll3/z;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ll3/z;->g:Ll3/z;

    :goto_0
    iput-object p2, p0, Lt3/h;->e:Ll3/z;

    return-void
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lt3/h;->h:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic k()Ljava/util/List;
    .locals 1

    sget-object v0, Lt3/h;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ll3/a0;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt3/h;->d:Lt3/j;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ll3/a0;->a()Ll3/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lt3/h;->g:Lt3/h$a;

    invoke-virtual {v1, p1}, Lt3/h$a;->a(Ll3/a0;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lt3/h;->c:Lt3/g;

    invoke-virtual {v1, p1, v0}, Lt3/g;->p0(Ljava/util/List;Z)Lt3/j;

    move-result-object p1

    iput-object p1, p0, Lt3/h;->d:Lt3/j;

    iget-boolean p1, p0, Lt3/h;->f:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lt3/h;->d:Lt3/j;

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lt3/j;->w()Lb4/h0;

    move-result-object p1

    iget-object v0, p0, Lt3/h;->b:Lr3/g;

    invoke-virtual {v0}, Lr3/g;->i()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lb4/h0;->g(JLjava/util/concurrent/TimeUnit;)Lb4/h0;

    iget-object p1, p0, Lt3/h;->d:Lt3/j;

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lt3/j;->E()Lb4/h0;

    move-result-object p1

    iget-object v0, p0, Lt3/h;->b:Lr3/g;

    invoke-virtual {v0}, Lr3/g;->k()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lb4/h0;->g(JLjava/util/concurrent/TimeUnit;)Lb4/h0;

    return-void

    :cond_2
    iget-object p1, p0, Lt3/h;->d:Lt3/j;

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    sget-object v0, Lt3/b;->l:Lt3/b;

    invoke-virtual {p1, v0}, Lt3/j;->g(Lt3/b;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ll3/u;
    .locals 1

    iget-object v0, p0, Lt3/h;->d:Lt3/j;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lt3/j;->C()Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lt3/h;->d:Lt3/j;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lt3/j;->o()Lb4/e0;

    move-result-object v0

    invoke-interface {v0}, Lb4/e0;->close()V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt3/h;->f:Z

    iget-object v0, p0, Lt3/h;->d:Lt3/j;

    if-eqz v0, :cond_0

    sget-object v1, Lt3/b;->l:Lt3/b;

    invoke-virtual {v0, v1}, Lt3/j;->g(Lt3/b;)V

    :cond_0
    return-void
.end method

.method public d(Ll3/a0;J)Lb4/e0;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lt3/h;->d:Lt3/j;

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lt3/j;->o()Lb4/e0;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lt3/h;->c:Lt3/g;

    invoke-virtual {v0}, Lt3/g;->flush()V

    return-void
.end method

.method public f(Ll3/c0;)Lb4/g0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lt3/h;->d:Lt3/j;

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lt3/j;->q()Lt3/j$c;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)Ll3/c0$a;
    .locals 3

    iget-object v0, p0, Lt3/h;->d:Lt3/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lt3/j;->B(Z)Ll3/u;

    move-result-object v0

    sget-object v1, Lt3/h;->g:Lt3/h$a;

    iget-object v2, p0, Lt3/h;->e:Ll3/z;

    invoke-virtual {v1, v0, v2}, Lt3/h$a;->b(Ll3/u;Ll3/z;)Ll3/c0$a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ll3/c0$a;->f()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream wasn\'t created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Lr3/d$a;
    .locals 1

    iget-object v0, p0, Lt3/h;->a:Lr3/d$a;

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
    invoke-static {p1}, Lm3/s;->i(Ll3/c0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

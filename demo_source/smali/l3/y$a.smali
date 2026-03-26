.class public final Ll3/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Lq3/m;

.field private E:Lp3/d;

.field private a:Ll3/q;

.field private b:Ll3/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll3/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll3/w;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ll3/s$c;

.field private f:Z

.field private g:Z

.field private h:Ll3/b;

.field private i:Z

.field private j:Z

.field private k:Ll3/o;

.field private l:Ll3/r;

.field private m:Ljava/net/Proxy;

.field private n:Ljava/net/ProxySelector;

.field private o:Ll3/b;

.field private p:Ljavax/net/SocketFactory;

.field private q:Ljavax/net/ssl/SSLSocketFactory;

.field private r:Ljavax/net/ssl/X509TrustManager;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll3/m;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ll3/z;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljavax/net/ssl/HostnameVerifier;

.field private v:Ll3/g;

.field private w:La4/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll3/q;

    invoke-direct {v0}, Ll3/q;-><init>()V

    iput-object v0, p0, Ll3/y$a;->a:Ll3/q;

    new-instance v0, Ll3/l;

    invoke-direct {v0}, Ll3/l;-><init>()V

    iput-object v0, p0, Ll3/y$a;->b:Ll3/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/y$a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/y$a;->d:Ljava/util/List;

    sget-object v0, Ll3/s;->b:Ll3/s;

    invoke-static {v0}, Lm3/s;->c(Ll3/s;)Ll3/s$c;

    move-result-object v0

    iput-object v0, p0, Ll3/y$a;->e:Ll3/s$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/y$a;->f:Z

    iput-boolean v0, p0, Ll3/y$a;->g:Z

    sget-object v1, Ll3/b;->b:Ll3/b;

    iput-object v1, p0, Ll3/y$a;->h:Ll3/b;

    iput-boolean v0, p0, Ll3/y$a;->i:Z

    iput-boolean v0, p0, Ll3/y$a;->j:Z

    sget-object v0, Ll3/o;->b:Ll3/o;

    iput-object v0, p0, Ll3/y$a;->k:Ll3/o;

    sget-object v0, Ll3/r;->b:Ll3/r;

    iput-object v0, p0, Ll3/y$a;->l:Ll3/r;

    iput-object v1, p0, Ll3/y$a;->o:Ll3/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ll3/y$a;->p:Ljavax/net/SocketFactory;

    sget-object v0, Ll3/y;->F:Ll3/y$b;

    invoke-virtual {v0}, Ll3/y$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ll3/y$a;->s:Ljava/util/List;

    invoke-virtual {v0}, Ll3/y$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll3/y$a;->t:Ljava/util/List;

    sget-object v0, La4/d;->a:La4/d;

    iput-object v0, p0, Ll3/y$a;->u:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Ll3/g;->d:Ll3/g;

    iput-object v0, p0, Ll3/y$a;->v:Ll3/g;

    const/16 v0, 0x2710

    iput v0, p0, Ll3/y$a;->y:I

    iput v0, p0, Ll3/y$a;->z:I

    iput v0, p0, Ll3/y$a;->A:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Ll3/y$a;->C:J

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Ll3/y$a;->f:Z

    return v0
.end method

.method public final B()Lq3/m;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->D:Lq3/m;

    return-object v0
.end method

.method public final C()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final E()Lp3/d;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->E:Lp3/d;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Ll3/y$a;->A:I

    return v0
.end method

.method public final G()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final H(Ljava/net/Proxy;)Ll3/y$a;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->m:Ljava/net/Proxy;

    invoke-static {p1, v0}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/y$a;->D:Lq3/m;

    :cond_0
    iput-object p1, p0, Ll3/y$a;->m:Ljava/net/Proxy;

    return-object p0
.end method

.method public final I(Ll3/b;)Ll3/y$a;
    .locals 1

    const-string v0, "proxyAuthenticator"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/y$a;->o:Ll3/b;

    invoke-static {p1, v0}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/y$a;->D:Lq3/m;

    :cond_0
    iput-object p1, p0, Ll3/y$a;->o:Ll3/b;

    return-object p0
.end method

.method public final a()Ll3/y;
    .locals 1

    new-instance v0, Ll3/y;

    invoke-direct {v0, p0}, Ll3/y;-><init>(Ll3/y$a;)V

    return-object v0
.end method

.method public final b()Ll3/b;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->h:Ll3/b;

    return-object v0
.end method

.method public final c()Ll3/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ll3/y$a;->x:I

    return v0
.end method

.method public final e()La4/c;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->w:La4/c;

    return-object v0
.end method

.method public final f()Ll3/g;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->v:Ll3/g;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ll3/y$a;->y:I

    return v0
.end method

.method public final h()Ll3/l;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->b:Ll3/l;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/y$a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ll3/o;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->k:Ll3/o;

    return-object v0
.end method

.method public final k()Ll3/q;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->a:Ll3/q;

    return-object v0
.end method

.method public final l()Ll3/r;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->l:Ll3/r;

    return-object v0
.end method

.method public final m()Ll3/s$c;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->e:Ll3/s$c;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Ll3/y$a;->g:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Ll3/y$a;->i:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Ll3/y$a;->j:Z

    return v0
.end method

.method public final q()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->u:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/y$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final s()J
    .locals 2

    iget-wide v0, p0, Ll3/y$a;->C:J

    return-wide v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/y$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Ll3/y$a;->B:I

    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/y$a;->t:Ljava/util/List;

    return-object v0
.end method

.method public final w()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public final x()Ll3/b;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->o:Ll3/b;

    return-object v0
.end method

.method public final y()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Ll3/y$a;->n:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Ll3/y$a;->z:I

    return v0
.end method

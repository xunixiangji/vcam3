.class public final Lx3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/i$a;
    }
.end annotation


# instance fields
.field private final a:Lx3/i$a;

.field private b:Lx3/j;


# direct methods
.method public constructor <init>(Lx3/i$a;)V
    .locals 1

    const-string v0, "socketAdapterFactory"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/i;->a:Lx3/i$a;

    return-void
.end method

.method private final declared-synchronized e(Ljavax/net/ssl/SSLSocket;)Lx3/j;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx3/i;->b:Lx3/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lx3/i;->a:Lx3/i$a;

    invoke-interface {v0, p1}, Lx3/i$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx3/i;->a:Lx3/i$a;

    invoke-interface {v0, p1}, Lx3/i$a;->b(Ljavax/net/ssl/SSLSocket;)Lx3/j;

    move-result-object p1

    iput-object p1, p0, Lx3/i;->b:Lx3/j;

    :cond_0
    iget-object p1, p0, Lx3/i;->b:Lx3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx3/i;->a:Lx3/i$a;

    invoke-interface {v0, p1}, Lx3/i$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx3/i;->e(Ljavax/net/ssl/SSLSocket;)Lx3/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lx3/j;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ll3/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lx3/i;->e(Ljavax/net/ssl/SSLSocket;)Lx3/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lx3/j;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

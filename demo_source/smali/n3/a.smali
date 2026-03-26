.class public final Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a$a;
    }
.end annotation


# instance fields
.field private final d:Ll3/r;


# direct methods
.method public constructor <init>(Ll3/r;)V
    .locals 1

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/a;->d:Ll3/r;

    return-void
.end method

.method public synthetic constructor <init>(Ll3/r;ILe3/d;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Ll3/r;->b:Ll3/r;

    :cond_0
    invoke-direct {p0, p1}, Ln3/a;-><init>(Ll3/r;)V

    return-void
.end method

.method private final b(Ljava/net/Proxy;Ll3/v;Ll3/r;)Ljava/net/InetAddress;
    .locals 2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ln3/a$a;->a:[I

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ll3/v;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ll3/r;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lv2/m;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-static {p1, p2}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const-string p2, "getAddress(...)"

    invoke-static {p1, p2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Ll3/e0;Ll3/c0;)Ll3/a0;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "response"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ll3/c0;->L()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ll3/c0;->Z()Ll3/a0;

    move-result-object v3

    invoke-virtual {v3}, Ll3/a0;->i()Ll3/v;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ll3/c0;->M()I

    move-result v2

    const/4 v5, 0x1

    const/16 v6, 0x197

    if-ne v2, v6, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ll3/e0;->b()Ljava/net/Proxy;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll3/h;

    invoke-virtual {v7}, Ll3/h;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Basic"

    invoke-static {v9, v8, v5}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ll3/e0;->a()Ll3/a;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ll3/a;->c()Ll3/r;

    move-result-object v8

    if-nez v8, :cond_6

    :cond_5
    iget-object v8, v0, Ln3/a;->d:Ll3/r;

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-static {v9, v10}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v4, v8}, Ln3/a;->b(Ljava/net/Proxy;Ll3/v;Ll3/r;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    invoke-virtual {v4}, Ll3/v;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ll3/h;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Ll3/h;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Ll3/v;->u()Ljava/net/URL;

    move-result-object v16

    sget-object v17, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ll3/v;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v4, v8}, Ln3/a;->b(Ljava/net/Proxy;Ll3/v;Ll3/r;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v4}, Ll3/v;->o()I

    move-result v11

    invoke-virtual {v4}, Ll3/v;->s()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ll3/h;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ll3/h;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ll3/v;->u()Ljava/net/URL;

    move-result-object v15

    sget-object v16, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v2, :cond_8

    const-string v1, "Proxy-Authorization"

    goto :goto_3

    :cond_8
    const-string v1, "Authorization"

    :goto_3
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getUserName(...)"

    invoke-static {v2, v4}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    const-string v5, "getPassword(...)"

    invoke-static {v4, v5}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ll3/h;->b()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v2, v5, v4}, Ll3/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ll3/a0;->h()Ll3/a0$a;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ll3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Ll3/a0$a;

    move-result-object v1

    invoke-virtual {v1}, Ll3/a0$a;->b()Ll3/a0;

    move-result-object v1

    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.class public final Ll3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/m$a;,
        Ll3/m$b;
    }
.end annotation


# static fields
.field public static final e:Ll3/m$b;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll3/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll3/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ll3/m;

.field public static final i:Ll3/m;

.field public static final j:Ll3/m;

.field public static final k:Ll3/m;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Ll3/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/m$b;-><init>(Le3/d;)V

    sput-object v0, Ll3/m;->e:Ll3/m$b;

    const/16 v0, 0x9

    new-array v1, v0, [Ll3/i;

    sget-object v2, Ll3/i;->o1:Ll3/i;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Ll3/i;->p1:Ll3/i;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Ll3/i;->q1:Ll3/i;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Ll3/i;->a1:Ll3/i;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Ll3/i;->e1:Ll3/i;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Ll3/i;->b1:Ll3/i;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Ll3/i;->f1:Ll3/i;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Ll3/i;->l1:Ll3/i;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Ll3/i;->k1:Ll3/i;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    invoke-static {v1}, Lv2/m;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ll3/m;->f:Ljava/util/List;

    const/16 v0, 0x10

    new-array v0, v0, [Ll3/i;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    sget-object v2, Ll3/i;->L0:Ll3/i;

    const/16 v4, 0x9

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->M0:Ll3/i;

    const/16 v4, 0xa

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->j0:Ll3/i;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->k0:Ll3/i;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->H:Ll3/i;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->L:Ll3/i;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Ll3/i;->l:Ll3/i;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    invoke-static {v0}, Lv2/m;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ll3/m;->g:Ljava/util/List;

    new-instance v2, Ll3/m$a;

    invoke-direct {v2, v5}, Ll3/m$a;-><init>(Z)V

    new-array v4, v3, [Ll3/i;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ll3/i;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ll3/i;

    invoke-virtual {v2, v1}, Ll3/m$a;->c([Ll3/i;)Ll3/m$a;

    move-result-object v1

    new-array v2, v7, [Ll3/f0;

    sget-object v4, Ll3/f0;->d:Ll3/f0;

    aput-object v4, v2, v3

    sget-object v6, Ll3/f0;->e:Ll3/f0;

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Ll3/m$a;->f([Ll3/f0;)Ll3/m$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Ll3/m$a;->d(Z)Ll3/m$a;

    move-result-object v1

    invoke-virtual {v1}, Ll3/m$a;->a()Ll3/m;

    move-result-object v1

    sput-object v1, Ll3/m;->h:Ll3/m;

    new-instance v1, Ll3/m$a;

    invoke-direct {v1, v5}, Ll3/m$a;-><init>(Z)V

    new-array v2, v3, [Ll3/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ll3/i;

    array-length v8, v2

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ll3/i;

    invoke-virtual {v1, v2}, Ll3/m$a;->c([Ll3/i;)Ll3/m$a;

    move-result-object v1

    new-array v2, v7, [Ll3/f0;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Ll3/m$a;->f([Ll3/f0;)Ll3/m$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Ll3/m$a;->d(Z)Ll3/m$a;

    move-result-object v1

    invoke-virtual {v1}, Ll3/m$a;->a()Ll3/m;

    move-result-object v1

    sput-object v1, Ll3/m;->i:Ll3/m;

    new-instance v1, Ll3/m$a;

    invoke-direct {v1, v5}, Ll3/m$a;-><init>(Z)V

    new-array v2, v3, [Ll3/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll3/i;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll3/i;

    invoke-virtual {v1, v0}, Ll3/m$a;->c([Ll3/i;)Ll3/m$a;

    move-result-object v0

    new-array v1, v11, [Ll3/f0;

    aput-object v4, v1, v3

    aput-object v6, v1, v5

    sget-object v2, Ll3/f0;->f:Ll3/f0;

    aput-object v2, v1, v7

    sget-object v2, Ll3/f0;->g:Ll3/f0;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Ll3/m$a;->f([Ll3/f0;)Ll3/m$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Ll3/m$a;->d(Z)Ll3/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/m$a;->a()Ll3/m;

    move-result-object v0

    sput-object v0, Ll3/m;->j:Ll3/m;

    new-instance v0, Ll3/m$a;

    invoke-direct {v0, v3}, Ll3/m$a;-><init>(Z)V

    invoke-virtual {v0}, Ll3/m$a;->a()Ll3/m;

    move-result-object v0

    sput-object v0, Ll3/m;->k:Ll3/m;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/m;->a:Z

    iput-boolean p2, p0, Ll3/m;->b:Z

    iput-object p3, p0, Ll3/m;->c:[Ljava/lang/String;

    iput-object p4, p0, Ll3/m;->d:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Ll3/m;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/m;->d:[Ljava/lang/String;

    return-object p0
.end method

.method private final g(Ljavax/net/ssl/SSLSocket;Z)Ll3/m;
    .locals 4

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lm3/c;->c(Ll3/m;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ll3/m;->d:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getEnabledProtocols(...)"

    invoke-static {v1, v2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Ll3/m;->d:[Ljava/lang/String;

    invoke-static {}, Lx2/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lm3/p;->x([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    sget-object v2, Ll3/i;->b:Ll3/i$b;

    invoke-virtual {v2}, Ll3/i$b;->c()Ljava/util/Comparator;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {p1, v3, v2}, Lm3/p;->p([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    if-eq v2, p2, :cond_1

    aget-object p1, p1, v2

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lm3/p;->g([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p1, Ll3/m$a;

    invoke-direct {p1, p0}, Ll3/m$a;-><init>(Ll3/m;)V

    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ll3/m$a;->b([Ljava/lang/String;)Ll3/m$a;

    move-result-object p1

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ll3/m$a;->e([Ljava/lang/String;)Ll3/m$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/m$a;->a()Ll3/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ll3/m;->g(Ljavax/net/ssl/SSLSocket;Z)Ll3/m;

    move-result-object p2

    invoke-virtual {p2}, Ll3/m;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Ll3/m;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ll3/m;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Ll3/m;->c:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    sget-object v5, Ll3/i;->b:Ll3/i$b;

    invoke-virtual {v5, v4}, Ll3/i$b;->b(Ljava/lang/String;)Ll3/i;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public final d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/m;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const-string v0, "socket"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll3/m;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ll3/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lx2/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lm3/p;->o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Ll3/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ll3/i;->b:Ll3/i$b;

    invoke-virtual {v2}, Ll3/i$b;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lm3/p;->o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ll3/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-boolean v2, p0, Ll3/m;->a:Z

    check-cast p1, Ll3/m;

    iget-boolean v3, p1, Ll3/m;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Ll3/m;->c:[Ljava/lang/String;

    iget-object v3, p1, Ll3/m;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Ll3/m;->d:[Ljava/lang/String;

    iget-object v3, p1, Ll3/m;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Ll3/m;->b:Z

    iget-boolean p1, p1, Ll3/m;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Ll3/m;->a:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Ll3/m;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Ll3/m;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20f

    iget-object v1, p0, Ll3/m;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll3/m;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ll3/m;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    :goto_1
    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/f0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    sget-object v5, Ll3/f0;->c:Ll3/f0$a;

    invoke-virtual {v5, v4}, Ll3/f0$a;->a(Ljava/lang/String;)Ll3/f0;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ll3/m;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll3/m;->c()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll3/m;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ll3/m;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

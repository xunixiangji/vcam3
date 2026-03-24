.class public final Lc4/g;
.super Lb4/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/g$a;
    }
.end annotation


# static fields
.field private static final h:Lc4/g$a;

.field private static final i:Lb4/y;


# instance fields
.field private final e:Ljava/lang/ClassLoader;

.field private final f:Lb4/j;

.field private final g:Lu2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc4/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc4/g$a;-><init>(Le3/d;)V

    sput-object v0, Lc4/g;->h:Lc4/g$a;

    sget-object v0, Lb4/y;->c:Lb4/y$a;

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lb4/y$a;->d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;

    move-result-object v0

    sput-object v0, Lc4/g;->i:Lb4/y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLb4/j;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemFileSystem"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb4/j;-><init>()V

    iput-object p1, p0, Lc4/g;->e:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lc4/g;->f:Lb4/j;

    new-instance p1, Lc4/g$b;

    invoke-direct {p1, p0}, Lc4/g$b;-><init>(Lc4/g;)V

    invoke-static {p1}, Lu2/d;->a(Ld3/a;)Lu2/c;

    move-result-object p1

    iput-object p1, p0, Lc4/g;->g:Lu2/c;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lc4/g;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ClassLoader;ZLb4/j;ILe3/d;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lb4/j;->b:Lb4/j;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc4/g;-><init>(Ljava/lang/ClassLoader;ZLb4/j;)V

    return-void
.end method

.method public static final synthetic c(Lc4/g;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lc4/g;->e:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static final synthetic d()Lc4/g$a;
    .locals 1

    sget-object v0, Lc4/g;->h:Lc4/g$a;

    return-object v0
.end method

.method public static final synthetic e(Lc4/g;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lc4/g;->h(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lb4/y;)Lb4/y;
    .locals 2

    sget-object v0, Lc4/g;->i:Lb4/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lb4/y;->j(Lb4/y;Z)Lb4/y;

    move-result-object p1

    return-object p1
.end method

.method private final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu2/g<",
            "Lb4/j;",
            "Lb4/y;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lc4/g;->g:Lu2/c;

    invoke-interface {v0}, Lu2/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final h(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lu2/g<",
            "Lb4/j;",
            "Lb4/y;",
            ">;>;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "getResources(...)"

    invoke-static {v0, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "list(...)"

    invoke-static {v0, v2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-static {v4}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lc4/g;->i(Ljava/net/URL;)Lu2/g;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, v2}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lc4/g;->j(Ljava/net/URL;)Lu2/g;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v3, v0}, Lv2/m;->G(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final i(Ljava/net/URL;)Lu2/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lu2/g<",
            "Lb4/j;",
            "Lb4/y;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lc4/g;->f:Lb4/j;

    sget-object v2, Lb4/y;->c:Lb4/y$a;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4, v1}, Lb4/y$a;->c(Lb4/y$a;Ljava/io/File;ZILjava/lang/Object;)Lb4/y;

    move-result-object p1

    invoke-static {v0, p1}, Lu2/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lu2/g;

    move-result-object p1

    return-object p1
.end method

.method private final j(Ljava/net/URL;)Lu2/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lu2/g<",
            "Lb4/j;",
            "Lb4/y;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jar:file:"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x0

    invoke-static {p1, v0, v6, v1, v7}, Lj3/l;->x(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "!"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lj3/l;->S(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object v7

    :cond_1
    sget-object v1, Lb4/y;->c:Lb4/y$a;

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x1

    invoke-static {v1, v2, v6, p1, v7}, Lb4/y$a;->c(Lb4/y$a;Ljava/io/File;ZILjava/lang/Object;)Lb4/y;

    move-result-object p1

    iget-object v0, p0, Lc4/g;->f:Lb4/j;

    sget-object v1, Lc4/g$c;->c:Lc4/g$c;

    invoke-static {p1, v0, v1}, Lc4/i;->d(Lb4/y;Lb4/j;Ld3/b;)Lb4/j0;

    move-result-object p1

    sget-object v0, Lc4/g;->i:Lb4/y;

    invoke-static {p1, v0}, Lu2/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lu2/g;

    move-result-object p1

    return-object p1
.end method

.method private final k(Lb4/y;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lc4/g;->f(Lb4/y;)Lb4/y;

    move-result-object p1

    sget-object v0, Lc4/g;->i:Lb4/y;

    invoke-virtual {p1, v0}, Lb4/y;->i(Lb4/y;)Lb4/y;

    move-result-object p1

    invoke-virtual {p1}, Lb4/y;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lb4/y;)Lb4/h;
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc4/g;->h:Lc4/g$a;

    invoke-static {v0, p1}, Lc4/g$a;->a(Lc4/g$a;Lb4/y;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lc4/g;->k(Lb4/y;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lc4/g;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu2/g;

    invoke-virtual {v3}, Lu2/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb4/j;

    invoke-virtual {v3}, Lu2/g;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb4/y;

    :try_start_0
    invoke-virtual {v3, v0}, Lb4/y;->k(Ljava/lang/String;)Lb4/y;

    move-result-object v3

    invoke-virtual {v4, v3}, Lb4/j;->a(Lb4/y;)Lb4/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lb4/y;)Lb4/g0;
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc4/g;->h:Lc4/g$a;

    invoke-static {v0, p1}, Lc4/g$a;->a(Lc4/g$a;Lb4/y;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    sget-object v0, Lc4/g;->i:Lb4/y;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lb4/y;->l(Lb4/y;Lb4/y;ZILjava/lang/Object;)Lb4/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb4/y;->i(Lb4/y;)Lb4/y;

    move-result-object v0

    iget-object v2, p0, Lc4/g;->e:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Lb4/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb4/t;->f(Ljava/io/InputStream;)Lb4/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

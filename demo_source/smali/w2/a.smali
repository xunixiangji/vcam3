.class public final Lw2/a;
.super Lv2/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/a$a;,
        Lw2/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lv2/c<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final h:Lw2/a$a;

.field private static final i:Lw2/a;


# instance fields
.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private final f:Lw2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final g:Lw2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw2/a$a;-><init>(Le3/d;)V

    sput-object v0, Lw2/a;->h:Lw2/a$a;

    new-instance v0, Lw2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw2/a;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw2/a;->e:Z

    sput-object v0, Lw2/a;->i:Lw2/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lw2/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    invoke-static {p1}, Lw2/b;->d(I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lw2/a;-><init>([Ljava/lang/Object;IIZLw2/a;Lw2/a;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IIZLw2/a;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "Lw2/a<",
            "TE;>;",
            "Lw2/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lv2/c;-><init>()V

    iput-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iput p2, p0, Lw2/a;->c:I

    iput p3, p0, Lw2/a;->d:I

    iput-boolean p4, p0, Lw2/a;->e:Z

    iput-object p5, p0, Lw2/a;->f:Lw2/a;

    iput-object p6, p0, Lw2/a;->g:Lw2/a;

    if-eqz p5, :cond_0

    iget p1, p5, Ljava/util/AbstractList;->modCount:I

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lw2/a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw2/a;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic d(Lw2/a;)I
    .locals 0

    iget p0, p0, Lw2/a;->d:I

    return p0
.end method

.method public static final synthetic e(Lw2/a;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static final synthetic f(Lw2/a;)I
    .locals 0

    iget p0, p0, Lw2/a;->c:I

    return p0
.end method

.method private final g(ILjava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->q()V

    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p2, p3}, Lw2/a;->g(ILjava/util/Collection;I)V

    iget-object p1, p0, Lw2/a;->f:Lw2/a;

    iget-object p1, p1, Lw2/a;->b:[Ljava/lang/Object;

    iput-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget p1, p0, Lw2/a;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lw2/a;->d:I

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p3}, Lw2/a;->o(II)V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lw2/a;->b:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final h(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->q()V

    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p2}, Lw2/a;->h(ILjava/lang/Object;)V

    iget-object p1, p0, Lw2/a;->f:Lw2/a;

    iget-object p1, p1, Lw2/a;->b:[Ljava/lang/Object;

    iput-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget p1, p0, Lw2/a;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lw2/a;->d:I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lw2/a;->o(II)V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method private final j()V
    .locals 2

    iget-object v0, p0, Lw2/a;->g:Lw2/a;

    if-eqz v0, :cond_1

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final k()V
    .locals 1

    invoke-direct {p0}, Lw2/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final l(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    invoke-static {v0, v1, v2, p1}, Lw2/b;->a([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method private final m(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    sget-object v1, Lv2/b;->b:Lv2/b$a;

    array-length v0, v0

    invoke-virtual {v1, v0, p1}, Lv2/b$a;->e(II)I

    move-result p1

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lw2/b;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method private final n(I)V
    .locals 1

    iget v0, p0, Lw2/a;->d:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lw2/a;->m(I)V

    return-void
.end method

.method private final o(II)V
    .locals 3

    invoke-direct {p0, p2}, Lw2/a;->n(I)V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    add-int/2addr v1, v2

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lv2/f;->e([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget p1, p0, Lw2/a;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lw2/a;->d:I

    return-void
.end method

.method private final p()Z
    .locals 1

    iget-boolean v0, p0, Lw2/a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lw2/a;->g:Lw2/a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lw2/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final q()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method private final r(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->q()V

    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lw2/a;->r(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lw2/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw2/a;->d:I

    return-object p1

    :cond_0
    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lw2/a;->c:I

    iget v4, p0, Lw2/a;->d:I

    add-int/2addr v3, v4

    invoke-static {v0, v0, p1, v2, v3}, Lv2/f;->e([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v0, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lw2/b;->f([Ljava/lang/Object;I)V

    iget p1, p0, Lw2/a;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lw2/a;->d:I

    return-object v1
.end method

.method private final s(II)V
    .locals 3

    if-lez p2, :cond_0

    invoke-direct {p0}, Lw2/a;->q()V

    :cond_0
    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2}, Lw2/a;->s(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lw2/a;->d:I

    invoke-static {v0, v0, p1, v1, v2}, Lv2/f;->e([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v0, p0, Lw2/a;->d:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lw2/b;->g([Ljava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lw2/a;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lw2/a;->d:I

    return-void
.end method

.method private final t(IILjava/util/Collection;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p2, p3, p4}, Lw2/a;->t(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lw2/a;->b:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1

    iget-object v2, p0, Lw2/a;->b:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p2, v1

    iget-object p4, p0, Lw2/a;->b:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lw2/a;->d:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lv2/f;->e([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget p2, p0, Lw2/a;->d:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lw2/b;->g([Ljava/lang/Object;II)V

    move p1, p3

    :goto_1
    if-lez p1, :cond_3

    invoke-direct {p0}, Lw2/a;->q()V

    :cond_3
    iget p2, p0, Lw2/a;->d:I

    sub-int/2addr p2, p1

    iput p2, p0, Lw2/a;->d:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->d:I

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->c(II)V

    iget v0, p0, Lw2/a;->c:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lw2/a;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->c:I

    iget v1, p0, Lw2/a;->d:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lw2/a;->h(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->c(II)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lw2/a;->c:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, v0}, Lw2/a;->g(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, p1, v0}, Lw2/a;->g(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->b(II)V

    iget v0, p0, Lw2/a;->c:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lw2/a;->r(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->c:I

    iget v1, p0, Lw2/a;->d:I

    invoke-direct {p0, v0, v1}, Lw2/a;->s(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lw2/a;->j()V

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lw2/a;->l(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->b(II)V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    invoke-direct {p0}, Lw2/a;->j()V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    invoke-static {v0, v1, v2}, Lw2/b;->b([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lw2/a;->f:Lw2/a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lw2/a;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/a;->e:Z

    iget v0, p0, Lw2/a;->d:I

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lw2/a;->i:Lw2/a;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-direct {p0}, Lw2/a;->j()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lw2/a;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lw2/a;->c:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw2/a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lw2/a;->c:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw2/a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->c(II)V

    new-instance v0, Lw2/a$b;

    invoke-direct {v0, p0, p1}, Lw2/a$b;-><init>(Lw2/a;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    invoke-virtual {p0, p1}, Lw2/a;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lv2/c;->remove(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->c:I

    iget v1, p0, Lw2/a;->d:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lw2/a;->t(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    iget v0, p0, Lw2/a;->c:I

    iget v1, p0, Lw2/a;->d:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lw2/a;->t(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a;->k()V

    invoke-direct {p0}, Lw2/a;->j()V

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->b(II)V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    return-object v2
.end method

.method public subList(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lw2/a;->d:I

    invoke-virtual {v0, p1, p2, v1}, Lv2/b$a;->d(III)V

    new-instance v0, Lw2/a;

    iget-object v3, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    add-int v4, v1, p1

    sub-int v5, p2, p1

    iget-boolean v6, p0, Lw2/a;->e:Z

    iget-object p1, p0, Lw2/a;->g:Lw2/a;

    if-nez p1, :cond_0

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lw2/a;-><init>([Ljava/lang/Object;IIZLw2/a;Lw2/a;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lw2/a;->j()V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lv2/f;->i([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw2/a;->j()V

    array-length v0, p1

    iget v1, p0, Lw2/a;->d:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lw2/a;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lw2/a;->c:I

    add-int/2addr v1, v3

    invoke-static {v0, p1, v2, v3, v1}, Lv2/f;->e([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget v0, p0, Lw2/a;->d:I

    invoke-static {v0, p1}, Lv2/m;->e(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lw2/a;->j()V

    iget-object v0, p0, Lw2/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lw2/a;->c:I

    iget v2, p0, Lw2/a;->d:I

    invoke-static {v0, v1, v2, p0}, Lw2/b;->c([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

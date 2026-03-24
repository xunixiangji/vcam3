.class final Lw2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lf3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lf3/a;"
    }
.end annotation


# instance fields
.field private final b:Lw2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lw2/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/a$b;->b:Lw2/a;

    iput p2, p0, Lw2/a$b;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lw2/a$b;->d:I

    invoke-static {p1}, Lw2/a;->e(Lw2/a;)I

    move-result p1

    iput p1, p0, Lw2/a$b;->e:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v0}, Lw2/a;->e(Lw2/a;)I

    move-result v0

    iget v1, p0, Lw2/a$b;->e:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a$b;->a()V

    iget-object v0, p0, Lw2/a$b;->b:Lw2/a;

    iget v1, p0, Lw2/a$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw2/a$b;->c:I

    invoke-virtual {v0, v1, p1}, Lw2/a;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lw2/a$b;->d:I

    iget-object p1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {p1}, Lw2/a;->e(Lw2/a;)I

    move-result p1

    iput p1, p0, Lw2/a$b;->e:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lw2/a$b;->c:I

    iget-object v1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v1}, Lw2/a;->d(Lw2/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lw2/a$b;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a$b;->a()V

    iget v0, p0, Lw2/a$b;->c:I

    iget-object v1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v1}, Lw2/a;->d(Lw2/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lw2/a$b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lw2/a$b;->c:I

    iput v0, p0, Lw2/a$b;->d:I

    iget-object v0, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v0}, Lw2/a;->c(Lw2/a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v1}, Lw2/a;->f(Lw2/a;)I

    move-result v1

    iget v2, p0, Lw2/a$b;->d:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lw2/a$b;->c:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a$b;->a()V

    iget v0, p0, Lw2/a$b;->c:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw2/a$b;->c:I

    iput v0, p0, Lw2/a$b;->d:I

    iget-object v0, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v0}, Lw2/a;->c(Lw2/a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v1}, Lw2/a;->f(Lw2/a;)I

    move-result v1

    iget v2, p0, Lw2/a$b;->d:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lw2/a$b;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    invoke-direct {p0}, Lw2/a$b;->a()V

    iget v0, p0, Lw2/a$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lw2/a$b;->b:Lw2/a;

    invoke-virtual {v2, v0}, Lv2/c;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lw2/a$b;->d:I

    iput v0, p0, Lw2/a$b;->c:I

    iput v1, p0, Lw2/a$b;->d:I

    iget-object v0, p0, Lw2/a$b;->b:Lw2/a;

    invoke-static {v0}, Lw2/a;->e(Lw2/a;)I

    move-result v0

    iput v0, p0, Lw2/a$b;->e:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lw2/a$b;->a()V

    iget v0, p0, Lw2/a$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lw2/a$b;->b:Lw2/a;

    invoke-virtual {v1, v0, p1}, Lw2/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

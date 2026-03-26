.class public final Lb4/w;
.super Lv2/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/b<",
        "Lb4/g;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final e:Lb4/w$a;


# instance fields
.field private final c:[Lb4/g;

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb4/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb4/w$a;-><init>(Le3/d;)V

    sput-object v0, Lb4/w;->e:Lb4/w$a;

    return-void
.end method

.method private constructor <init>([Lb4/g;[I)V
    .locals 0

    invoke-direct {p0}, Lv2/b;-><init>()V

    iput-object p1, p0, Lb4/w;->c:[Lb4/g;

    iput-object p2, p0, Lb4/w;->d:[I

    return-void
.end method

.method public synthetic constructor <init>([Lb4/g;[ILe3/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb4/w;-><init>([Lb4/g;[I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb4/w;->c:[Lb4/g;

    array-length v0, v0

    return v0
.end method

.method public bridge b(Lb4/g;)Z
    .locals 0

    invoke-super {p0, p1}, Lv2/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Lb4/g;
    .locals 1

    iget-object v0, p0, Lb4/w;->c:[Lb4/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb4/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb4/g;

    invoke-virtual {p0, p1}, Lb4/w;->b(Lb4/g;)Z

    move-result p1

    return p1
.end method

.method public final d()[Lb4/g;
    .locals 1

    iget-object v0, p0, Lb4/w;->c:[Lb4/g;

    return-object v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lb4/w;->d:[I

    return-object v0
.end method

.method public bridge f(Lb4/g;)I
    .locals 0

    invoke-super {p0, p1}, Lv2/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge g(Lb4/g;)I
    .locals 0

    invoke-super {p0, p1}, Lv2/b;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb4/w;->c(I)Lb4/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lb4/g;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lb4/g;

    invoke-virtual {p0, p1}, Lb4/w;->f(Lb4/g;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lb4/g;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lb4/g;

    invoke-virtual {p0, p1}, Lb4/w;->g(Lb4/g;)I

    move-result p1

    return p1
.end method

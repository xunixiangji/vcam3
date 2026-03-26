.class public Lp2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/h;


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lg1/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lg1/a;",
            ">;",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/k;->a:Ljava/util/Collection;

    iput-object p2, p0, Lp2/k;->b:Ljava/util/Map;

    iput-object p3, p0, Lp2/k;->c:Ljava/lang/String;

    iput p4, p0, Lp2/k;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lp2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lg1/e;",
            "*>;)",
            "Lp2/g;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg1/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lp2/k;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lp2/k;->a:Ljava/util/Collection;

    if-eqz p1, :cond_1

    sget-object v1, Lg1/e;->e:Lg1/e;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lp2/k;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v1, Lg1/e;->g:Lg1/e;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p1, Lg1/k;

    invoke-direct {p1}, Lg1/k;-><init>()V

    invoke-virtual {p1, v0}, Lg1/k;->f(Ljava/util/Map;)V

    iget v0, p0, Lp2/k;->d:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance v0, Lp2/g;

    invoke-direct {v0, p1}, Lp2/g;-><init>(Lg1/o;)V

    return-object v0

    :cond_3
    new-instance v0, Lp2/m;

    invoke-direct {v0, p1}, Lp2/m;-><init>(Lg1/o;)V

    return-object v0

    :cond_4
    new-instance v0, Lp2/l;

    invoke-direct {v0, p1}, Lp2/l;-><init>(Lg1/o;)V

    return-object v0

    :cond_5
    new-instance v0, Lp2/g;

    invoke-direct {v0, p1}, Lp2/g;-><init>(Lg1/o;)V

    return-object v0
.end method

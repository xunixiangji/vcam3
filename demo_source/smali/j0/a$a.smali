.class public final Lj0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/a$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/a$a;->b:Ljava/util/List;

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj0/a$a;->b:Ljava/util/List;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj0/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj0/a$a;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lj0/a$a;
    .locals 2

    iget-object v0, p0, Lj0/a$a;->a:Ljava/util/List;

    new-instance v1, Lj0/a$b;

    invoke-direct {v1, p1}, Lj0/a$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lj0/a;
    .locals 3

    new-instance v0, Lj0/a;

    invoke-direct {p0}, Lj0/a$a;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lj0/a$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj0/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

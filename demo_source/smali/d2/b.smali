.class public final Ld2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln1/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lg1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln1/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/b;",
            "Ljava/util/List<",
            "[",
            "Lg1/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/b;->a:Ln1/b;

    iput-object p2, p0, Ld2/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ln1/b;
    .locals 1

    iget-object v0, p0, Ld2/b;->a:Ln1/b;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lg1/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld2/b;->b:Ljava/util/List;

    return-object v0
.end method

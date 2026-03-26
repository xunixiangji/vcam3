.class Lt2/m;
.super Ls2/b$e;
.source "SourceFile"


# static fields
.field static d:Lt2/m;

.field static e:Lt2/m;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt2/m;

    invoke-direct {v0}, Lt2/m;-><init>()V

    sput-object v0, Lt2/m;->d:Lt2/m;

    new-instance v0, Lt2/m;

    invoke-direct {v0}, Lt2/m;-><init>()V

    sput-object v0, Lt2/m;->e:Lt2/m;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls2/b$e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt2/m;->c:I

    return-void
.end method

.method public static synthetic d(Lt2/m;Ls2/b$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lt2/m;->f(Ls2/b$f;)V

    return-void
.end method

.method private synthetic f(Ls2/b$f;)V
    .locals 0

    invoke-interface {p1, p0}, Ls2/b$f;->a(Ls2/b$e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lt2/m;->c:I

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt2/m;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt2/m;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method e(Ljava/util/concurrent/Executor;Ls2/b$f;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Ls2/b$f;->a(Ls2/b$e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lt2/l;

    invoke-direct {v0, p0, p2}, Lt2/l;-><init>(Lt2/m;Ls2/b$f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

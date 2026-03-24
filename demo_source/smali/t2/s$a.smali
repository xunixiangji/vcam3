.class Lt2/s$a;
.super Lt2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt2/s<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lt2/s;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt2/s;->b(Z)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt2/s$a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

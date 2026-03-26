.class public final synthetic Lt2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt2/m;

.field public final synthetic c:Ls2/b$f;


# direct methods
.method public synthetic constructor <init>(Lt2/m;Ls2/b$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/l;->b:Lt2/m;

    iput-object p2, p0, Lt2/l;->c:Ls2/b$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt2/l;->b:Lt2/m;

    iget-object v1, p0, Lt2/l;->c:Ls2/b$f;

    invoke-static {v0, v1}, Lt2/m;->d(Lt2/m;Ls2/b$f;)V

    return-void
.end method

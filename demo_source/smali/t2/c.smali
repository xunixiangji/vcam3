.class public final synthetic Lt2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt2/d;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Ls2/b$f;


# direct methods
.method public synthetic constructor <init>(Lt2/d;Ljava/util/concurrent/Executor;Ls2/b$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/c;->b:Lt2/d;

    iput-object p2, p0, Lt2/c;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lt2/c;->d:Ls2/b$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt2/c;->b:Lt2/d;

    iget-object v1, p0, Lt2/c;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lt2/c;->d:Ls2/b$f;

    invoke-static {v0, v1, v2}, Lt2/d;->L(Lt2/d;Ljava/util/concurrent/Executor;Ls2/b$f;)V

    return-void
.end method

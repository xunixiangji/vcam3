.class public final synthetic Lt2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ls2/b$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ls2/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/e;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lt2/e;->c:Ls2/b$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt2/e;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lt2/e;->c:Ls2/b$b;

    invoke-static {v0, v1}, Lt2/g;->b(Ljava/util/concurrent/Executor;Ls2/b$b;)V

    return-void
.end method

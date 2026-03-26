.class public final synthetic Lt2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls2/b$b;


# instance fields
.field public final synthetic a:Lt2/k;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ls2/b$f;


# direct methods
.method public synthetic constructor <init>(Lt2/k;Ljava/util/concurrent/Executor;Ls2/b$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/i;->a:Lt2/k;

    iput-object p2, p0, Lt2/i;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lt2/i;->c:Ls2/b$f;

    return-void
.end method


# virtual methods
.method public final a(Ls2/b;)V
    .locals 3

    iget-object v0, p0, Lt2/i;->a:Lt2/k;

    iget-object v1, p0, Lt2/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lt2/i;->c:Ls2/b$f;

    invoke-static {v0, v1, v2, p1}, Lt2/k;->Q(Lt2/k;Ljava/util/concurrent/Executor;Ls2/b$f;Ls2/b;)V

    return-void
.end method

.class public final synthetic Lt2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lt2/p;


# direct methods
.method public synthetic constructor <init>(Lt2/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/o;->a:Lt2/p;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt2/o;->a:Lt2/p;

    invoke-static {v0}, Lt2/p;->O(Lt2/p;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

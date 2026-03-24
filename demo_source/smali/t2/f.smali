.class public final synthetic Lt2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ls2/b$b;

.field public final synthetic c:Ls2/b;


# direct methods
.method public synthetic constructor <init>(Ls2/b$b;Ls2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/f;->b:Ls2/b$b;

    iput-object p2, p0, Lt2/f;->c:Ls2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt2/f;->b:Ls2/b$b;

    iget-object v1, p0, Lt2/f;->c:Ls2/b;

    invoke-static {v0, v1}, Lt2/g;->a(Ls2/b$b;Ls2/b;)V

    return-void
.end method

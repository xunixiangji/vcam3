.class public final Lm3/e;
.super Ll3/d0;
.source "SourceFile"

# interfaces
.implements Lb4/g0;


# instance fields
.field private final c:Ll3/x;

.field private final d:J


# direct methods
.method public constructor <init>(Ll3/x;J)V
    .locals 0

    invoke-direct {p0}, Ll3/d0;-><init>()V

    iput-object p1, p0, Lm3/e;->c:Ll3/x;

    iput-wide p2, p0, Lm3/e;->d:J

    return-void
.end method


# virtual methods
.method public J()J
    .locals 2

    iget-wide v0, p0, Lm3/e;->d:J

    return-wide v0
.end method

.method public K()Ll3/x;
    .locals 1

    iget-object v0, p0, Lm3/e;->c:Ll3/x;

    return-object v0
.end method

.method public L()Lb4/f;
    .locals 1

    invoke-static {p0}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb4/h0;
    .locals 1

    sget-object v0, Lb4/h0;->e:Lb4/h0;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public u(Lb4/d;J)J
    .locals 0

    const-string p2, "sink"

    invoke-static {p1, p2}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public final Lq3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/n$b;


# instance fields
.field private final a:Lq3/i;

.field private final b:Z


# direct methods
.method public constructor <init>(Lq3/i;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/l;->a:Lq3/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq3/l;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lq3/n$b;
    .locals 1

    invoke-virtual {p0}, Lq3/l;->j()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lq3/n$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lq3/l;->b:Z

    return v0
.end method

.method public c()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected cancel"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cancel()V
    .locals 0

    invoke-virtual {p0}, Lq3/l;->c()Ljava/lang/Void;

    return-void
.end method

.method public bridge synthetic d()Lq3/n$a;
    .locals 1

    invoke-virtual {p0}, Lq3/l;->g()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lq3/n$a;

    return-object v0
.end method

.method public bridge synthetic e()Lq3/n$a;
    .locals 1

    invoke-virtual {p0}, Lq3/l;->h()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lq3/n$a;

    return-object v0
.end method

.method public f()Lq3/i;
    .locals 1

    iget-object v0, p0, Lq3/l;->a:Lq3/i;

    return-object v0
.end method

.method public g()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lq3/i;
    .locals 1

    iget-object v0, p0, Lq3/l;->a:Lq3/i;

    return-object v0
.end method

.method public j()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected retry"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

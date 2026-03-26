.class public final Lq3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/n$b;


# instance fields
.field private final a:Lq3/n$a;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq3/n$a;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lq3/n$a;-><init>(Lq3/n$b;Lq3/n$b;Ljava/lang/Throwable;ILe3/d;)V

    iput-object v0, p0, Lq3/e;->a:Lq3/n$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lq3/n$b;
    .locals 1

    invoke-virtual {p0}, Lq3/e;->i()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lq3/n$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lq3/e;->b:Z

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

    invoke-virtual {p0}, Lq3/e;->c()Ljava/lang/Void;

    return-void
.end method

.method public d()Lq3/n$a;
    .locals 1

    iget-object v0, p0, Lq3/e;->a:Lq3/n$a;

    return-object v0
.end method

.method public e()Lq3/n$a;
    .locals 1

    iget-object v0, p0, Lq3/e;->a:Lq3/n$a;

    return-object v0
.end method

.method public bridge synthetic f()Lq3/i;
    .locals 1

    invoke-virtual {p0}, Lq3/e;->h()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lq3/i;

    return-object v0
.end method

.method public final g()Lq3/n$a;
    .locals 1

    iget-object v0, p0, Lq3/e;->a:Lq3/n$a;

    return-object v0
.end method

.method public h()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected retry"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

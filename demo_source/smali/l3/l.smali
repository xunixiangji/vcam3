.class public final Ll3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq3/j;


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Ll3/l;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lp3/d;->m:Lp3/d;

    sget-object v0, Ll3/k;->a:Ll3/k$b;

    invoke-virtual {v0}, Ll3/k$b;->a()Ll3/k;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Ll3/l;-><init>(IJLjava/util/concurrent/TimeUnit;Lp3/d;Ll3/k;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lp3/d;Ll3/k;)V
    .locals 8

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskRunner"

    invoke-static {p5, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p6, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq3/j;

    move-object v1, v0

    move-object v2, p5

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lq3/j;-><init>(Lp3/d;IJLjava/util/concurrent/TimeUnit;Ll3/k;)V

    invoke-direct {p0, v0}, Ll3/l;-><init>(Lq3/j;)V

    return-void
.end method

.method public constructor <init>(Lq3/j;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/l;->a:Lq3/j;

    return-void
.end method


# virtual methods
.method public final a()Ll3/k;
    .locals 1

    iget-object v0, p0, Ll3/l;->a:Lq3/j;

    invoke-virtual {v0}, Lq3/j;->d()Ll3/k;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lq3/j;
    .locals 1

    iget-object v0, p0, Ll3/l;->a:Lq3/j;

    return-object v0
.end method

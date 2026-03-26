.class public final Lq3/j$b;
.super Lp3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/j;-><init>(Lp3/d;IJLjava/util/concurrent/TimeUnit;Ll3/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lq3/j;


# direct methods
.method constructor <init>(Lq3/j;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lq3/j$b;->e:Lq3/j;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lp3/a;-><init>(Ljava/lang/String;ZILe3/d;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lq3/j$b;->e:Lq3/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lq3/j;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

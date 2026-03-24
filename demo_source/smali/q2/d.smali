.class public final synthetic Lq2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lq2/g;

.field public final synthetic c:Lq2/p;


# direct methods
.method public synthetic constructor <init>(Lq2/g;Lq2/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/d;->b:Lq2/g;

    iput-object p2, p0, Lq2/d;->c:Lq2/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lq2/d;->b:Lq2/g;

    iget-object v1, p0, Lq2/d;->c:Lq2/p;

    invoke-static {v0, v1}, Lq2/g;->a(Lq2/g;Lq2/p;)V

    return-void
.end method

.class public final synthetic Lq2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lq2/g;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lq2/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/f;->b:Lq2/g;

    iput-boolean p2, p0, Lq2/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lq2/f;->b:Lq2/g;

    iget-boolean v1, p0, Lq2/f;->c:Z

    invoke-static {v0, v1}, Lq2/g;->b(Lq2/g;Z)V

    return-void
.end method

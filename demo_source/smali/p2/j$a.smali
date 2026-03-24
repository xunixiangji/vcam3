.class Lp2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lp2/j;


# direct methods
.method constructor <init>(Lp2/j;)V
    .locals 0

    iput-object p1, p0, Lp2/j$a;->b:Lp2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Ll1/k;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp2/j$a;->b:Lp2/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp2/r;

    invoke-static {v0, p1}, Lp2/j;->a(Lp2/j;Lp2/r;)V

    goto :goto_0

    :cond_0
    sget p1, Ll1/k;->i:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lp2/j$a;->b:Lp2/j;

    invoke-static {p1}, Lp2/j;->b(Lp2/j;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

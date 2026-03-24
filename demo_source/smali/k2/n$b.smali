.class Lk2/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Lk2/m;

.field final synthetic c:Lk2/n;


# direct methods
.method private constructor <init>(Lk2/n;Lk2/m;)V
    .locals 0

    iput-object p1, p0, Lk2/n$b;->c:Lk2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk2/n$b;->b:Lk2/m;

    return-void
.end method

.method synthetic constructor <init>(Lk2/n;Lk2/m;Lk2/n$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk2/n$b;-><init>(Lk2/n;Lk2/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lk2/n$b;->c:Lk2/n;

    invoke-static {v0}, Lk2/n;->c(Lk2/n;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/n$b;->c:Lk2/n;

    invoke-static {v0}, Lk2/n;->c(Lk2/n;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ll2/a;->cancel()V

    :cond_1
    iget-object v0, p0, Lk2/n$b;->c:Lk2/n;

    iget-object v1, p0, Lk2/n$b;->b:Lk2/m;

    iget-object v1, v1, Lk2/m;->d:Ll2/d;

    invoke-virtual {v0, v1}, Lk2/n;->f(Ll2/d;)Ll2/a;

    move-result-object v0

    iget-object v1, p0, Lk2/n$b;->c:Lk2/n;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lk2/n;->d(Lk2/n;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lk2/n$b;->b:Lk2/m;

    iget v1, v1, Lk2/m;->b:I

    invoke-interface {v0, v1}, Ll2/a;->setDuration(I)V

    iget-object v1, p0, Lk2/n$b;->b:Lk2/m;

    iget-object v1, v1, Lk2/m;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ll2/a;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ll2/a;->show()V

    return-void
.end method

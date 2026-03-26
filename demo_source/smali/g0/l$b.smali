.class Lg0/l$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/l;->T(Landroid/animation/Animator;Lk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk/a;

.field final synthetic b:Lg0/l;


# direct methods
.method constructor <init>(Lg0/l;Lk/a;)V
    .locals 0

    iput-object p1, p0, Lg0/l$b;->b:Lg0/l;

    iput-object p2, p0, Lg0/l$b;->a:Lk/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lg0/l$b;->a:Lk/a;

    invoke-virtual {v0, p1}, Lk/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg0/l$b;->b:Lg0/l;

    iget-object v0, v0, Lg0/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lg0/l$b;->b:Lg0/l;

    iget-object v0, v0, Lg0/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

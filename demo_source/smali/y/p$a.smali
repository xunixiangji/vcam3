.class final Ly/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly/p;->l0(Landroid/view/View;Ly/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly/n;


# direct methods
.method constructor <init>(Ly/n;)V
    .locals 0

    iput-object p1, p0, Ly/p$a;->a:Ly/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, Ly/x;->h(Landroid/view/WindowInsets;)Ly/x;

    move-result-object p2

    iget-object v0, p0, Ly/p$a;->a:Ly/n;

    invoke-interface {v0, p1, p2}, Ly/n;->a(Landroid/view/View;Ly/x;)Ly/x;

    move-result-object p1

    invoke-virtual {p1}, Ly/x;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

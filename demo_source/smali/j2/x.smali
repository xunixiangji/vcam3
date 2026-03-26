.class public final Lj2/x;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lj2/h;

.field private f:Lj2/e;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj2/x;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/util/ArrayList;Lj2/e;Lj2/h;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lj2/e;",
            "Lj2/h;",
            ")V"
        }
    .end annotation

    new-instance v0, Lj2/x;

    invoke-direct {v0}, Lj2/x;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Lj2/x;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "request_code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "request_permissions"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {v0, p1}, Lj2/x;->h(Z)V

    invoke-virtual {v0, p3}, Lj2/x;->f(Lj2/h;)V

    invoke-virtual {v0, p2}, Lj2/x;->g(Lj2/e;)V

    invoke-virtual {v0, p0}, Lj2/x;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public d()V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "request_permissions"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lj2/c;->l()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lj2/j;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    :goto_1
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v4}, Lj2/x;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_4
    invoke-static {}, Lj2/c;->f()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_5

    const-string v3, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v1, v3}, Lj2/a0;->f(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1, v4, v2}, Lj2/x;->i(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :cond_5
    invoke-static {}, Lj2/c;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_6

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v3}, Lj2/a0;->f(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1, v4, v2}, Lj2/x;->i(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :cond_6
    invoke-static {}, Lj2/c;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v1, v3}, Lj2/a0;->f(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v4}, Lj2/a0;->f(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1, v4, v2}, Lj2/x;->i(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public e()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "request_permissions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lj2/j;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v5}, Lj2/j;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lj2/c;->d()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v5, v6}, Lj2/a0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    new-array v4, v2, [Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v4}, Lj2/a0;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v4}, Lj2/a0;->m(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "request_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lj2/c0;->d(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    move v4, v2

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lj2/x;->d()V

    :cond_6
    :goto_1
    return-void
.end method

.method public f(Lj2/h;)V
    .locals 0

    iput-object p1, p0, Lj2/x;->e:Lj2/h;

    return-void
.end method

.method public g(Lj2/e;)V
    .locals 0

    iput-object p1, p0, Lj2/x;->f:Lj2/e;

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/x;->d:Z

    return-void
.end method

.method public i(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Lj2/x$a;

    invoke-direct {v6, p0}, Lj2/x$a;-><init>(Lj2/x;)V

    new-instance v7, Lj2/x$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj2/x$b;-><init>(Lj2/x;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-static {p1, p3, v6, v7}, Lj2/x;->c(Landroid/app/Activity;Ljava/util/ArrayList;Lj2/e;Lj2/h;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-boolean p2, p0, Lj2/x;->c:Z

    if-nez p2, :cond_2

    const-string p2, "request_code"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "request_permissions"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lj2/x;->c:Z

    invoke-static {p1, p0}, Lj2/a0;->t(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lj2/x;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lj2/a0;->r(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj2/x;->e:Lj2/h;

    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lj2/x;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10

    array-length v0, p2

    if-eqz v0, :cond_4

    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj2/x;->f:Lj2/e;

    if-eqz v1, :cond_4

    const-string v1, "request_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj2/x;->e:Lj2/h;

    const/4 v1, 0x0

    iput-object v1, p0, Lj2/x;->e:Lj2/h;

    iget-object v8, p0, Lj2/x;->f:Lj2/e;

    iput-object v1, p0, Lj2/x;->f:Lj2/e;

    invoke-static {v7, p2, p3}, Lj2/a0;->s(Landroid/app/Activity;[Ljava/lang/String;[I)V

    invoke-static {p2}, Lj2/a0;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    sget-object v1, Lj2/x;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lj2/x;->b(Landroid/app/Activity;)V

    invoke-static {p2, p3}, Lj2/j;->c(Ljava/util/List;[I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x0

    if-ne v1, v2, :cond_2

    const/4 v5, 0x1

    move-object v1, v8

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lj2/e;->c(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLj2/h;)V

    invoke-interface {v8, v7, p2, v9, v0}, Lj2/e;->a(Landroid/app/Activity;Ljava/util/List;ZLj2/h;)V

    return-void

    :cond_2
    invoke-static {p2, p3}, Lj2/j;->b(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lj2/j;->h(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v5

    move-object v1, v8

    move-object v2, v7

    move-object v3, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lj2/e;->b(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLj2/h;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lj2/e;->c(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLj2/h;)V

    :cond_3
    invoke-interface {v8, v7, p2, v9, v0}, Lj2/e;->a(Landroid/app/Activity;Ljava/util/List;ZLj2/h;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lj2/x;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj2/x;->b(Landroid/app/Activity;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lj2/x;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/x;->b:Z

    invoke-virtual {p0}, Lj2/x;->e()V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lj2/x;->d()V

    return-void
.end method

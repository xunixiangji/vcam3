.class public Ln/a;
.super Lo/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/a$b;,
        Ln/a$a;
    }
.end annotation


# static fields
.field private static b:Ln/a$a;


# direct methods
.method public static e(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public static f()Ln/a$a;
    .locals 1

    sget-object v0, Ln/a;->b:Ln/a$a;

    return-object v0
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ln/b;->i(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static h(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Ln/a;->b:Ln/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Ln/a$a;->a(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Ln/a$b;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ln/a$b;

    invoke-interface {v0, p2}, Ln/a$b;->b(I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static i(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.class final Lj2/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lj2/c;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lj2/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj2/b0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj2/b0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj2/z;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {p0}, Lj2/a0;->k(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lj2/c0;->a(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lj2/a0;->l(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lj2/a0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lj2/a0;->k(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lj2/b0;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lj2/z;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lj2/b0;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {}, Lj2/b0;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lj2/z;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lj2/b0;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lj2/z;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lj2/b0;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lj2/z;->i(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {}, Lj2/b0;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lj2/z;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lj2/a0;->k(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lj2/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lj2/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    const-string v1, "OP_SYSTEM_ALERT_WINDOW"

    invoke-static {p0, v1, v0}, Lj2/a0;->d(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

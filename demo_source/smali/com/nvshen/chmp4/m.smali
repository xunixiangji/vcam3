.class public Lcom/nvshen/chmp4/m;
.super Landroidx/fragment/app/Fragment;


# static fields
.field public static b0:Ljava/lang/String; = "SettingsFragment"

.field public static c0:Ln2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/e<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field Z:Landroid/os/Handler;

.field a0:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nvshen/chmp4/m;->Z:Landroid/os/Handler;

    new-instance v0, Lcom/nvshen/chmp4/m$k;

    invoke-direct {v0, p0}, Lcom/nvshen/chmp4/m$k;-><init>(Lcom/nvshen/chmp4/m;)V

    iput-object v0, p0, Lcom/nvshen/chmp4/m;->a0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic o1(Lcom/nvshen/chmp4/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nvshen/chmp4/m;->v1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p1(Lcom/nvshen/chmp4/m;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nvshen/chmp4/m;->w1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static native q1(Landroid/content/Context;)Z
.end method

.method private synthetic v1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nvshen/chmp4/m;->C1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w1(Landroid/widget/TextView;)V
    .locals 7

    invoke-static {}, Lcom/nvshen/chmp4/d;->B()Lcom/nvshen/chmp4/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvshen/chmp4/d;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/high16 v3, -0x10000

    if-gtz v2, :cond_1

    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f100094

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->I(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/nvshen/chmp4/m;->b0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expiredTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/nvshen/chmp4/m;->b0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const v0, -0xff0100

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public static native y1(Landroid/app/Activity;)V
.end method

.method static native z1(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ln2/e$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ln2/e$a<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public native A1()V
.end method

.method public native B1()V
.end method

.method public native C1(Landroid/view/View;)V
.end method

.method public native d0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public native r1()V
.end method

.method public native s1()V
.end method

.method public native t1(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public native u1(Landroid/view/View;)V
.end method

.method public native x0()V
.end method

.method public native x1(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

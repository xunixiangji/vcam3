.class public Lcom/nvshen/chmp4/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvshen/chmp4/d$e;,
        Lcom/nvshen/chmp4/d$f;,
        Lcom/nvshen/chmp4/d$h;,
        Lcom/nvshen/chmp4/d$g;
    }
.end annotation


# static fields
.field private static q:Lcom/nvshen/chmp4/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nvshen/chmp4/d$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvshen/chmp4/d;->c:Landroid/content/Context;

    const/4 v2, -0x1

    iput v2, p0, Lcom/nvshen/chmp4/d;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nvshen/chmp4/d;->e:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/nvshen/chmp4/d;->f:I

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/nvshen/chmp4/d;->h:Landroid/app/ProgressDialog;

    iput v2, p0, Lcom/nvshen/chmp4/d;->i:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/nvshen/chmp4/d;->j:I

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->m:Ljava/util/HashMap;

    const-string v0, "https://oopo.top"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->n:[Ljava/lang/String;

    iput v2, p0, Lcom/nvshen/chmp4/d;->o:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->p:Ljava/util/HashMap;

    return-void
.end method

.method public static native B()Lcom/nvshen/chmp4/d;
.end method

.method private synthetic H(Lcom/nvshen/chmp4/d$f;ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    if-ne p3, v0, :cond_0

    const-string v0, "remain"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nvshen/chmp4/d;->d:I

    const-string v0, "now"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nvshen/chmp4/d;->f:I

    const-string v0, "token"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvshen/chmp4/d;->g:Ljava/lang/String;

    const-string v0, "ns"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nvshen/chmp4/d;->i:I

    const-string v0, "expiredTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nvshen/chmp4/d;->e:J

    invoke-direct {p0}, Lcom/nvshen/chmp4/d;->N()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/16 p3, 0x1f4

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    move p2, p3

    :cond_1
    invoke-interface {p1, p2}, Lcom/nvshen/chmp4/d$f;->a(I)V

    return-void
.end method

.method private static synthetic I(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static synthetic J(Ljava/lang/String;Lcom/nvshen/chmp4/d$g;)V
    .locals 0

    invoke-interface {p1}, Lcom/nvshen/chmp4/d$g;->a()V

    return-void
.end method

.method private synthetic K(Ls2/b$e;)V
    .locals 4

    invoke-virtual {p0}, Lcom/nvshen/chmp4/d;->a0()V

    invoke-virtual {p1}, Ls2/b$e;->a()I

    move-result v0

    invoke-virtual {p1}, Ls2/b$e;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "HOOK"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls2/b$e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls2/b$e;->a()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nvshen/chmp4/d;->c:Landroid/content/Context;

    const v0, 0x7f100089

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nvshen/chmp4/d;->Y(Ljava/lang/String;)V

    invoke-static {}, Lcom/nvshen/chmp4/k;->c()Lcom/nvshen/chmp4/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nvshen/chmp4/k;->b()Landroid/os/IBinder;

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nvshen/chmp4/d;->c:Landroid/content/Context;

    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nvshen/chmp4/d;->Y(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic L(Lcom/nvshen/chmp4/d$e;ILjava/lang/String;)V
    .locals 5

    const-string v0, "TAG"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    const-string v1, "now"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nvshen/chmp4/d;->f:I

    const-string v1, "token"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nvshen/chmp4/d;->g:Ljava/lang/String;

    const-string v1, "ns"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nvshen/chmp4/d;->i:I

    const-string v1, "expiredTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nvshen/chmp4/d;->e:J

    iget-object v1, p0, Lcom/nvshen/chmp4/d;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    const-string v1, "remain"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nvshen/chmp4/d;->d:I

    :cond_0
    invoke-direct {p0}, Lcom/nvshen/chmp4/d;->N()V

    goto :goto_1

    :cond_1
    const-string p2, "error"

    const-string p3, "unknow"

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p2

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move p2, v0

    :cond_2
    :goto_1
    invoke-interface {p1, p2, p3}, Lcom/nvshen/chmp4/d$e;->a(ILjava/lang/String;)V

    return-void
.end method

.method private native N()V
.end method

.method public static synthetic a(Lcom/nvshen/chmp4/d;Ls2/b$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nvshen/chmp4/d;->K(Ls2/b$e;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nvshen/chmp4/d;->I(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/nvshen/chmp4/d;Lcom/nvshen/chmp4/d$f;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nvshen/chmp4/d;->H(Lcom/nvshen/chmp4/d$f;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/nvshen/chmp4/d$g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nvshen/chmp4/d;->J(Ljava/lang/String;Lcom/nvshen/chmp4/d$g;)V

    return-void
.end method

.method public static synthetic e(Lcom/nvshen/chmp4/d;Lcom/nvshen/chmp4/d$e;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nvshen/chmp4/d;->L(Lcom/nvshen/chmp4/d$e;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native A()Ll3/y;
.end method

.method public native C()Ljava/lang/String;
.end method

.method public native D()I
.end method

.method public native E()Ljava/lang/String;
.end method

.method public native F()Ljava/lang/String;
.end method

.method public native G()Ljava/lang/String;
.end method

.method public native M()V
.end method

.method public native O(Ljava/lang/String;Ljava/lang/String;Lcom/nvshen/chmp4/d$e;)V
.end method

.method public native P(Ljava/lang/String;)V
.end method

.method public native Q()V
.end method

.method public native R(I)V
.end method

.method public native S(Landroid/content/Context;)V
.end method

.method public native T(Ljava/lang/String;)V
.end method

.method public native U(Ljava/lang/String;)V
.end method

.method public native V(Ljava/lang/String;)V
.end method

.method public native W(Ljava/lang/String;)V
.end method

.method public native X(Ljava/lang/String;)V
.end method

.method public native Y(Ljava/lang/String;)V
.end method

.method public native Z()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end method

.method public native a0()V
.end method

.method public native b0(Lcom/nvshen/chmp4/d$e;)V
.end method

.method public native f(Ljava/lang/String;Lcom/nvshen/chmp4/d$f;)V
.end method

.method public native g(Ljava/lang/String;Lcom/nvshen/chmp4/d$g;)V
.end method

.method public native h(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native i(Ljava/lang/String;)Landroid/app/ProgressDialog;
.end method

.method public native j(Ljava/lang/String;)I
.end method

.method public native k(Ljava/lang/String;Ljava/lang/String;Lcom/nvshen/chmp4/d$h;)V
.end method

.method public native l(Ljava/lang/String;)I
.end method

.method public native m()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native n(Ljava/lang/String;Ljava/lang/String;Lcom/nvshen/chmp4/d$e;)V
.end method

.method public native o()Ljava/lang/String;
.end method

.method public native p()Ljava/lang/String;
.end method

.method public native q()I
.end method

.method public native r()Landroid/content/Context;
.end method

.method public native s()Ljava/lang/String;
.end method

.method public native t()Ljava/lang/String;
.end method

.method public native u(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native v()J
.end method

.method public native w()Ljava/lang/String;
.end method

.method public native x()Ljava/lang/String;
.end method

.method public native y()I
.end method

.method public native z()I
.end method

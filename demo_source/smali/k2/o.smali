.class public final Lk2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Application;

.field private static b:Ll2/c;

.field private static c:Ll2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/d<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ll2/b;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lk2/o;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Toaster has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lk2/o;->c:Ll2/d;

    invoke-static {p0, v0}, Lk2/o;->d(Landroid/app/Application;Ll2/d;)V

    return-void
.end method

.method public static c(Landroid/app/Application;Ll2/c;Ll2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ll2/c;",
            "Ll2/d<",
            "*>;)V"
        }
    .end annotation

    sput-object p0, Lk2/o;->a:Landroid/app/Application;

    if-nez p1, :cond_0

    new-instance p1, Lk2/n;

    invoke-direct {p1}, Lk2/n;-><init>()V

    :cond_0
    invoke-static {p1}, Lk2/o;->f(Ll2/c;)V

    if-nez p2, :cond_1

    new-instance p2, Lm2/a;

    invoke-direct {p2}, Lm2/a;-><init>()V

    :cond_1
    invoke-static {p2}, Lk2/o;->g(Ll2/d;)V

    return-void
.end method

.method public static d(Landroid/app/Application;Ll2/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ll2/d<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lk2/o;->c(Landroid/app/Application;Ll2/c;Ll2/d;)V

    return-void
.end method

.method static e()Z
    .locals 1

    sget-object v0, Lk2/o;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lk2/o;->a()V

    sget-object v0, Lk2/o;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lk2/o;->e:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lk2/o;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static f(Ll2/c;)V
    .locals 1

    sput-object p0, Lk2/o;->b:Ll2/c;

    sget-object v0, Lk2/o;->a:Landroid/app/Application;

    invoke-interface {p0, v0}, Ll2/c;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static g(Ll2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/d<",
            "*>;)V"
        }
    .end annotation

    sput-object p0, Lk2/o;->c:Ll2/d;

    return-void
.end method

.method public static h(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lk2/m;

    invoke-direct {v0}, Lk2/m;-><init>()V

    iput-object p0, v0, Lk2/m;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Lk2/o;->i(Lk2/m;)V

    return-void
.end method

.method public static i(Lk2/m;)V
    .locals 2

    invoke-static {}, Lk2/o;->a()V

    iget-object v0, p0, Lk2/m;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lk2/m;->e:Ll2/c;

    if-nez v0, :cond_1

    sget-object v0, Lk2/o;->b:Ll2/c;

    iput-object v0, p0, Lk2/m;->e:Ll2/c;

    :cond_1
    iget-object v0, p0, Lk2/m;->f:Ll2/b;

    if-nez v0, :cond_3

    sget-object v0, Lk2/o;->d:Ll2/b;

    if-nez v0, :cond_2

    new-instance v0, Lk2/l;

    invoke-direct {v0}, Lk2/l;-><init>()V

    sput-object v0, Lk2/o;->d:Ll2/b;

    :cond_2
    sget-object v0, Lk2/o;->d:Ll2/b;

    iput-object v0, p0, Lk2/m;->f:Ll2/b;

    :cond_3
    iget-object v0, p0, Lk2/m;->d:Ll2/d;

    if-nez v0, :cond_4

    sget-object v0, Lk2/o;->c:Ll2/d;

    iput-object v0, p0, Lk2/m;->d:Ll2/d;

    :cond_4
    iget-object v0, p0, Lk2/m;->f:Ll2/b;

    invoke-interface {v0, p0}, Ll2/b;->a(Lk2/m;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lk2/m;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lk2/m;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lk2/m;->b:I

    :cond_7
    iget-object v0, p0, Lk2/m;->e:Ll2/c;

    invoke-interface {v0, p0}, Ll2/c;->b(Lk2/m;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static j(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lk2/m;

    invoke-direct {v0}, Lk2/m;-><init>()V

    iput-object p0, v0, Lk2/m;->a:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    iput p0, v0, Lk2/m;->b:I

    invoke-static {v0}, Lk2/o;->i(Lk2/m;)V

    return-void
.end method

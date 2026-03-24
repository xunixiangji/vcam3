.class public final Lw/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/d$f;,
        Lw/d$a;,
        Lw/d$b;,
        Lw/d$c;,
        Lw/d$e;,
        Lw/d$d;
    }
.end annotation


# static fields
.field public static final a:Lw/c;

.field public static final b:Lw/c;

.field public static final c:Lw/c;

.field public static final d:Lw/c;

.field public static final e:Lw/c;

.field public static final f:Lw/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw/d$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw/d$e;-><init>(Lw/d$c;Z)V

    sput-object v0, Lw/d;->a:Lw/c;

    new-instance v0, Lw/d$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lw/d$e;-><init>(Lw/d$c;Z)V

    sput-object v0, Lw/d;->b:Lw/c;

    new-instance v0, Lw/d$e;

    sget-object v1, Lw/d$b;->a:Lw/d$b;

    invoke-direct {v0, v1, v2}, Lw/d$e;-><init>(Lw/d$c;Z)V

    sput-object v0, Lw/d;->c:Lw/c;

    new-instance v0, Lw/d$e;

    invoke-direct {v0, v1, v3}, Lw/d$e;-><init>(Lw/d$c;Z)V

    sput-object v0, Lw/d;->d:Lw/c;

    new-instance v0, Lw/d$e;

    sget-object v1, Lw/d$a;->b:Lw/d$a;

    invoke-direct {v0, v1, v2}, Lw/d$e;-><init>(Lw/d$c;Z)V

    sput-object v0, Lw/d;->e:Lw/c;

    sget-object v0, Lw/d$f;->b:Lw/d$f;

    sput-object v0, Lw/d;->f:Lw/c;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

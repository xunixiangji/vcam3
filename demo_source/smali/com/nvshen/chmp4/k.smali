.class public Lcom/nvshen/chmp4/k;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/nvshen/chmp4/k;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:I

.field c:Lcom/nvshen/chmp4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nvshen/chmp4/k;->b:I

    new-instance v0, Lcom/nvshen/chmp4/i;

    invoke-direct {v0}, Lcom/nvshen/chmp4/i;-><init>()V

    iput-object v0, p0, Lcom/nvshen/chmp4/k;->c:Lcom/nvshen/chmp4/i;

    return-void
.end method

.method private native a()V
.end method

.method static native c()Lcom/nvshen/chmp4/k;
.end method

.method private native f()V
.end method


# virtual methods
.method public native b()Landroid/os/IBinder;
.end method

.method public native d()I
.end method

.method public native e(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public native g(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native h(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native i(I)I
.end method

.method public native j(I)Ljava/lang/String;
.end method

.method public native k(I)Ljava/lang/String;
.end method

.method public native l()I
.end method

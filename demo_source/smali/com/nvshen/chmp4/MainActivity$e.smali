.class Lcom/nvshen/chmp4/MainActivity$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/MainActivity;->S(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Landroid/app/ProgressDialog;

.field final synthetic d:Lcom/nvshen/chmp4/d;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/nvshen/chmp4/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/MainActivity;ILandroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/MainActivity$e;->g:Lcom/nvshen/chmp4/MainActivity;

    iput p2, p0, Lcom/nvshen/chmp4/MainActivity$e;->b:I

    iput-object p3, p0, Lcom/nvshen/chmp4/MainActivity$e;->c:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/nvshen/chmp4/MainActivity$e;->d:Lcom/nvshen/chmp4/d;

    iput p5, p0, Lcom/nvshen/chmp4/MainActivity$e;->e:I

    iput-object p6, p0, Lcom/nvshen/chmp4/MainActivity$e;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/ProgressDialog;Ls2/b$e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nvshen/chmp4/MainActivity$e;->b(Landroid/app/ProgressDialog;Ls2/b$e;)V

    return-void
.end method

.method private static synthetic b(Landroid/app/ProgressDialog;Ls2/b$e;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

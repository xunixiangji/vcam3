.class Lcom/nvshen/chmp4/SplashActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/SplashActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/nvshen/chmp4/SplashActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x36

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nvshen/chmp4/SplashActivity$a;->b:Lcom/nvshen/chmp4/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method

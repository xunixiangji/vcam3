.class Lcom/nvshen/chmp4/SplashActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/SplashActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/nvshen/chmp4/SplashActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x35

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/SplashActivity;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/SplashActivity$b;->d:Lcom/nvshen/chmp4/SplashActivity;

    iput-object p2, p0, Lcom/nvshen/chmp4/SplashActivity$b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nvshen/chmp4/SplashActivity$b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/view/View;)V
.end method

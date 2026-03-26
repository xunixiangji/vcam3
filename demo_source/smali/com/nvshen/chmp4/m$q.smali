.class Lcom/nvshen/chmp4/m$q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/m;->u1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/nvshen/chmp4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/m;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/m$q;->d:Lcom/nvshen/chmp4/m;

    iput-object p2, p0, Lcom/nvshen/chmp4/m$q;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nvshen/chmp4/m$q;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/nvshen/chmp4/m$q;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nvshen/chmp4/m$q;->b(Landroid/widget/TextView;I)V

    return-void
.end method

.method private synthetic b(Landroid/widget/TextView;I)V
    .locals 2

    iget-object v0, p0, Lcom/nvshen/chmp4/m$q;->d:Lcom/nvshen/chmp4/m;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/d;

    move-result-object v0

    new-instance v1, Lcom/nvshen/chmp4/m$q$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/nvshen/chmp4/m$q$a;-><init>(Lcom/nvshen/chmp4/m$q;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/view/View;)V
.end method

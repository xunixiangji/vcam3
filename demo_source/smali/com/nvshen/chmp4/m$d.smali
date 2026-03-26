.class Lcom/nvshen/chmp4/m$d;
.super Ljava/lang/Object;

# interfaces
.implements Ln2/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/m;->z1(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ln2/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln2/e$a<",
        "Landroid/widget/Button;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ln2/e;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/nvshen/chmp4/m$d;->b(Ln2/e;Landroid/widget/Button;)V

    return-void
.end method

.method public native b(Ln2/e;Landroid/widget/Button;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e<",
            "*>;",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation
.end method

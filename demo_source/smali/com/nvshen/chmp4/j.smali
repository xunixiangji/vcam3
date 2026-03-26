.class Lcom/nvshen/chmp4/j;
.super Ljava/lang/Object;

# interfaces
.implements Ln2/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln2/e$a<",
        "Landroid/widget/Button;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ln2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/e$a<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Ln2/e$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e$a<",
            "Landroid/widget/Button;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/j;->a:Ln2/e$a;

    iput-object p3, p0, Lcom/nvshen/chmp4/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/nvshen/chmp4/j;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/nvshen/chmp4/j;)Ln2/e$a;
    .locals 0

    iget-object p0, p0, Lcom/nvshen/chmp4/j;->a:Ln2/e$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ln2/e;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/nvshen/chmp4/j;->c(Ln2/e;Landroid/widget/Button;)V

    return-void
.end method

.method public native c(Ln2/e;Landroid/widget/Button;)V
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

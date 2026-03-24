.class Lcom/nvshen/chmp4/m$v;
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
.field final synthetic b:Landroid/widget/Spinner;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/widget/Spinner;

.field final synthetic e:Landroid/widget/Spinner;

.field final synthetic f:Landroid/widget/Spinner;

.field final synthetic g:Landroid/widget/Spinner;

.field final synthetic h:Lcom/nvshen/chmp4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/m;Landroid/widget/Spinner;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/m$v;->h:Lcom/nvshen/chmp4/m;

    iput-object p2, p0, Lcom/nvshen/chmp4/m$v;->b:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/nvshen/chmp4/m$v;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nvshen/chmp4/m$v;->d:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/nvshen/chmp4/m$v;->e:Landroid/widget/Spinner;

    iput-object p6, p0, Lcom/nvshen/chmp4/m$v;->f:Landroid/widget/Spinner;

    iput-object p7, p0, Lcom/nvshen/chmp4/m$v;->g:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/view/View;)V
.end method

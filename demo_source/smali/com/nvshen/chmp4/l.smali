.class public final synthetic Lcom/nvshen/chmp4/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nvshen/chmp4/d$g;


# instance fields
.field public final synthetic a:Lcom/nvshen/chmp4/m;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nvshen/chmp4/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/l;->a:Lcom/nvshen/chmp4/m;

    iput-object p2, p0, Lcom/nvshen/chmp4/l;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final native a()V
.end method

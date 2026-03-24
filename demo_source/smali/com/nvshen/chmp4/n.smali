.class public final synthetic Lcom/nvshen/chmp4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nvshen/chmp4/d$f;


# instance fields
.field public final synthetic a:Lcom/nvshen/chmp4/m$q;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nvshen/chmp4/m$q;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/n;->a:Lcom/nvshen/chmp4/m$q;

    iput-object p2, p0, Lcom/nvshen/chmp4/n;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final native a(I)V
.end method

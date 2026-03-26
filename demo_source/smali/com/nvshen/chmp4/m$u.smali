.class Lcom/nvshen/chmp4/m$u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/m;->u1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nvshen/chmp4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nvshen/chmp4/m$u;->a:Lcom/nvshen/chmp4/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end method

.class public final synthetic Lcom/nvshen/chmp4/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nvshen/chmp4/d$h;


# instance fields
.field public final synthetic a:Lcom/nvshen/chmp4/MainActivity;

.field public final synthetic b:Landroid/app/ProgressDialog;

.field public final synthetic c:Lcom/nvshen/chmp4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nvshen/chmp4/MainActivity;Landroid/app/ProgressDialog;Lcom/nvshen/chmp4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/g;->a:Lcom/nvshen/chmp4/MainActivity;

    iput-object p2, p0, Lcom/nvshen/chmp4/g;->b:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/nvshen/chmp4/g;->c:Lcom/nvshen/chmp4/d;

    return-void
.end method


# virtual methods
.method public final native a(IILjava/lang/String;)V
.end method

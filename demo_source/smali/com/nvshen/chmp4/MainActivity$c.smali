.class Lcom/nvshen/chmp4/MainActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/i;

.field final synthetic b:Lcom/nvshen/chmp4/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/MainActivity;Landroidx/fragment/app/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/MainActivity$c;->b:Lcom/nvshen/chmp4/MainActivity;

    iput-object p2, p0, Lcom/nvshen/chmp4/MainActivity$c;->a:Landroidx/fragment/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(I)V
.end method

.method public native b(I)V
.end method

.method public native c(I)V
.end method

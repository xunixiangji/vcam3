.class Lcom/nvshen/chmp4/MainActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/MainActivity;->O(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/nvshen/chmp4/d;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/nvshen/chmp4/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x33

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/MainActivity;Lcom/nvshen/chmp4/d;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/MainActivity$b;->f:Lcom/nvshen/chmp4/MainActivity;

    iput-object p2, p0, Lcom/nvshen/chmp4/MainActivity$b;->b:Lcom/nvshen/chmp4/d;

    iput p3, p0, Lcom/nvshen/chmp4/MainActivity$b;->c:I

    iput-object p4, p0, Lcom/nvshen/chmp4/MainActivity$b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/nvshen/chmp4/MainActivity$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

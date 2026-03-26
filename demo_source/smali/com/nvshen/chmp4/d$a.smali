.class Lcom/nvshen/chmp4/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ll3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/d;->A()Ll3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/nvshen/chmp4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/d$a;->f:Lcom/nvshen/chmp4/d;

    iput-object p2, p0, Lcom/nvshen/chmp4/d$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/nvshen/chmp4/d$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Ll3/e0;Ll3/c0;)Ll3/a0;
.end method

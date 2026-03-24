.class Lcom/nvshen/chmp4/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ll3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/d;->O(Ljava/lang/String;Ljava/lang/String;Lcom/nvshen/chmp4/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nvshen/chmp4/d$e;

.field final synthetic b:Lcom/nvshen/chmp4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/d;Lcom/nvshen/chmp4/d$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/d$c;->b:Lcom/nvshen/chmp4/d;

    iput-object p2, p0, Lcom/nvshen/chmp4/d$c;->a:Lcom/nvshen/chmp4/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Ll3/e;Ll3/c0;)V
.end method

.method public native b(Ll3/e;Ljava/io/IOException;)V
.end method

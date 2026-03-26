.class Lcom/nvshen/chmp4/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Ll3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvshen/chmp4/d;->k(Ljava/lang/String;Ljava/lang/String;Lcom/nvshen/chmp4/d$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nvshen/chmp4/d$h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nvshen/chmp4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method constructor <init>(Lcom/nvshen/chmp4/d;Lcom/nvshen/chmp4/d$h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nvshen/chmp4/d$d;->d:Lcom/nvshen/chmp4/d;

    iput-object p2, p0, Lcom/nvshen/chmp4/d$d;->a:Lcom/nvshen/chmp4/d$h;

    iput-object p3, p0, Lcom/nvshen/chmp4/d$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nvshen/chmp4/d$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Ll3/e;Ll3/c0;)V
.end method

.method public native b(Ll3/e;Ljava/io/IOException;)V
.end method

.class public final synthetic Lcom/nvshen/chmp4/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nvshen/chmp4/d$e;


# instance fields
.field public final synthetic a:Lcom/nvshen/chmp4/d;

.field public final synthetic b:Lcom/nvshen/chmp4/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nvshen/chmp4/d;Lcom/nvshen/chmp4/d$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/a;->a:Lcom/nvshen/chmp4/d;

    iput-object p2, p0, Lcom/nvshen/chmp4/a;->b:Lcom/nvshen/chmp4/d$e;

    return-void
.end method


# virtual methods
.method public final native a(ILjava/lang/String;)V
.end method

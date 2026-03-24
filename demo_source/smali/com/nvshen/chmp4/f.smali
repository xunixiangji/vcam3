.class public final synthetic Lcom/nvshen/chmp4/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nvshen/chmp4/d$e;


# instance fields
.field public final synthetic a:Lcom/nvshen/chmp4/MainActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nvshen/chmp4/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nvshen/chmp4/f;->a:Lcom/nvshen/chmp4/MainActivity;

    iput-object p2, p0, Lcom/nvshen/chmp4/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native a(ILjava/lang/String;)V
.end method

.class public final synthetic Lcom/nvshen/chmp4/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/nvshen/chmp4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    new-instance v0, Lcom/nvshen/chmp4/c;

    invoke-direct {v0}, Lcom/nvshen/chmp4/c;-><init>()V

    sput-object v0, Lcom/nvshen/chmp4/c;->a:Lcom/nvshen/chmp4/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native accept(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

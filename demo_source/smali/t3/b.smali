.class public final enum Lt3/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt3/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lt3/b$a;

.field public static final enum d:Lt3/b;

.field public static final enum e:Lt3/b;

.field public static final enum f:Lt3/b;

.field public static final enum g:Lt3/b;

.field public static final enum h:Lt3/b;

.field public static final enum i:Lt3/b;

.field public static final enum j:Lt3/b;

.field public static final enum k:Lt3/b;

.field public static final enum l:Lt3/b;

.field public static final enum m:Lt3/b;

.field public static final enum n:Lt3/b;

.field public static final enum o:Lt3/b;

.field public static final enum p:Lt3/b;

.field public static final enum q:Lt3/b;

.field private static final synthetic r:[Lt3/b;

.field private static final synthetic s:Ly2/a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->d:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->e:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->f:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->g:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "SETTINGS_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->h:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "STREAM_CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->i:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "FRAME_SIZE_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->j:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->k:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "CANCEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->l:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "COMPRESSION_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->m:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "CONNECT_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->n:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->o:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->p:Lt3/b;

    new-instance v0, Lt3/b;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lt3/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt3/b;->q:Lt3/b;

    invoke-static {}, Lt3/b;->a()[Lt3/b;

    move-result-object v0

    sput-object v0, Lt3/b;->r:[Lt3/b;

    invoke-static {v0}, Ly2/b;->a([Ljava/lang/Enum;)Ly2/a;

    move-result-object v0

    sput-object v0, Lt3/b;->s:Ly2/a;

    new-instance v0, Lt3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/b$a;-><init>(Le3/d;)V

    sput-object v0, Lt3/b;->c:Lt3/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lt3/b;->b:I

    return-void
.end method

.method private static final synthetic a()[Lt3/b;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lt3/b;

    sget-object v1, Lt3/b;->d:Lt3/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->e:Lt3/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->f:Lt3/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->g:Lt3/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->h:Lt3/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->i:Lt3/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->j:Lt3/b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->k:Lt3/b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->l:Lt3/b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->m:Lt3/b;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->n:Lt3/b;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->o:Lt3/b;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->p:Lt3/b;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lt3/b;->q:Lt3/b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lt3/b;
    .locals 1

    const-class v0, Lt3/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt3/b;

    return-object p0
.end method

.method public static values()[Lt3/b;
    .locals 1

    sget-object v0, Lt3/b;->r:[Lt3/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt3/b;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lt3/b;->b:I

    return v0
.end method

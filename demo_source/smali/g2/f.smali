.class public final enum Lg2/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg2/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lg2/f;

.field public static final enum d:Lg2/f;

.field public static final enum e:Lg2/f;

.field public static final enum f:Lg2/f;

.field private static final g:[Lg2/f;

.field private static final synthetic h:[Lg2/f;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lg2/f;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg2/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg2/f;->c:Lg2/f;

    new-instance v1, Lg2/f;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lg2/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg2/f;->d:Lg2/f;

    new-instance v4, Lg2/f;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lg2/f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg2/f;->e:Lg2/f;

    new-instance v5, Lg2/f;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lg2/f;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg2/f;->f:Lg2/f;

    const/4 v8, 0x4

    new-array v9, v8, [Lg2/f;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    sput-object v9, Lg2/f;->h:[Lg2/f;

    new-array v8, v8, [Lg2/f;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    sput-object v8, Lg2/f;->g:[Lg2/f;

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

    iput p3, p0, Lg2/f;->b:I

    return-void
.end method

.method public static a(I)Lg2/f;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lg2/f;->g:[Lg2/f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg2/f;
    .locals 1

    const-class v0, Lg2/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg2/f;

    return-object p0
.end method

.method public static values()[Lg2/f;
    .locals 1

    sget-object v0, Lg2/f;->h:[Lg2/f;

    invoke-virtual {v0}, [Lg2/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg2/f;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lg2/f;->b:I

    return v0
.end method

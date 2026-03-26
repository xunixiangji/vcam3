.class final enum Lz1/m$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz1/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lz1/m$a;

.field public static final enum c:Lz1/m$a;

.field public static final enum d:Lz1/m$a;

.field private static final synthetic e:[Lz1/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lz1/m$a;

    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/m$a;->b:Lz1/m$a;

    new-instance v1, Lz1/m$a;

    const-string v3, "ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/m$a;->c:Lz1/m$a;

    new-instance v3, Lz1/m$a;

    const-string v5, "ISO_IEC_646"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz1/m$a;->d:Lz1/m$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lz1/m$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lz1/m$a;->e:[Lz1/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz1/m$a;
    .locals 1

    const-class v0, Lz1/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/m$a;

    return-object p0
.end method

.method public static values()[Lz1/m$a;
    .locals 1

    sget-object v0, Lz1/m$a;->e:[Lz1/m$a;

    invoke-virtual {v0}, [Lz1/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/m$a;

    return-object v0
.end method

.class public final enum Le2/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le2/c;

.field public static final enum c:Le2/c;

.field public static final enum d:Le2/c;

.field public static final enum e:Le2/c;

.field private static final synthetic f:[Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Le2/c;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/c;->b:Le2/c;

    new-instance v1, Le2/c;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/c;->c:Le2/c;

    new-instance v3, Le2/c;

    const-string v5, "BYTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/c;->d:Le2/c;

    new-instance v5, Le2/c;

    const-string v7, "NUMERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le2/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le2/c;->e:Le2/c;

    const/4 v7, 0x4

    new-array v7, v7, [Le2/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Le2/c;->f:[Le2/c;

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

.method public static valueOf(Ljava/lang/String;)Le2/c;
    .locals 1

    const-class v0, Le2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/c;

    return-object p0
.end method

.method public static values()[Le2/c;
    .locals 1

    sget-object v0, Le2/c;->f:[Le2/c;

    invoke-virtual {v0}, [Le2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/c;

    return-object v0
.end method

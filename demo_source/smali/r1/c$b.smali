.class final enum Lr1/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr1/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr1/c$b;

.field public static final enum c:Lr1/c$b;

.field public static final enum d:Lr1/c$b;

.field public static final enum e:Lr1/c$b;

.field public static final enum f:Lr1/c$b;

.field public static final enum g:Lr1/c$b;

.field public static final enum h:Lr1/c$b;

.field private static final synthetic i:[Lr1/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lr1/c$b;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr1/c$b;->b:Lr1/c$b;

    new-instance v1, Lr1/c$b;

    const-string v3, "ASCII_ENCODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr1/c$b;->c:Lr1/c$b;

    new-instance v3, Lr1/c$b;

    const-string v5, "C40_ENCODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr1/c$b;->d:Lr1/c$b;

    new-instance v5, Lr1/c$b;

    const-string v7, "TEXT_ENCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr1/c$b;->e:Lr1/c$b;

    new-instance v7, Lr1/c$b;

    const-string v9, "ANSIX12_ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lr1/c$b;->f:Lr1/c$b;

    new-instance v9, Lr1/c$b;

    const-string v11, "EDIFACT_ENCODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lr1/c$b;->g:Lr1/c$b;

    new-instance v11, Lr1/c$b;

    const-string v13, "BASE256_ENCODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lr1/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lr1/c$b;->h:Lr1/c$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lr1/c$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lr1/c$b;->i:[Lr1/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lr1/c$b;
    .locals 1

    const-class v0, Lr1/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr1/c$b;

    return-object p0
.end method

.method public static values()[Lr1/c$b;
    .locals 1

    sget-object v0, Lr1/c$b;->i:[Lr1/c$b;

    invoke-virtual {v0}, [Lr1/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr1/c$b;

    return-object v0
.end method

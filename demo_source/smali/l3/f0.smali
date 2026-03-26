.class public final enum Ll3/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll3/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ll3/f0$a;

.field public static final enum d:Ll3/f0;

.field public static final enum e:Ll3/f0;

.field public static final enum f:Ll3/f0;

.field public static final enum g:Ll3/f0;

.field public static final enum h:Ll3/f0;

.field private static final synthetic i:[Ll3/f0;

.field private static final synthetic j:Ly2/a;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll3/f0;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Ll3/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/f0;->d:Ll3/f0;

    new-instance v0, Ll3/f0;

    const-string v1, "TLS_1_2"

    const/4 v2, 0x1

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v1, v2, v3}, Ll3/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/f0;->e:Ll3/f0;

    new-instance v0, Ll3/f0;

    const-string v1, "TLS_1_1"

    const/4 v2, 0x2

    const-string v3, "TLSv1.1"

    invoke-direct {v0, v1, v2, v3}, Ll3/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/f0;->f:Ll3/f0;

    new-instance v0, Ll3/f0;

    const-string v1, "TLS_1_0"

    const/4 v2, 0x3

    const-string v3, "TLSv1"

    invoke-direct {v0, v1, v2, v3}, Ll3/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/f0;->g:Ll3/f0;

    new-instance v0, Ll3/f0;

    const-string v1, "SSL_3_0"

    const/4 v2, 0x4

    const-string v3, "SSLv3"

    invoke-direct {v0, v1, v2, v3}, Ll3/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/f0;->h:Ll3/f0;

    invoke-static {}, Ll3/f0;->a()[Ll3/f0;

    move-result-object v0

    sput-object v0, Ll3/f0;->i:[Ll3/f0;

    invoke-static {v0}, Ly2/b;->a([Ljava/lang/Enum;)Ly2/a;

    move-result-object v0

    sput-object v0, Ll3/f0;->j:Ly2/a;

    new-instance v0, Ll3/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/f0$a;-><init>(Le3/d;)V

    sput-object v0, Ll3/f0;->c:Ll3/f0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ll3/f0;->b:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Ll3/f0;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ll3/f0;

    sget-object v1, Ll3/f0;->d:Ll3/f0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ll3/f0;->e:Ll3/f0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ll3/f0;->f:Ll3/f0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ll3/f0;->g:Ll3/f0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ll3/f0;->h:Ll3/f0;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll3/f0;
    .locals 1

    const-class v0, Ll3/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll3/f0;

    return-object p0
.end method

.method public static values()[Ll3/f0;
    .locals 1

    sget-object v0, Ll3/f0;->i:[Ll3/f0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll3/f0;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/f0;->b:Ljava/lang/String;

    return-object v0
.end method

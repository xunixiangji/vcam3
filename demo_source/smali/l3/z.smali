.class public final enum Ll3/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll3/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ll3/z$a;

.field public static final enum d:Ll3/z;

.field public static final enum e:Ll3/z;

.field public static final enum f:Ll3/z;

.field public static final enum g:Ll3/z;

.field public static final enum h:Ll3/z;

.field public static final enum i:Ll3/z;

.field public static final enum j:Ll3/z;

.field private static final synthetic k:[Ll3/z;

.field private static final synthetic l:Ly2/a;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll3/z;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->d:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "HTTP_1_1"

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->e:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "SPDY_3"

    const/4 v2, 0x2

    const-string v3, "spdy/3.1"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->f:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "HTTP_2"

    const/4 v2, 0x3

    const-string v3, "h2"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->g:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "H2_PRIOR_KNOWLEDGE"

    const/4 v2, 0x4

    const-string v3, "h2_prior_knowledge"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->h:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "QUIC"

    const/4 v2, 0x5

    const-string v3, "quic"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->i:Ll3/z;

    new-instance v0, Ll3/z;

    const-string v1, "HTTP_3"

    const/4 v2, 0x6

    const-string v3, "h3"

    invoke-direct {v0, v1, v2, v3}, Ll3/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll3/z;->j:Ll3/z;

    invoke-static {}, Ll3/z;->a()[Ll3/z;

    move-result-object v0

    sput-object v0, Ll3/z;->k:[Ll3/z;

    invoke-static {v0}, Ly2/b;->a([Ljava/lang/Enum;)Ly2/a;

    move-result-object v0

    sput-object v0, Ll3/z;->l:Ly2/a;

    new-instance v0, Ll3/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/z$a;-><init>(Le3/d;)V

    sput-object v0, Ll3/z;->c:Ll3/z$a;

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

    iput-object p3, p0, Ll3/z;->b:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Ll3/z;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ll3/z;

    sget-object v1, Ll3/z;->d:Ll3/z;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->e:Ll3/z;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->f:Ll3/z;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->g:Ll3/z;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->h:Ll3/z;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->i:Ll3/z;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ll3/z;->j:Ll3/z;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static final synthetic b(Ll3/z;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/z;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ll3/z;
    .locals 1

    const-class v0, Ll3/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll3/z;

    return-object p0
.end method

.method public static values()[Ll3/z;
    .locals 1

    sget-object v0, Ll3/z;->k:[Ll3/z;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll3/z;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/z;->b:Ljava/lang/String;

    return-object v0
.end method

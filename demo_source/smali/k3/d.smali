.class public final enum Lk3/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk3/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lk3/d;

.field public static final enum d:Lk3/d;

.field public static final enum e:Lk3/d;

.field public static final enum f:Lk3/d;

.field public static final enum g:Lk3/d;

.field public static final enum h:Lk3/d;

.field public static final enum i:Lk3/d;

.field private static final synthetic j:[Lk3/d;

.field private static final synthetic k:Ly2/a;


# instance fields
.field private final b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "NANOSECONDS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->c:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MICROSECONDS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->d:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MILLISECONDS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->e:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "SECONDS"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->f:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MINUTES"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->g:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "HOURS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->h:Lk3/d;

    new-instance v0, Lk3/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "DAYS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lk3/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lk3/d;->i:Lk3/d;

    invoke-static {}, Lk3/d;->a()[Lk3/d;

    move-result-object v0

    sput-object v0, Lk3/d;->j:[Lk3/d;

    invoke-static {v0}, Ly2/b;->a([Ljava/lang/Enum;)Ly2/a;

    move-result-object v0

    sput-object v0, Lk3/d;->k:Ly2/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lk3/d;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private static final synthetic a()[Lk3/d;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lk3/d;

    sget-object v1, Lk3/d;->c:Lk3/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->d:Lk3/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->e:Lk3/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->f:Lk3/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->g:Lk3/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->h:Lk3/d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lk3/d;->i:Lk3/d;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk3/d;
    .locals 1

    const-class v0, Lk3/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk3/d;

    return-object p0
.end method

.method public static values()[Lk3/d;
    .locals 1

    sget-object v0, Lk3/d;->j:[Lk3/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk3/d;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lk3/d;->b:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

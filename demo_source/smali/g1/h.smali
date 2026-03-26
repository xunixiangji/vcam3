.class public final Lg1/h;
.super Lg1/p;
.source "SourceFile"


# static fields
.field private static final d:Lg1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg1/h;

    invoke-direct {v0}, Lg1/h;-><init>()V

    sput-object v0, Lg1/h;->d:Lg1/h;

    sget-object v1, Lg1/p;->c:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg1/p;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1/p;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Lg1/h;
    .locals 1

    sget-boolean v0, Lg1/p;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg1/h;

    invoke-direct {v0}, Lg1/h;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lg1/h;->d:Lg1/h;

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lg1/h;
    .locals 1

    sget-boolean v0, Lg1/p;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg1/h;

    invoke-direct {v0, p0}, Lg1/h;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Lg1/h;->d:Lg1/h;

    return-object p0
.end method

.class public final Lg1/m;
.super Lg1/p;
.source "SourceFile"


# static fields
.field private static final d:Lg1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg1/m;

    invoke-direct {v0}, Lg1/m;-><init>()V

    sput-object v0, Lg1/m;->d:Lg1/m;

    sget-object v1, Lg1/p;->c:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg1/p;-><init>()V

    return-void
.end method

.method public static a()Lg1/m;
    .locals 1

    sget-object v0, Lg1/m;->d:Lg1/m;

    return-object v0
.end method

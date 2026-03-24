.class public final Lw3/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lw3/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/d$b;

    invoke-direct {v0}, Lw3/d$b;-><init>()V

    sput-object v0, Lw3/d$b;->a:Lw3/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

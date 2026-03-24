.class public final Lx3/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le3/d;)V
    .locals 0

    invoke-direct {p0}, Lx3/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lx3/i$a;
    .locals 1

    invoke-static {}, Lx3/g;->e()Lx3/i$a;

    move-result-object v0

    return-object v0
.end method

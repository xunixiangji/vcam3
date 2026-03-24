.class public final Lg3/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le3/d;)V
    .locals 0

    invoke-direct {p0}, Lg3/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lg3/d;
    .locals 1

    new-instance v0, Lg3/d;

    invoke-direct {v0, p1, p2, p3}, Lg3/d;-><init>(III)V

    return-object v0
.end method

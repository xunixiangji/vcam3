.class public final Lw3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/f;
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

    invoke-direct {p0}, Lw3/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lw3/f;
    .locals 1

    invoke-virtual {p0}, Lw3/f$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw3/f;

    invoke-direct {v0}, Lw3/f;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lw3/f;->p()Z

    move-result v0

    return v0
.end method

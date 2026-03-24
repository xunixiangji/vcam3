.class public abstract Ls2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls2/b$a;
    .locals 1

    new-instance v0, Lt2/a;

    invoke-direct {v0}, Lt2/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b(I)Ls2/b$a;
.end method

.method public abstract c(J)Ls2/b$a;
.end method

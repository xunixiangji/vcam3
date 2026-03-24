.class public final Lt3/g$d$a;
.super Lt3/g$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/g$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lt3/j;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt3/b;->k:Lt3/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lt3/j;->e(Lt3/b;Ljava/io/IOException;)V

    return-void
.end method

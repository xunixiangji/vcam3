.class public final Lb4/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Lb4/d;

.field private c:Lb4/b0;

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb4/d$a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lb4/d$a;->f:I

    iput v0, p0, Lb4/d$a;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lb4/d$a;->b:Lb4/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lb4/d$a;->b:Lb4/d;

    invoke-virtual {p0, v0}, Lb4/d$a;->i(Lb4/b0;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lb4/d$a;->d:J

    iput-object v0, p0, Lb4/d$a;->e:[B

    const/4 v0, -0x1

    iput v0, p0, Lb4/d$a;->f:I

    iput v0, p0, Lb4/d$a;->g:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Lb4/b0;)V
    .locals 0

    iput-object p1, p0, Lb4/d$a;->c:Lb4/b0;

    return-void
.end method

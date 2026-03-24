.class final Lc4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc4/e;->a:J

    iput-wide p3, p0, Lc4/e;->b:J

    iput p5, p0, Lc4/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lc4/e;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lc4/e;->c:I

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lc4/e;->a:J

    return-wide v0
.end method

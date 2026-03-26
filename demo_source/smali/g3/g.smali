.class public Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lf3/a;"
    }
.end annotation


# static fields
.field public static final e:Lg3/g$a;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg3/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/g$a;-><init>(Le3/d;)V

    sput-object v0, Lg3/g;->e:Lg3/g$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lg3/g;->b:J

    invoke-static/range {p1 .. p6}, Lz2/c;->d(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lg3/g;->c:J

    iput-wide p5, p0, Lg3/g;->d:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lg3/g;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lg3/g;->c:J

    return-wide v0
.end method

.method public c()Lv2/c0;
    .locals 8

    new-instance v7, Lg3/h;

    iget-wide v1, p0, Lg3/g;->b:J

    iget-wide v3, p0, Lg3/g;->c:J

    iget-wide v5, p0, Lg3/g;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg3/h;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lg3/g;->c()Lv2/c0;

    move-result-object v0

    return-object v0
.end method

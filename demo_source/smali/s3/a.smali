.class public final Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/a$a;
    }
.end annotation


# static fields
.field public static final c:Ls3/a$a;


# instance fields
.field private final a:Lb4/f;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls3/a$a;-><init>(Le3/d;)V

    sput-object v0, Ls3/a;->c:Ls3/a$a;

    return-void
.end method

.method public constructor <init>(Lb4/f;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/a;->a:Lb4/f;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Ls3/a;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ll3/u;
    .locals 3

    new-instance v0, Ll3/u$a;

    invoke-direct {v0}, Ll3/u$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ls3/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ll3/u$a;->b(Ljava/lang/String;)Ll3/u$a;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ll3/u$a;->d()Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ls3/a;->a:Lb4/f;

    iget-wide v1, p0, Ls3/a;->b:J

    invoke-interface {v0, v1, v2}, Lb4/f;->n(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Ls3/a;->b:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ls3/a;->b:J

    return-object v0
.end method

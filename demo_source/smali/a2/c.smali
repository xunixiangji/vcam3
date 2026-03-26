.class public final La2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La2/c;->d:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, La2/c;->h:J

    iput-wide v1, p0, La2/c;->i:J

    iput v0, p0, La2/c;->j:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, La2/c;->c:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/c;->f:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, La2/c;->j:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/c;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/c;->g:Ljava/lang/String;

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, La2/c;->h:J

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, La2/c;->c:Z

    return-void
.end method

.method public h([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, La2/c;->k:[I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, La2/c;->d:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, La2/c;->a:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/c;->e:Ljava/lang/String;

    return-void
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, La2/c;->i:J

    return-void
.end method

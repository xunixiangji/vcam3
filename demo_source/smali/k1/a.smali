.class public final Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ln1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln1/b;
    .locals 1

    iget-object v0, p0, Lk1/a;->e:Ln1/b;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lk1/a;->d:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lk1/a;->a:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lk1/a;->c:I

    return-void
.end method

.method public e(Ln1/b;)V
    .locals 0

    iput-object p1, p0, Lk1/a;->e:Ln1/b;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lk1/a;->b:I

    return-void
.end method

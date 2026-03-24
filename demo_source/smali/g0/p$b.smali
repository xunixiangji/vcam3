.class Lg0/p$b;
.super Lg0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lg0/p;


# direct methods
.method constructor <init>(Lg0/p;)V
    .locals 0

    invoke-direct {p0}, Lg0/m;-><init>()V

    iput-object p1, p0, Lg0/p$b;->a:Lg0/p;

    return-void
.end method


# virtual methods
.method public a(Lg0/l;)V
    .locals 1

    iget-object p1, p0, Lg0/p$b;->a:Lg0/p;

    iget-boolean v0, p1, Lg0/p;->N:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg0/l;->b0()V

    iget-object p1, p0, Lg0/p$b;->a:Lg0/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg0/p;->N:Z

    :cond_0
    return-void
.end method

.method public c(Lg0/l;)V
    .locals 2

    iget-object v0, p0, Lg0/p$b;->a:Lg0/p;

    iget v1, v0, Lg0/p;->M:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lg0/p;->M:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg0/p;->N:Z

    invoke-virtual {v0}, Lg0/l;->q()V

    :cond_0
    invoke-virtual {p1, p0}, Lg0/l;->Q(Lg0/l$f;)Lg0/l;

    return-void
.end method

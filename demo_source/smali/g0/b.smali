.class public Lg0/b;
.super Lg0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg0/p;-><init>()V

    invoke-direct {p0}, Lg0/b;->q0()V

    return-void
.end method

.method private q0()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg0/p;->n0(I)Lg0/p;

    new-instance v1, Lg0/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg0/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lg0/p;->f0(Lg0/l;)Lg0/p;

    move-result-object v1

    new-instance v2, Lg0/c;

    invoke-direct {v2}, Lg0/c;-><init>()V

    invoke-virtual {v1, v2}, Lg0/p;->f0(Lg0/l;)Lg0/p;

    move-result-object v1

    new-instance v2, Lg0/d;

    invoke-direct {v2, v0}, Lg0/d;-><init>(I)V

    invoke-virtual {v1, v2}, Lg0/p;->f0(Lg0/l;)Lg0/p;

    return-void
.end method

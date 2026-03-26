.class public Lp2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/t;


# instance fields
.field private a:Lp2/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg1/s;)V
    .locals 1

    iget-object v0, p0, Lp2/i;->a:Lp2/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp2/g;->a(Lg1/s;)V

    :cond_0
    return-void
.end method

.method public b(Lp2/g;)V
    .locals 0

    iput-object p1, p0, Lp2/i;->a:Lp2/g;

    return-void
.end method

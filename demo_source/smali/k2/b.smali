.class public Lk2/b;
.super Lk2/d;
.source "SourceFile"


# instance fields
.field private final l:Lk2/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lk2/d;-><init>()V

    new-instance v0, Lk2/k;

    invoke-direct {v0, p1, p0}, Lk2/k;-><init>(Landroid/app/Activity;Lk2/d;)V

    iput-object v0, p0, Lk2/b;->l:Lk2/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lk2/b;->l:Lk2/k;

    invoke-virtual {v0}, Lk2/k;->g()V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lk2/b;->l:Lk2/k;

    invoke-virtual {v0}, Lk2/k;->k()V

    return-void
.end method

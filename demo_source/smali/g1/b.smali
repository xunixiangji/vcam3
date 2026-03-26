.class public abstract Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg1/j;


# direct methods
.method protected constructor <init>(Lg1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->a:Lg1/j;

    return-void
.end method


# virtual methods
.method public abstract a(Lg1/j;)Lg1/b;
.end method

.method public abstract b()Ln1/b;
.end method

.method public abstract c(ILn1/a;)Ln1/a;
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lg1/b;->a:Lg1/j;

    invoke-virtual {v0}, Lg1/j;->a()I

    move-result v0

    return v0
.end method

.method public final e()Lg1/j;
    .locals 1

    iget-object v0, p0, Lg1/b;->a:Lg1/j;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lg1/b;->a:Lg1/j;

    invoke-virtual {v0}, Lg1/j;->d()I

    move-result v0

    return v0
.end method

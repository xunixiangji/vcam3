.class final Lx1/d;
.super Lx1/b;
.source "SourceFile"


# instance fields
.field private final c:Lx1/c;

.field private d:I


# direct methods
.method constructor <init>(IILx1/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(II)V

    iput-object p3, p0, Lx1/d;->c:Lx1/c;

    return-void
.end method


# virtual methods
.method c()I
    .locals 1

    iget v0, p0, Lx1/d;->d:I

    return v0
.end method

.method d()Lx1/c;
    .locals 1

    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    return-object v0
.end method

.method e()V
    .locals 1

    iget v0, p0, Lx1/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/d;->d:I

    return-void
.end method

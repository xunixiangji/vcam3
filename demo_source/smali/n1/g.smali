.class public Ln1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln1/b;

.field private final b:[Lg1/s;


# direct methods
.method public constructor <init>(Ln1/b;[Lg1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/g;->a:Ln1/b;

    iput-object p2, p0, Ln1/g;->b:[Lg1/s;

    return-void
.end method


# virtual methods
.method public final a()Ln1/b;
    .locals 1

    iget-object v0, p0, Ln1/g;->a:Ln1/b;

    return-object v0
.end method

.method public final b()[Lg1/s;
    .locals 1

    iget-object v0, p0, Ln1/g;->b:[Lg1/s;

    return-object v0
.end method

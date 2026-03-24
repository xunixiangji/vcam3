.class abstract Lk1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Lk1/g;


# instance fields
.field private final a:Lk1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk1/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk1/e;-><init>(Lk1/g;II)V

    sput-object v0, Lk1/g;->b:Lk1/g;

    return-void
.end method

.method constructor <init>(Lk1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/g;->a:Lk1/g;

    return-void
.end method


# virtual methods
.method final a(II)Lk1/g;
    .locals 1

    new-instance v0, Lk1/e;

    invoke-direct {v0, p0, p1, p2}, Lk1/e;-><init>(Lk1/g;II)V

    return-object v0
.end method

.method final b(II)Lk1/g;
    .locals 1

    new-instance v0, Lk1/b;

    invoke-direct {v0, p0, p1, p2}, Lk1/b;-><init>(Lk1/g;II)V

    return-object v0
.end method

.method abstract c(Ln1/a;[B)V
.end method

.method final d()Lk1/g;
    .locals 1

    iget-object v0, p0, Lk1/g;->a:Lk1/g;

    return-object v0
.end method

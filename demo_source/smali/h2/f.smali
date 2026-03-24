.class public final Lh2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lh2/d;

.field private final b:Lh2/d;

.field private final c:Lh2/d;


# direct methods
.method public constructor <init>([Lh2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lh2/f;->a:Lh2/d;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lh2/f;->b:Lh2/d;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lh2/f;->c:Lh2/d;

    return-void
.end method


# virtual methods
.method public a()Lh2/d;
    .locals 1

    iget-object v0, p0, Lh2/f;->a:Lh2/d;

    return-object v0
.end method

.method public b()Lh2/d;
    .locals 1

    iget-object v0, p0, Lh2/f;->b:Lh2/d;

    return-object v0
.end method

.method public c()Lh2/d;
    .locals 1

    iget-object v0, p0, Lh2/f;->c:Lh2/d;

    return-object v0
.end method

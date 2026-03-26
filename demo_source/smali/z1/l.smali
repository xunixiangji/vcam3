.class final Lz1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lz1/o;

.field private final b:Z


# direct methods
.method constructor <init>(Lz1/o;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lz1/l;->b:Z

    iput-object p1, p0, Lz1/l;->a:Lz1/o;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lz1/l;-><init>(Lz1/o;Z)V

    return-void
.end method


# virtual methods
.method a()Lz1/o;
    .locals 1

    iget-object v0, p0, Lz1/l;->a:Lz1/o;

    return-object v0
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lz1/l;->b:Z

    return v0
.end method

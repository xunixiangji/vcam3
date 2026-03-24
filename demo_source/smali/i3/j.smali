.class public final Li3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li3/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Li3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li3/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ld3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li3/c;Ld3/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li3/c<",
            "+TT;>;",
            "Ld3/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/j;->a:Li3/c;

    iput-object p2, p0, Li3/j;->b:Ld3/b;

    return-void
.end method

.method public static final synthetic b(Li3/j;)Li3/c;
    .locals 0

    iget-object p0, p0, Li3/j;->a:Li3/c;

    return-object p0
.end method

.method public static final synthetic c(Li3/j;)Ld3/b;
    .locals 0

    iget-object p0, p0, Li3/j;->b:Ld3/b;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Li3/j$a;

    invoke-direct {v0, p0}, Li3/j$a;-><init>(Li3/j;)V

    return-object v0
.end method

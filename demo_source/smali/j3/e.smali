.class final Lj3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li3/c<",
        "Lg3/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Ld3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/c<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lu2/g<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILd3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Ld3/c<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lu2/g<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lj3/e;->b:I

    iput p3, p0, Lj3/e;->c:I

    iput-object p4, p0, Lj3/e;->d:Ld3/c;

    return-void
.end method

.method public static final synthetic b(Lj3/e;)Ld3/c;
    .locals 0

    iget-object p0, p0, Lj3/e;->d:Ld3/c;

    return-object p0
.end method

.method public static final synthetic c(Lj3/e;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lj3/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic d(Lj3/e;)I
    .locals 0

    iget p0, p0, Lj3/e;->c:I

    return p0
.end method

.method public static final synthetic e(Lj3/e;)I
    .locals 0

    iget p0, p0, Lj3/e;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lg3/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lj3/e$a;

    invoke-direct {v0, p0}, Lj3/e$a;-><init>(Lj3/e;)V

    return-object v0
.end method

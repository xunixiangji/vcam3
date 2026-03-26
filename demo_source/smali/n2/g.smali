.class final Ln2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Ln2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/e<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ln2/e$a;


# direct methods
.method constructor <init>(Ln2/e;Ln2/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e<",
            "*>;",
            "Ln2/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/g;->b:Ln2/e;

    iput-object p2, p0, Ln2/g;->c:Ln2/e$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ln2/g;->c:Ln2/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ln2/g;->b:Ln2/e;

    invoke-interface {v0, v1, p1}, Ln2/e$a;->a(Ln2/e;Landroid/view/View;)V

    return-void
.end method

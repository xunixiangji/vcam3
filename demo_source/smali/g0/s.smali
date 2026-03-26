.class Lg0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/view/View;",
            "Lg0/r;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lk/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/a;

    invoke-direct {v0}, Lk/a;-><init>()V

    iput-object v0, p0, Lg0/s;->a:Lk/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lg0/s;->b:Landroid/util/SparseArray;

    new-instance v0, Lk/d;

    invoke-direct {v0}, Lk/d;-><init>()V

    iput-object v0, p0, Lg0/s;->c:Lk/d;

    new-instance v0, Lk/a;

    invoke-direct {v0}, Lk/a;-><init>()V

    iput-object v0, p0, Lg0/s;->d:Lk/a;

    return-void
.end method

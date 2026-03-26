.class Lg0/n$a$a;
.super Lg0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/n$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk/a;

.field final synthetic b:Lg0/n$a;


# direct methods
.method constructor <init>(Lg0/n$a;Lk/a;)V
    .locals 0

    iput-object p1, p0, Lg0/n$a$a;->b:Lg0/n$a;

    iput-object p2, p0, Lg0/n$a$a;->a:Lk/a;

    invoke-direct {p0}, Lg0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lg0/l;)V
    .locals 2

    iget-object v0, p0, Lg0/n$a$a;->a:Lk/a;

    iget-object v1, p0, Lg0/n$a$a;->b:Lg0/n$a;

    iget-object v1, v1, Lg0/n$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lk/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lg0/l;->Q(Lg0/l$f;)Lg0/l;

    return-void
.end method

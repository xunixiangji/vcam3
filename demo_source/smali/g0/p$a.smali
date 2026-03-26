.class Lg0/p$a;
.super Lg0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/p;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg0/l;

.field final synthetic b:Lg0/p;


# direct methods
.method constructor <init>(Lg0/p;Lg0/l;)V
    .locals 0

    iput-object p1, p0, Lg0/p$a;->b:Lg0/p;

    iput-object p2, p0, Lg0/p$a;->a:Lg0/l;

    invoke-direct {p0}, Lg0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lg0/l;)V
    .locals 1

    iget-object v0, p0, Lg0/p$a;->a:Lg0/l;

    invoke-virtual {v0}, Lg0/l;->U()V

    invoke-virtual {p1, p0}, Lg0/l;->Q(Lg0/l$f;)Lg0/l;

    return-void
.end method

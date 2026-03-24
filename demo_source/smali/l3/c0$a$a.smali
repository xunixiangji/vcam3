.class final Ll3/c0$a$a;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll3/c0$a;->k(Lq3/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Ll3/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lq3/c;


# direct methods
.method constructor <init>(Lq3/c;)V
    .locals 0

    iput-object p1, p0, Ll3/c0$a$a;->c:Lq3/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ll3/u;
    .locals 1

    iget-object v0, p0, Ll3/c0$a$a;->c:Lq3/c;

    invoke-virtual {v0}, Lq3/c;->u()Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll3/c0$a$a;->c()Ll3/u;

    move-result-object v0

    return-object v0
.end method

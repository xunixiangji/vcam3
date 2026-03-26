.class final Lj3/i$b$a;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/i$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/b<",
        "Ljava/lang/Integer;",
        "Lj3/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lj3/i$b;


# direct methods
.method constructor <init>(Lj3/i$b;)V
    .locals 0

    iput-object p1, p0, Lj3/i$b$a;->c:Lj3/i$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj3/i$b$a;->c(I)Lj3/f;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lj3/f;
    .locals 1

    iget-object v0, p0, Lj3/i$b$a;->c:Lj3/i$b;

    invoke-virtual {v0, p1}, Lj3/i$b;->get(I)Lj3/f;

    move-result-object p1

    return-object p1
.end method

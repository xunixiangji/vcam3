.class final Lj3/v$c;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/v;->j0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Li3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/b<",
        "Lg3/f;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lj3/v$c;->c:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg3/f;

    invoke-virtual {p0, p1}, Lj3/v$c;->c(Lg3/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lg3/f;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/v$c;->c:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lj3/v;->n0(Ljava/lang/CharSequence;Lg3/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

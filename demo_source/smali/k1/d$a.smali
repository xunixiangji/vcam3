.class Lk1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk1/d;->a()Ln1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lk1/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lk1/d;


# direct methods
.method constructor <init>(Lk1/d;)V
    .locals 0

    iput-object p1, p0, Lk1/d$a;->b:Lk1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk1/f;Lk1/f;)I
    .locals 0

    invoke-virtual {p1}, Lk1/f;->e()I

    move-result p1

    invoke-virtual {p2}, Lk1/f;->e()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/f;

    check-cast p2, Lk1/f;

    invoke-virtual {p0, p1, p2}, Lk1/d$a;->a(Lk1/f;Lk1/f;)I

    move-result p1

    return p1
.end method

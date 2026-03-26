.class final Lc0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc0/b$b<",
        "Lk/h<",
        "Lz/c;",
        ">;",
        "Lz/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk/h;

    invoke-virtual {p0, p1}, Lc0/a$b;->d(Lk/h;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk/h;

    invoke-virtual {p0, p1, p2}, Lc0/a$b;->c(Lk/h;I)Lz/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lk/h;I)Lz/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/h<",
            "Lz/c;",
            ">;I)",
            "Lz/c;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lk/h;->n(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/c;

    return-object p1
.end method

.method public d(Lk/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/h<",
            "Lz/c;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lk/h;->m()I

    move-result p1

    return p1
.end method

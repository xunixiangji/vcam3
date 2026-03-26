.class final Lh2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lh2/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh2/e$a;)V
    .locals 0

    invoke-direct {p0}, Lh2/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh2/d;Lh2/d;)I
    .locals 0

    invoke-virtual {p1}, Lh2/d;->i()F

    move-result p1

    invoke-virtual {p2}, Lh2/d;->i()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh2/d;

    check-cast p2, Lh2/d;

    invoke-virtual {p0, p1, p2}, Lh2/e$b;->a(Lh2/d;Lh2/d;)I

    move-result p1

    return p1
.end method

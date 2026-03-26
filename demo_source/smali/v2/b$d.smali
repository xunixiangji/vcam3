.class final Lv2/b$d;
.super Lv2/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lv2/b<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final c:Lv2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Lv2/b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/b<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lv2/b;-><init>()V

    iput-object p1, p0, Lv2/b$d;->c:Lv2/b;

    iput p2, p0, Lv2/b$d;->d:I

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    invoke-virtual {p1}, Lv2/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lv2/b$a;->d(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lv2/b$d;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lv2/b$d;->e:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lv2/b;->b:Lv2/b$a;

    iget v1, p0, Lv2/b$d;->e:I

    invoke-virtual {v0, p1, v1}, Lv2/b$a;->b(II)V

    iget-object v0, p0, Lv2/b$d;->c:Lv2/b;

    iget v1, p0, Lv2/b$d;->d:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lv2/b;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

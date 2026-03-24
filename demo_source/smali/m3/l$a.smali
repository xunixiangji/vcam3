.class public final Lm3/l$a;
.super Ll3/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/l;->c([BLl3/x;II)Ll3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ll3/x;

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:I


# direct methods
.method constructor <init>(Ll3/x;I[BI)V
    .locals 0

    iput-object p1, p0, Lm3/l$a;->b:Ll3/x;

    iput p2, p0, Lm3/l$a;->c:I

    iput-object p3, p0, Lm3/l$a;->d:[B

    iput p4, p0, Lm3/l$a;->e:I

    invoke-direct {p0}, Ll3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lm3/l$a;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Ll3/x;
    .locals 1

    iget-object v0, p0, Lm3/l$a;->b:Ll3/x;

    return-object v0
.end method

.method public f(Lb4/e;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm3/l$a;->d:[B

    iget v1, p0, Lm3/l$a;->e:I

    iget v2, p0, Lm3/l$a;->c:I

    invoke-interface {p1, v0, v1, v2}, Lb4/e;->d([BII)Lb4/e;

    return-void
.end method

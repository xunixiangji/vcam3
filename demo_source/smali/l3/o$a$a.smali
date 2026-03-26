.class final Ll3/o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll3/v;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/v;",
            ")",
            "Ljava/util/List<",
            "Ll3/n;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lv2/m;->i()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ll3/v;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/v;",
            "Ljava/util/List<",
            "Ll3/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookies"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

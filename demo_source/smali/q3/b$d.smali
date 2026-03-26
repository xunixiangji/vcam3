.class final Lq3/b$d;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b;->k(Ljavax/net/ssl/SSLSocket;Ll3/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ll3/g;

.field final synthetic d:Ll3/t;

.field final synthetic e:Ll3/a;


# direct methods
.method constructor <init>(Ll3/g;Ll3/t;Ll3/a;)V
    .locals 0

    iput-object p1, p0, Lq3/b$d;->c:Ll3/g;

    iput-object p2, p0, Lq3/b$d;->d:Ll3/t;

    iput-object p3, p0, Lq3/b$d;->e:Ll3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq3/b$d;->c:Ll3/g;

    invoke-virtual {v0}, Ll3/g;->d()La4/c;

    move-result-object v0

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lq3/b$d;->d:Ll3/t;

    invoke-virtual {v1}, Ll3/t;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lq3/b$d;->e:Ll3/a;

    invoke-virtual {v2}, Ll3/a;->l()Ll3/v;

    move-result-object v2

    invoke-virtual {v2}, Ll3/v;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La4/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq3/b$d;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

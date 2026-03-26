.class public final Ll3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/v$a;,
        Ll3/v$b;
    }
.end annotation


# static fields
.field public static final j:Ll3/v$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/v$b;-><init>(Le3/d;)V

    sput-object v0, Ll3/v;->j:Ll3/v$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "scheme"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p9, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/v;->a:Ljava/lang/String;

    iput-object p2, p0, Ll3/v;->b:Ljava/lang/String;

    iput-object p3, p0, Ll3/v;->c:Ljava/lang/String;

    iput-object p4, p0, Ll3/v;->d:Ljava/lang/String;

    iput p5, p0, Ll3/v;->e:I

    iput-object p6, p0, Ll3/v;->f:Ljava/util/List;

    iput-object p7, p0, Ll3/v;->g:Ljava/util/List;

    iput-object p8, p0, Ll3/v;->h:Ljava/lang/String;

    iput-object p9, p0, Ll3/v;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->t(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->u(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->v(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->w(Ll3/v;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->x(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->d(Ll3/v;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->y(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/v;->g:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->e(Ll3/v;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Ll3/v;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-static {v0, v1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()Ll3/v$a;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->g(Ll3/v;)Ll3/v$a;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->h(Ll3/v;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Ll3/v;->e:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->z(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->l(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;)Ll3/v;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->m(Ll3/v;Ljava/lang/String;)Ll3/v;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/net/URI;
    .locals 4

    invoke-virtual {p0}, Ll3/v;->l()Ll3/v$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/v$a;->o()Ll3/v$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/v$a;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lj3/j;

    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-direct {v2, v3}, Lj3/j;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lj3/j;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->p(Ll3/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/net/URL;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ll3/v;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v;->b:Ljava/lang/String;

    return-object v0
.end method

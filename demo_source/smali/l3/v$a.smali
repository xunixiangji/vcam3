.class public final Ll3/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll3/v$a;->b:Ljava/lang/String;

    iput-object v0, p0, Ll3/v$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Ll3/v$a;->e:I

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/m;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll3/v$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ll3/v;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->a(Ll3/v$a;)Ll3/v;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->c(Ll3/v$a;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/v$a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/v$a;->g:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Ll3/v$a;->e:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/v$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->f(Ll3/v$a;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ll3/v;Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "input"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1, p2}, Lm3/a;->i(Ll3/v$a;Ll3/v;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->j(Ll3/v$a;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final n(I)Ll3/v$a;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->k(Ll3/v$a;I)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final o()Ll3/v$a;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ll3/v$a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lj3/j;

    const-string v4, "[\"<>^`{|}]"

    invoke-direct {v3, v4}, Lj3/j;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lj3/j;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Ll3/v$a;->d:Ljava/lang/String;

    iget-object v1, v0, Ll3/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    iget-object v5, v0, Ll3/v$a;->f:Ljava/util/List;

    sget-object v6, Lm3/b;->a:Lm3/b;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x63

    const/16 v16, 0x0

    const-string v10, "[]"

    invoke-static/range {v6 .. v16}, Lm3/b;->b(Lm3/b;Ljava/lang/String;IILjava/lang/String;ZZZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Ll3/v$a;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v6, Lm3/b;->a:Lm3/b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x43

    const/16 v16, 0x0

    const-string v10, "\\^`{|}"

    invoke-static/range {v6 .. v16}, Lm3/b;->b(Lm3/b;Ljava/lang/String;IILjava/lang/String;ZZZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-object v5, v2

    :goto_3
    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, v0, Ll3/v$a;->h:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v5, Lm3/b;->a:Lm3/b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x23

    const/4 v15, 0x0

    const-string v9, " \"#<>\\^`{|}"

    invoke-static/range {v5 .. v15}, Lm3/b;->b(Lm3/b;Ljava/lang/String;IILjava/lang/String;ZZZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v2, v0, Ll3/v$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->n(Ll3/v$a;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/v$a;->h:Ljava/lang/String;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/v$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll3/v$a;->g:Ljava/util/List;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/v$a;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->q(Ll3/v$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/v$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Ll3/v$a;->e:I

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/v$a;->a:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)Ll3/v$a;
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/a;->a:Lm3/a;

    invoke-virtual {v0, p0, p1}, Lm3/a;->r(Ll3/v$a;Ljava/lang/String;)Ll3/v$a;

    move-result-object p1

    return-object p1
.end method

.class public final Ll3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/c0$a;
    }
.end annotation


# instance fields
.field private final b:Ll3/a0;

.field private final c:Ll3/z;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ll3/t;

.field private final g:Ll3/u;

.field private final h:Ll3/d0;

.field private final i:Ll3/c0;

.field private final j:Ll3/c0;

.field private final k:Ll3/c0;

.field private final l:J

.field private final m:J

.field private final n:Lq3/c;

.field private o:Ld3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/a<",
            "Ll3/u;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ll3/d;

.field private final q:Z

.field private final r:Z


# direct methods
.method public constructor <init>(Ll3/a0;Ll3/z;Ljava/lang/String;ILl3/t;Ll3/u;Ll3/d0;Ll3/c0;Ll3/c0;Ll3/c0;JJLq3/c;Ld3/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a0;",
            "Ll3/z;",
            "Ljava/lang/String;",
            "I",
            "Ll3/t;",
            "Ll3/u;",
            "Ll3/d0;",
            "Ll3/c0;",
            "Ll3/c0;",
            "Ll3/c0;",
            "JJ",
            "Lq3/c;",
            "Ld3/a<",
            "Ll3/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p16

    const-string v7, "request"

    invoke-static {p1, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "protocol"

    invoke-static {p2, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "message"

    invoke-static {p3, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "headers"

    invoke-static {p6, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "body"

    invoke-static {p7, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "trailersFn"

    invoke-static {v6, v7}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ll3/c0;->b:Ll3/a0;

    iput-object v2, v0, Ll3/c0;->c:Ll3/z;

    iput-object v3, v0, Ll3/c0;->d:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Ll3/c0;->e:I

    move-object v1, p5

    iput-object v1, v0, Ll3/c0;->f:Ll3/t;

    iput-object v4, v0, Ll3/c0;->g:Ll3/u;

    iput-object v5, v0, Ll3/c0;->h:Ll3/d0;

    move-object/from16 v1, p8

    iput-object v1, v0, Ll3/c0;->i:Ll3/c0;

    move-object/from16 v1, p9

    iput-object v1, v0, Ll3/c0;->j:Ll3/c0;

    move-object/from16 v1, p10

    iput-object v1, v0, Ll3/c0;->k:Ll3/c0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Ll3/c0;->l:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Ll3/c0;->m:J

    move-object/from16 v1, p15

    iput-object v1, v0, Ll3/c0;->n:Lq3/c;

    iput-object v6, v0, Ll3/c0;->o:Ld3/a;

    invoke-static {p0}, Lm3/o;->t(Ll3/c0;)Z

    move-result v1

    iput-boolean v1, v0, Ll3/c0;->q:Z

    invoke-static {p0}, Lm3/o;->s(Ll3/c0;)Z

    move-result v1

    iput-boolean v1, v0, Ll3/c0;->r:Z

    return-void
.end method

.method public static synthetic R(Ll3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ll3/c0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Ll3/c0;)Ld3/a;
    .locals 0

    iget-object p0, p0, Ll3/c0;->o:Ld3/a;

    return-object p0
.end method


# virtual methods
.method public final I()Ll3/d0;
    .locals 1

    iget-object v0, p0, Ll3/c0;->h:Ll3/d0;

    return-object v0
.end method

.method public final J()Ll3/d;
    .locals 1

    invoke-static {p0}, Lm3/o;->r(Ll3/c0;)Ll3/d;

    move-result-object v0

    return-object v0
.end method

.method public final K()Ll3/c0;
    .locals 1

    iget-object v0, p0, Ll3/c0;->j:Ll3/c0;

    return-object v0
.end method

.method public final L()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll3/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll3/c0;->g:Ll3/u;

    iget v1, p0, Ll3/c0;->e:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_0

    invoke-static {}, Lv2/m;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v1, "WWW-Authenticate"

    :goto_0
    invoke-static {v0, v1}, Lr3/e;->a(Ll3/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final M()I
    .locals 1

    iget v0, p0, Ll3/c0;->e:I

    return v0
.end method

.method public final N()Lq3/c;
    .locals 1

    iget-object v0, p0, Ll3/c0;->n:Lq3/c;

    return-object v0
.end method

.method public final O()Ll3/d;
    .locals 1

    iget-object v0, p0, Ll3/c0;->p:Ll3/d;

    return-object v0
.end method

.method public final P()Ll3/t;
    .locals 1

    iget-object v0, p0, Ll3/c0;->f:Ll3/t;

    return-object v0
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/o;->g(Ll3/c0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final S()Ll3/u;
    .locals 1

    iget-object v0, p0, Ll3/c0;->g:Ll3/u;

    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/c0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final U()Ll3/c0;
    .locals 1

    iget-object v0, p0, Ll3/c0;->i:Ll3/c0;

    return-object v0
.end method

.method public final V()Ll3/c0$a;
    .locals 1

    invoke-static {p0}, Lm3/o;->l(Ll3/c0;)Ll3/c0$a;

    move-result-object v0

    return-object v0
.end method

.method public final W()Ll3/c0;
    .locals 1

    iget-object v0, p0, Ll3/c0;->k:Ll3/c0;

    return-object v0
.end method

.method public final X()Ll3/z;
    .locals 1

    iget-object v0, p0, Ll3/c0;->c:Ll3/z;

    return-object v0
.end method

.method public final Y()J
    .locals 2

    iget-wide v0, p0, Ll3/c0;->m:J

    return-wide v0
.end method

.method public final Z()Ll3/a0;
    .locals 1

    iget-object v0, p0, Ll3/c0;->b:Ll3/a0;

    return-object v0
.end method

.method public final a0()J
    .locals 2

    iget-wide v0, p0, Ll3/c0;->l:J

    return-wide v0
.end method

.method public final b0(Ll3/d;)V
    .locals 0

    iput-object p1, p0, Ll3/c0;->p:Ll3/d;

    return-void
.end method

.method public close()V
    .locals 0

    invoke-static {p0}, Lm3/o;->e(Ll3/c0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lm3/o;->p(Ll3/c0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

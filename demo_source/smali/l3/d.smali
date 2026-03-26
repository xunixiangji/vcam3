.class public final Ll3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/d$a;,
        Ll3/d$b;
    }
.end annotation


# static fields
.field public static final n:Ll3/d$b;

.field public static final o:Ll3/d;

.field public static final p:Ll3/d;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/d$b;-><init>(Le3/d;)V

    sput-object v0, Ll3/d;->n:Ll3/d$b;

    invoke-static {v0}, Lm3/f;->d(Ll3/d$b;)Ll3/d;

    move-result-object v1

    sput-object v1, Ll3/d;->o:Ll3/d;

    invoke-static {v0}, Lm3/f;->c(Ll3/d$b;)Ll3/d;

    move-result-object v0

    sput-object v0, Ll3/d;->p:Ll3/d;

    return-void
.end method

.method public constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/d;->a:Z

    iput-boolean p2, p0, Ll3/d;->b:Z

    iput p3, p0, Ll3/d;->c:I

    iput p4, p0, Ll3/d;->d:I

    iput-boolean p5, p0, Ll3/d;->e:Z

    iput-boolean p6, p0, Ll3/d;->f:Z

    iput-boolean p7, p0, Ll3/d;->g:Z

    iput p8, p0, Ll3/d;->h:I

    iput p9, p0, Ll3/d;->i:I

    iput-boolean p10, p0, Ll3/d;->j:Z

    iput-boolean p11, p0, Ll3/d;->k:Z

    iput-boolean p12, p0, Ll3/d;->l:Z

    iput-object p13, p0, Ll3/d;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->l:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->e:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->f:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Ll3/d;->c:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ll3/d;->h:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ll3/d;->i:I

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->g:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->a:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->b:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->k:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d;->j:Z

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Ll3/d;->d:I

    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll3/d;->m:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lm3/f;->i(Ll3/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

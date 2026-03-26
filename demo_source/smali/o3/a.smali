.class public final Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/a$a;
    }
.end annotation


# static fields
.field public static final a:Lo3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/a$a;-><init>(Le3/d;)V

    sput-object v0, Lo3/a;->a:Lo3/a$a;

    return-void
.end method

.method public constructor <init>(Ll3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll3/w$a;)Ll3/c0;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ll3/w$a;->call()Ll3/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lo3/b$b;

    invoke-interface {p1}, Ll3/w$a;->b()Ll3/a0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lo3/b$b;-><init>(JLl3/a0;Ll3/c0;)V

    invoke-virtual {v3}, Lo3/b$b;->b()Lo3/b;

    move-result-object v1

    invoke-virtual {v1}, Lo3/b;->b()Ll3/a0;

    move-result-object v2

    invoke-virtual {v1}, Lo3/b;->a()Ll3/c0;

    move-result-object v1

    instance-of v3, v0, Lq3/h;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lq3/h;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lq3/h;->n()Ll3/s;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Ll3/s;->b:Ll3/s;

    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    new-instance v1, Ll3/c0$a;

    invoke-direct {v1}, Ll3/c0$a;-><init>()V

    invoke-interface {p1}, Ll3/w$a;->b()Ll3/a0;

    move-result-object p1

    invoke-virtual {v1, p1}, Ll3/c0$a;->q(Ll3/a0;)Ll3/c0$a;

    move-result-object p1

    sget-object v1, Ll3/z;->e:Ll3/z;

    invoke-virtual {p1, v1}, Ll3/c0$a;->o(Ll3/z;)Ll3/c0$a;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Ll3/c0$a;->e(I)Ll3/c0$a;

    move-result-object p1

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v1}, Ll3/c0$a;->l(Ljava/lang/String;)Ll3/c0$a;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Ll3/c0$a;->r(J)Ll3/c0$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ll3/c0$a;->p(J)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ll3/s;->z(Ll3/e;Ll3/c0;)V

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object p1

    invoke-static {v1}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object v1

    invoke-virtual {p1, v1}, Ll3/c0$a;->d(Ll3/c0;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ll3/s;->b(Ll3/e;Ll3/c0;)V

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v3, v0, v1}, Ll3/s;->a(Ll3/e;Ll3/c0;)V

    :cond_5
    :try_start_0
    invoke-interface {p1, v2}, Ll3/w$a;->a(Ll3/a0;)Ll3/c0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ll3/c0;->M()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {v1}, Ll3/c0;->I()Ll3/d0;

    move-result-object v0

    invoke-static {v0}, Lm3/p;->f(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object v0

    sget-object v2, Lo3/a;->a:Lo3/a$a;

    invoke-virtual {v1}, Ll3/c0;->S()Ll3/u;

    move-result-object v3

    invoke-virtual {p1}, Ll3/c0;->S()Ll3/u;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lo3/a$a;->a(Lo3/a$a;Ll3/u;Ll3/u;)Ll3/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll3/c0$a;->j(Ll3/u;)Ll3/c0$a;

    move-result-object v0

    invoke-virtual {p1}, Ll3/c0;->a0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ll3/c0$a;->r(J)Ll3/c0$a;

    move-result-object v0

    invoke-virtual {p1}, Ll3/c0;->Y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ll3/c0$a;->p(J)Ll3/c0$a;

    move-result-object v0

    invoke-static {v1}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/c0$a;->d(Ll3/c0;)Ll3/c0$a;

    move-result-object v0

    invoke-static {p1}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/c0$a;->m(Ll3/c0;)Ll3/c0$a;

    move-result-object v0

    invoke-virtual {v0}, Ll3/c0$a;->c()Ll3/c0;

    invoke-virtual {p1}, Ll3/c0;->I()Ll3/d0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/d0;->close()V

    invoke-static {v5}, Le3/f;->b(Ljava/lang/Object;)V

    throw v5

    :cond_8
    :goto_1
    invoke-static {p1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ll3/c0;->V()Ll3/c0$a;

    move-result-object v0

    if-eqz v1, :cond_9

    invoke-static {v1}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object v5

    :cond_9
    invoke-virtual {v0, v5}, Ll3/c0$a;->d(Ll3/c0;)Ll3/c0$a;

    move-result-object v0

    invoke-static {p1}, Lm3/o;->u(Ll3/c0;)Ll3/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll3/c0$a;->m(Ll3/c0;)Ll3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Ll3/c0$a;->c()Ll3/c0;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

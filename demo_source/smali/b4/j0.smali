.class public final Lb4/j0;
.super Lb4/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/j0$a;
    }
.end annotation


# static fields
.field private static final i:Lb4/j0$a;

.field private static final j:Lb4/y;


# instance fields
.field private final e:Lb4/y;

.field private final f:Lb4/j;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb4/y;",
            "Lc4/h;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lb4/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb4/j0$a;-><init>(Le3/d;)V

    sput-object v0, Lb4/j0;->i:Lb4/j0$a;

    sget-object v0, Lb4/y;->c:Lb4/y$a;

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lb4/y$a;->d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;

    move-result-object v0

    sput-object v0, Lb4/j0;->j:Lb4/y;

    return-void
.end method

.method public constructor <init>(Lb4/y;Lb4/j;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/y;",
            "Lb4/j;",
            "Ljava/util/Map<",
            "Lb4/y;",
            "Lc4/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "zipPath"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p3, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb4/j;-><init>()V

    iput-object p1, p0, Lb4/j0;->e:Lb4/y;

    iput-object p2, p0, Lb4/j0;->f:Lb4/j;

    iput-object p3, p0, Lb4/j0;->g:Ljava/util/Map;

    iput-object p4, p0, Lb4/j0;->h:Ljava/lang/String;

    return-void
.end method

.method private final c(Lb4/y;)Lb4/y;
    .locals 2

    sget-object v0, Lb4/j0;->j:Lb4/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lb4/y;->j(Lb4/y;Z)Lb4/y;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lb4/y;)Lb4/h;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lb4/y;)Lb4/g0;
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb4/j0;->c(Lb4/y;)Lb4/y;

    move-result-object v0

    iget-object v1, p0, Lb4/j0;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc4/h;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lb4/j0;->f:Lb4/j;

    iget-object v1, p0, Lb4/j0;->e:Lb4/y;

    invoke-virtual {p1, v1}, Lb4/j;->a(Lb4/y;)Lb4/h;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lc4/h;->e()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lb4/h;->R(J)Lb4/g0;

    move-result-object v2

    invoke-static {v2}, Lb4/t;->b(Lb4/g0;)Lb4/f;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {v2, p1}, Lu2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    invoke-static {v2}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Lc4/i;->j(Lb4/f;)V

    invoke-virtual {v0}, Lc4/h;->d()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-instance p1, Lc4/f;

    invoke-virtual {v0}, Lc4/h;->f()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4, v1}, Lc4/f;-><init>(Lb4/g0;JZ)V

    goto :goto_2

    :cond_2
    new-instance p1, Lb4/o;

    new-instance v3, Lc4/f;

    invoke-virtual {v0}, Lc4/h;->c()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5, v1}, Lc4/f;-><init>(Lb4/g0;JZ)V

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v3, v2}, Lb4/o;-><init>(Lb4/g0;Ljava/util/zip/Inflater;)V

    new-instance v1, Lc4/f;

    invoke-virtual {v0}, Lc4/h;->f()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Lc4/f;-><init>(Lb4/g0;JZ)V

    move-object p1, v1

    :goto_2
    return-object p1

    :cond_3
    throw v1

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

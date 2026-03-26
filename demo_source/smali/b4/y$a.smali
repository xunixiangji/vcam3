.class public final Lb4/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le3/d;)V
    .locals 0

    invoke-direct {p0}, Lb4/y$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lb4/y$a;Ljava/io/File;ZILjava/lang/Object;)Lb4/y;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lb4/y$a;->a(Ljava/io/File;Z)Lb4/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lb4/y$a;->b(Ljava/lang/String;Z)Lb4/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;Z)Lb4/y;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lb4/y$a;->b(Ljava/lang/String;Z)Lb4/y;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Z)Lb4/y;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lc4/c;->k(Ljava/lang/String;Z)Lb4/y;

    move-result-object p1

    return-object p1
.end method

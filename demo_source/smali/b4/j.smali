.class public abstract Lb4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/j$a;
    }
.end annotation


# static fields
.field public static final a:Lb4/j$a;

.field public static final b:Lb4/j;

.field public static final c:Lb4/y;

.field public static final d:Lb4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb4/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb4/j$a;-><init>(Le3/d;)V

    sput-object v0, Lb4/j;->a:Lb4/j$a;

    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lb4/s;

    invoke-direct {v0}, Lb4/s;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lb4/r;

    invoke-direct {v0}, Lb4/r;-><init>()V

    :goto_0
    sput-object v0, Lb4/j;->b:Lb4/j;

    sget-object v0, Lb4/y;->c:Lb4/y$a;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProperty(...)"

    invoke-static {v2, v3}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lb4/y$a;->d(Lb4/y$a;Ljava/lang/String;ZILjava/lang/Object;)Lb4/y;

    move-result-object v0

    sput-object v0, Lb4/j;->c:Lb4/y;

    new-instance v0, Lc4/g;

    const-class v1, Lc4/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v1, "getClassLoader(...)"

    invoke-static {v2, v1}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc4/g;-><init>(Ljava/lang/ClassLoader;ZLb4/j;ILe3/d;)V

    sput-object v0, Lb4/j;->d:Lb4/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lb4/y;)Lb4/h;
.end method

.method public abstract b(Lb4/y;)Lb4/g0;
.end method

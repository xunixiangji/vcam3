.class final Lc4/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
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

    invoke-direct {p0}, Lc4/g$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc4/g$a;Lb4/y;)Z
    .locals 0

    invoke-direct {p0, p1}, Lc4/g$a;->b(Lb4/y;)Z

    move-result p0

    return p0
.end method

.method private final b(Lb4/y;)Z
    .locals 2

    invoke-virtual {p1}, Lb4/y;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".class"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lj3/l;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

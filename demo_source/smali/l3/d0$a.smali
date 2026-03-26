.class public final Ll3/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/d0;
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

    invoke-direct {p0}, Ll3/d0$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Ll3/d0$a;[BLl3/x;ILjava/lang/Object;)Ll3/d0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ll3/d0$a;->b([BLl3/x;)Ll3/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lb4/f;Ll3/x;J)Ll3/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lm3/n;->a(Lb4/f;Ll3/x;J)Ll3/d0;

    move-result-object p1

    return-object p1
.end method

.method public final b([BLl3/x;)Ll3/d0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lm3/n;->c([BLl3/x;)Ll3/d0;

    move-result-object p1

    return-object p1
.end method

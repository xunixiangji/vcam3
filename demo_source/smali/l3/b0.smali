.class public abstract Ll3/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/b0$a;
    }
.end annotation


# static fields
.field public static final a:Ll3/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/b0$a;-><init>(Le3/d;)V

    sput-object v0, Ll3/b0;->a:Ll3/b0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Ll3/x;Ljava/lang/String;)Ll3/b0;
    .locals 1

    sget-object v0, Ll3/b0;->a:Ll3/b0$a;

    invoke-virtual {v0, p0, p1}, Ll3/b0$a;->b(Ll3/x;Ljava/lang/String;)Ll3/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Ll3/x;
.end method

.method public d()Z
    .locals 1

    invoke-static {p0}, Lm3/l;->a(Ll3/b0;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-static {p0}, Lm3/l;->b(Ll3/b0;)Z

    move-result v0

    return v0
.end method

.method public abstract f(Lb4/e;)V
.end method

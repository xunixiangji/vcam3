.class public final Lt3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lt3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/c$a;

    invoke-direct {v0}, Lt3/c$a;-><init>()V

    sput-object v0, Lt3/c$a;->a:Lt3/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILu3/a;J)V
    .locals 0

    const-string p1, "windowCounter"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lu3/a;)V
    .locals 1

    const-string v0, "windowCounter"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

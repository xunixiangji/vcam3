.class public abstract Lt3/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/g$d$b;
    }
.end annotation


# static fields
.field public static final a:Lt3/g$d$b;

.field public static final b:Lt3/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/g$d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/g$d$b;-><init>(Le3/d;)V

    sput-object v0, Lt3/g$d;->a:Lt3/g$d$b;

    new-instance v0, Lt3/g$d$a;

    invoke-direct {v0}, Lt3/g$d$a;-><init>()V

    sput-object v0, Lt3/g$d;->b:Lt3/g$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt3/g;Lt3/n;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lt3/j;)V
.end method

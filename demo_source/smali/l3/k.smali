.class public abstract Ll3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/k$b;
    }
.end annotation


# static fields
.field public static final a:Ll3/k$b;

.field private static final b:Ll3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/k$b;-><init>(Le3/d;)V

    sput-object v0, Ll3/k;->a:Ll3/k$b;

    new-instance v0, Ll3/k$a;

    invoke-direct {v0}, Ll3/k$a;-><init>()V

    sput-object v0, Ll3/k;->b:Ll3/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ll3/k;
    .locals 1

    sget-object v0, Ll3/k;->b:Ll3/k;

    return-object v0
.end method


# virtual methods
.method public b(Ll3/j;Ll3/e0;Ll3/e;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "call"

    invoke-static {p3, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ll3/e0;Ll3/e;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "route"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "call"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failure"

    invoke-static {p3, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ll3/e0;Ll3/e;)V
    .locals 1

    const-string v0, "route"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "call"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ll3/j;Ll3/e;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "call"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ll3/j;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ll3/j;Ll3/e;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "call"

    invoke-static {p2, p1}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ll3/j;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

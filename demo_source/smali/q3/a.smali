.class public final Lq3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/w;


# static fields
.field public static final a:Lq3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/a;

    invoke-direct {v0}, Lq3/a;-><init>()V

    sput-object v0, Lq3/a;->a:Lq3/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll3/w$a;)Ll3/c0;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr3/g;

    invoke-virtual {p1}, Lr3/g;->g()Lq3/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq3/h;->t(Lr3/g;)Lq3/c;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lr3/g;->f(Lr3/g;ILq3/c;Ll3/a0;IIIILjava/lang/Object;)Lr3/g;

    move-result-object v0

    invoke-virtual {p1}, Lr3/g;->j()Ll3/a0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr3/g;->a(Ll3/a0;)Ll3/c0;

    move-result-object p1

    return-object p1
.end method

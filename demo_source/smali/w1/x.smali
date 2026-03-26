.class final Lw1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private final a:Lw1/v;

.field private final b:Lw1/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lw1/x;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw1/v;

    invoke-direct {v0}, Lw1/v;-><init>()V

    iput-object v0, p0, Lw1/x;->a:Lw1/v;

    new-instance v0, Lw1/w;

    invoke-direct {v0}, Lw1/w;-><init>()V

    iput-object v0, p0, Lw1/x;->b:Lw1/w;

    return-void
.end method


# virtual methods
.method a(ILn1/a;I)Lg1/q;
    .locals 2

    sget-object v0, Lw1/x;->c:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lw1/y;->o(Ln1/a;IZ[I)[I

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lw1/x;->b:Lw1/w;

    invoke-virtual {v0, p1, p2, p3}, Lw1/w;->b(ILn1/a;[I)Lg1/q;

    move-result-object p1
    :try_end_0
    .catch Lg1/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lw1/x;->a:Lw1/v;

    invoke-virtual {v0, p1, p2, p3}, Lw1/v;->b(ILn1/a;[I)Lg1/q;

    move-result-object p1

    return-object p1
.end method

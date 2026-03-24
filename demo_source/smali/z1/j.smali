.class public abstract Lz1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln1/a;

.field private final b:Lz1/s;


# direct methods
.method constructor <init>(Ln1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/j;->a:Ln1/a;

    new-instance v0, Lz1/s;

    invoke-direct {v0, p1}, Lz1/s;-><init>(Ln1/a;)V

    iput-object v0, p0, Lz1/j;->b:Lz1/s;

    return-void
.end method

.method public static a(Ln1/a;)Lz1/j;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln1/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lz1/g;

    invoke-direct {v0, p0}, Lz1/g;-><init>(Ln1/a;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ln1/a;->g(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lz1/k;

    invoke-direct {v0, p0}, Lz1/k;-><init>(Ln1/a;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lz1/s;->g(Ln1/a;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    invoke-static {p0, v0, v1}, Lz1/s;->g(Ln1/a;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lz1/s;->g(Ln1/a;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown decoder: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v5, v1}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v6, v1}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v5, v2}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v6, v2}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v5, v3}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v6, v3}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v5, v4}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, v6, v4}, Lz1/e;-><init>(Ln1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lz1/d;

    invoke-direct {v0, p0}, Lz1/d;-><init>(Ln1/a;)V

    return-object v0

    :cond_3
    new-instance v0, Lz1/c;

    invoke-direct {v0, p0}, Lz1/c;-><init>(Ln1/a;)V

    return-object v0

    :cond_4
    new-instance v0, Lz1/b;

    invoke-direct {v0, p0}, Lz1/b;-><init>(Ln1/a;)V

    return-object v0

    :cond_5
    new-instance v0, Lz1/a;

    invoke-direct {v0, p0}, Lz1/a;-><init>(Ln1/a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final b()Lz1/s;
    .locals 1

    iget-object v0, p0, Lz1/j;->b:Lz1/s;

    return-object v0
.end method

.method protected final c()Ln1/a;
    .locals 1

    iget-object v0, p0, Lz1/j;->a:Ln1/a;

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

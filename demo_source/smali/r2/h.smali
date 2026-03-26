.class public Lr2/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private b([B)V
    .locals 1

    const-string p1, "AsyncTask"

    const-string v0, "test"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected varargs a([[B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lr2/h;->b([B)V

    const-string p1, "test"

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lr2/h;->a([[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

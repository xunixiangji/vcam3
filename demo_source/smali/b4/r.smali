.class public Lb4/r;
.super Lb4/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb4/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb4/y;)Lb4/h;
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb4/q;

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lb4/y;->m()Ljava/io/File;

    move-result-object p1

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1}, Lb4/q;-><init>(ZLjava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public b(Lb4/y;)Lb4/g0;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb4/y;->m()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lb4/t;->e(Ljava/io/File;)Lb4/g0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JvmSystemFileSystem"

    return-object v0
.end method

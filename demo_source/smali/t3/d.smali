.class public final Lt3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/d$a;
    }
.end annotation


# static fields
.field public static final d:Lt3/d$a;

.field public static final e:Lb4/g;

.field public static final f:Lb4/g;

.field public static final g:Lb4/g;

.field public static final h:Lb4/g;

.field public static final i:Lb4/g;

.field public static final j:Lb4/g;


# instance fields
.field public final a:Lb4/g;

.field public final b:Lb4/g;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/d$a;-><init>(Le3/d;)V

    sput-object v0, Lt3/d;->d:Lt3/d$a;

    sget-object v0, Lb4/g;->e:Lb4/g$a;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v1

    sput-object v1, Lt3/d;->e:Lb4/g;

    const-string v1, ":status"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v1

    sput-object v1, Lt3/d;->f:Lb4/g;

    const-string v1, ":method"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v1

    sput-object v1, Lt3/d;->g:Lb4/g;

    const-string v1, ":path"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v1

    sput-object v1, Lt3/d;->h:Lb4/g;

    const-string v1, ":scheme"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v1

    sput-object v1, Lt3/d;->i:Lb4/g;

    const-string v1, ":authority"

    invoke-virtual {v0, v1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object v0

    sput-object v0, Lt3/d;->j:Lb4/g;

    return-void
.end method

.method public constructor <init>(Lb4/g;Lb4/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/d;->a:Lb4/g;

    iput-object p2, p0, Lt3/d;->b:Lb4/g;

    invoke-virtual {p1}, Lb4/g;->y()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lb4/g;->y()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lt3/d;->c:I

    return-void
.end method

.method public constructor <init>(Lb4/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb4/g;->e:Lb4/g$a;

    invoke-virtual {v0, p2}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt3/d;-><init>(Lb4/g;Lb4/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb4/g;->e:Lb4/g$a;

    invoke-virtual {v0, p1}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object p1

    invoke-virtual {v0, p2}, Lb4/g$a;->c(Ljava/lang/String;)Lb4/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt3/d;-><init>(Lb4/g;Lb4/g;)V

    return-void
.end method


# virtual methods
.method public final a()Lb4/g;
    .locals 1

    iget-object v0, p0, Lt3/d;->a:Lb4/g;

    return-object v0
.end method

.method public final b()Lb4/g;
    .locals 1

    iget-object v0, p0, Lt3/d;->b:Lb4/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt3/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt3/d;

    iget-object v1, p0, Lt3/d;->a:Lb4/g;

    iget-object v3, p1, Lt3/d;->a:Lb4/g;

    invoke-static {v1, v3}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lt3/d;->b:Lb4/g;

    iget-object p1, p1, Lt3/d;->b:Lb4/g;

    invoke-static {v1, p1}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lt3/d;->a:Lb4/g;

    invoke-virtual {v0}, Lb4/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt3/d;->b:Lb4/g;

    invoke-virtual {v1}, Lb4/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt3/d;->a:Lb4/g;

    invoke-virtual {v1}, Lb4/g;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt3/d;->b:Lb4/g;

    invoke-virtual {v1}, Lb4/g;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

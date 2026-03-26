.class public final Lr3/h;
.super Ll3/d0;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lb4/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLb4/f;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ll3/d0;-><init>()V

    iput-object p1, p0, Lr3/h;->c:Ljava/lang/String;

    iput-wide p2, p0, Lr3/h;->d:J

    iput-object p4, p0, Lr3/h;->e:Lb4/f;

    return-void
.end method


# virtual methods
.method public J()J
    .locals 2

    iget-wide v0, p0, Lr3/h;->d:J

    return-wide v0
.end method

.method public K()Ll3/x;
    .locals 2

    iget-object v0, p0, Lr3/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ll3/x;->e:Ll3/x$a;

    invoke-virtual {v1, v0}, Ll3/x$a;->a(Ljava/lang/String;)Ll3/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public L()Lb4/f;
    .locals 1

    iget-object v0, p0, Lr3/h;->e:Lb4/f;

    return-object v0
.end method

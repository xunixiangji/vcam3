.class public final Lm3/n$a;
.super Ll3/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/n;->a(Lb4/f;Ll3/x;J)Ll3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Ll3/x;

.field final synthetic d:J

.field final synthetic e:Lb4/f;


# direct methods
.method constructor <init>(Ll3/x;JLb4/f;)V
    .locals 0

    iput-object p1, p0, Lm3/n$a;->c:Ll3/x;

    iput-wide p2, p0, Lm3/n$a;->d:J

    iput-object p4, p0, Lm3/n$a;->e:Lb4/f;

    invoke-direct {p0}, Ll3/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public J()J
    .locals 2

    iget-wide v0, p0, Lm3/n$a;->d:J

    return-wide v0
.end method

.method public K()Ll3/x;
    .locals 1

    iget-object v0, p0, Lm3/n$a;->c:Ll3/x;

    return-object v0
.end method

.method public L()Lb4/f;
    .locals 1

    iget-object v0, p0, Lm3/n$a;->e:Lb4/f;

    return-object v0
.end method

.class public Lk2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:J

.field public d:Ll2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/d<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Ll2/c;

.field public f:Ll2/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk2/m;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk2/m;->c:J

    return-void
.end method

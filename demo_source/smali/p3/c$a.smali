.class public final Lp3/c$a;
.super Lp3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/c;->c(Ljava/lang/String;JZLd3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ld3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/a<",
            "Lu2/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ZLd3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ld3/a<",
            "Lu2/l;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lp3/c$a;->e:Ld3/a;

    invoke-direct {p0, p1, p2}, Lp3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object v0, p0, Lp3/c$a;->e:Ld3/a;

    invoke-interface {v0}, Ld3/a;->d()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method

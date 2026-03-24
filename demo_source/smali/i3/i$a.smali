.class public final Li3/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li3/i;->a(Li3/c;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lf3/a;"
    }
.end annotation


# instance fields
.field final synthetic b:Li3/c;


# direct methods
.method public constructor <init>(Li3/c;)V
    .locals 0

    iput-object p1, p0, Li3/i$a;->b:Li3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Li3/i$a;->b:Li3/c;

    invoke-interface {v0}, Li3/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

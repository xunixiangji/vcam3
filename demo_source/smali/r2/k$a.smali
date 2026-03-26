.class Lr2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr2/k;->b([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[B

.field final synthetic c:Lr2/k;


# direct methods
.method constructor <init>(Lr2/k;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr2/k$a;->c:Lr2/k;

    iput-object p2, p0, Lr2/k$a;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lr2/k$a;->c:Lr2/k;

    iget-object v1, p0, Lr2/k$a;->b:[B

    invoke-static {v0, v1}, Lr2/k;->a(Lr2/k;[B)V

    return-void
.end method

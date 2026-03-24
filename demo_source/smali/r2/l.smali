.class public final synthetic Lr2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/nvshen/chmp4/m;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/nvshen/chmp4/m;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/l;->b:Lcom/nvshen/chmp4/m;

    iput-object p2, p0, Lr2/l;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr2/l;->b:Lcom/nvshen/chmp4/m;

    iget-object v1, p0, Lr2/l;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/nvshen/chmp4/m;->p1(Lcom/nvshen/chmp4/m;Landroid/widget/TextView;)V

    return-void
.end method

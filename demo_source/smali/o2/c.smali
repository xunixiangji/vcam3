.class public final synthetic Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lo2/d;

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lo2/d;FIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/c;->b:Lo2/d;

    iput p2, p0, Lo2/c;->c:F

    iput p3, p0, Lo2/c;->d:I

    iput p4, p0, Lo2/c;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo2/c;->b:Lo2/d;

    iget v1, p0, Lo2/c;->c:F

    iget v2, p0, Lo2/c;->d:I

    iget v3, p0, Lo2/c;->e:F

    invoke-static {v0, v1, v2, v3}, Lo2/d;->a(Lo2/d;FIF)V

    return-void
.end method

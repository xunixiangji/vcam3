.class final Lb1/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Lb1/k;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lb1/l$a;

.field public final e:F


# direct methods
.method constructor <init>(Lb1/k;FLandroid/graphics/RectF;Lb1/l$a;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lb1/l$b;->d:Lb1/l$a;

    iput-object p1, p0, Lb1/l$b;->a:Lb1/k;

    iput p2, p0, Lb1/l$b;->e:F

    iput-object p3, p0, Lb1/l$b;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Lb1/l$b;->b:Landroid/graphics/Path;

    return-void
.end method

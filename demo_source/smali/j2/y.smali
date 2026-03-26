.class public final synthetic Lj2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lj2/x$b;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lj2/x$b;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/y;->b:Lj2/x$b;

    iput-object p2, p0, Lj2/y;->c:Landroid/app/Activity;

    iput-object p3, p0, Lj2/y;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lj2/y;->e:Ljava/util/ArrayList;

    iput p5, p0, Lj2/y;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lj2/y;->b:Lj2/x$b;

    iget-object v1, p0, Lj2/y;->c:Landroid/app/Activity;

    iget-object v2, p0, Lj2/y;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lj2/y;->e:Ljava/util/ArrayList;

    iget v4, p0, Lj2/y;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lj2/x$b;->c(Lj2/x$b;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

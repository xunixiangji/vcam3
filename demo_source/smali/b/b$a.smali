.class Lb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lb/b;


# direct methods
.method constructor <init>(Lb/b;)V
    .locals 0

    iput-object p1, p0, Lb/b$a;->b:Lb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/b$a;->b:Lb/b;

    invoke-virtual {v0, p1}, Lb/b;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

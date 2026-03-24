.class final Lv/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/b;->g(Landroid/content/Context;Lv/a;Lp/b$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lv/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lv/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lv/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/b$a;->b:Lv/a;

    iput p3, p0, Lv/b$a;->c:I

    iput-object p4, p0, Lv/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lv/b$g;
    .locals 4

    iget-object v0, p0, Lv/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lv/b$a;->b:Lv/a;

    iget v2, p0, Lv/b$a;->c:I

    invoke-static {v0, v1, v2}, Lv/b;->f(Landroid/content/Context;Lv/a;I)Lv/b$g;

    move-result-object v0

    iget-object v1, v0, Lv/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lv/b;->a:Lk/e;

    iget-object v3, p0, Lv/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lk/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv/b$a;->a()Lv/b$g;

    move-result-object v0

    return-object v0
.end method

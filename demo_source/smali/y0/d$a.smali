.class Ly0/d$a;
.super Lp/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/d;->h(Landroid/content/Context;Ly0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly0/f;

.field final synthetic b:Ly0/d;


# direct methods
.method constructor <init>(Ly0/d;Ly0/f;)V
    .locals 0

    iput-object p1, p0, Ly0/d$a;->b:Ly0/d;

    iput-object p2, p0, Ly0/d$a;->a:Ly0/f;

    invoke-direct {p0}, Lp/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    iget-object v0, p0, Ly0/d$a;->b:Ly0/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ly0/d;->c(Ly0/d;Z)Z

    iget-object v0, p0, Ly0/d$a;->a:Ly0/f;

    invoke-virtual {v0, p1}, Ly0/f;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Ly0/d$a;->b:Ly0/d;

    iget v1, v0, Ly0/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Ly0/d;->b(Ly0/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Ly0/d$a;->b:Ly0/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ly0/d;->c(Ly0/d;Z)Z

    iget-object p1, p0, Ly0/d$a;->a:Ly0/f;

    iget-object v0, p0, Ly0/d$a;->b:Ly0/d;

    invoke-static {v0}, Ly0/d;->a(Ly0/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ly0/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method

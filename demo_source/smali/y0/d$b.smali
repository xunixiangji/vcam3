.class Ly0/d$b;
.super Ly0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ly0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Ly0/f;

.field final synthetic c:Ly0/d;


# direct methods
.method constructor <init>(Ly0/d;Landroid/text/TextPaint;Ly0/f;)V
    .locals 0

    iput-object p1, p0, Ly0/d$b;->c:Ly0/d;

    iput-object p2, p0, Ly0/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Ly0/d$b;->b:Ly0/f;

    invoke-direct {p0}, Ly0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Ly0/d$b;->b:Ly0/f;

    invoke-virtual {v0, p1}, Ly0/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Ly0/d$b;->c:Ly0/d;

    iget-object v1, p0, Ly0/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Ly0/d;->k(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Ly0/d$b;->b:Ly0/f;

    invoke-virtual {v0, p1, p2}, Ly0/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method

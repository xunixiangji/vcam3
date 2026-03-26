.class Lq/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/h;->f([Lv/b$f;I)Lv/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq/h$b<",
        "Lv/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lq/h;


# direct methods
.method constructor <init>(Lq/h;)V
    .locals 0

    iput-object p1, p0, Lq/h$a;->a:Lq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lv/b$f;

    invoke-virtual {p0, p1}, Lq/h$a;->c(Lv/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv/b$f;

    invoke-virtual {p0, p1}, Lq/h$a;->d(Lv/b$f;)Z

    move-result p1

    return p1
.end method

.method public c(Lv/b$f;)I
    .locals 0

    invoke-virtual {p1}, Lv/b$f;->d()I

    move-result p1

    return p1
.end method

.method public d(Lv/b$f;)Z
    .locals 0

    invoke-virtual {p1}, Lv/b$f;->e()Z

    move-result p1

    return p1
.end method

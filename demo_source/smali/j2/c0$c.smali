.class Lj2/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/c0$c;->a:Landroid/app/Fragment;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Fragment;Lj2/c0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2/c0$c;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lj2/c0$c;->a:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

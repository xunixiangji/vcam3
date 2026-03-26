.class Lk0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lk0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lk0/e;->a()Lk0/f;

    move-result-object v0

    sput-object v0, Lk0/e$a;->a:Lk0/f;

    return-void
.end method

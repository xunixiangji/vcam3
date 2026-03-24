.class Lj0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lj0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/c;

    invoke-direct {v0}, Lk0/c;-><init>()V

    sput-object v0, Lj0/b$a;->a:Lj0/b;

    return-void
.end method

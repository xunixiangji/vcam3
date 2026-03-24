.class final Ll3/c0$a$b;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll3/c0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/a<",
        "Ll3/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ll3/c0$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/c0$a$b;

    invoke-direct {v0}, Ll3/c0$a$b;-><init>()V

    sput-object v0, Ll3/c0$a$b;->c:Ll3/c0$a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ll3/u;
    .locals 2

    sget-object v0, Ll3/u;->c:Ll3/u$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll3/u$b;->a([Ljava/lang/String;)Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll3/c0$a$b;->c()Ll3/u;

    move-result-object v0

    return-object v0
.end method

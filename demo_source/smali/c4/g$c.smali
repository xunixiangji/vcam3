.class final Lc4/g$c;
.super Le3/g;
.source "SourceFile"

# interfaces
.implements Ld3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/g;->j(Ljava/net/URL;)Lu2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le3/g;",
        "Ld3/b<",
        "Lc4/h;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lc4/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc4/g$c;

    invoke-direct {v0}, Lc4/g$c;-><init>()V

    sput-object v0, Lc4/g$c;->c:Lc4/g$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le3/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc4/h;

    invoke-virtual {p0, p1}, Lc4/g$c;->c(Lc4/h;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lc4/h;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lc4/g;->d()Lc4/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lc4/h;->a()Lb4/y;

    move-result-object p1

    invoke-static {v0, p1}, Lc4/g$a;->a(Lc4/g$a;Lb4/y;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

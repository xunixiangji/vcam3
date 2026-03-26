.class public interface abstract Ll3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/r$a;
    }
.end annotation


# static fields
.field public static final a:Ll3/r$a;

.field public static final b:Ll3/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ll3/r$a;->a:Ll3/r$a;

    sput-object v0, Ll3/r;->a:Ll3/r$a;

    new-instance v0, Ll3/r$a$a;

    invoke-direct {v0}, Ll3/r$a$a;-><init>()V

    sput-object v0, Ll3/r;->b:Ll3/r;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method

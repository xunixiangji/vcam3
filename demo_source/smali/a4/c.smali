.class public abstract La4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/c$a;
    }
.end annotation


# static fields
.field public static final a:La4/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/c$a;-><init>(Le3/d;)V

    sput-object v0, La4/c;->a:La4/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

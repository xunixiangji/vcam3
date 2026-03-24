.class public interface abstract Ll3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/o$a;
    }
.end annotation


# static fields
.field public static final a:Ll3/o$a;

.field public static final b:Ll3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ll3/o$a;->a:Ll3/o$a;

    sput-object v0, Ll3/o;->a:Ll3/o$a;

    new-instance v0, Ll3/o$a$a;

    invoke-direct {v0}, Ll3/o$a$a;-><init>()V

    sput-object v0, Ll3/o;->b:Ll3/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ll3/v;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/v;",
            ")",
            "Ljava/util/List<",
            "Ll3/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ll3/v;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/v;",
            "Ljava/util/List<",
            "Ll3/n;",
            ">;)V"
        }
    .end annotation
.end method

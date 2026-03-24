.class public interface abstract Lt3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/m$a;
    }
.end annotation


# static fields
.field public static final a:Lt3/m$a;

.field public static final b:Lt3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/m$a;->a:Lt3/m$a;

    sput-object v0, Lt3/m;->a:Lt3/m$a;

    new-instance v0, Lt3/m$a$a;

    invoke-direct {v0}, Lt3/m$a$a;-><init>()V

    sput-object v0, Lt3/m;->b:Lt3/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lt3/d;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILt3/b;)V
.end method

.method public abstract d(ILb4/f;IZ)Z
.end method

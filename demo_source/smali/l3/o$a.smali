.class public final Ll3/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/o$a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Ll3/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/o$a;

    invoke-direct {v0}, Ll3/o$a;-><init>()V

    sput-object v0, Ll3/o$a;->a:Ll3/o$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

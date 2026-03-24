.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b$a;,
        Lo3/b$b;
    }
.end annotation


# static fields
.field public static final c:Lo3/b$a;


# instance fields
.field private final a:Ll3/a0;

.field private final b:Ll3/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/b$a;-><init>(Le3/d;)V

    sput-object v0, Lo3/b;->c:Lo3/b$a;

    return-void
.end method

.method public constructor <init>(Ll3/a0;Ll3/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/b;->a:Ll3/a0;

    iput-object p2, p0, Lo3/b;->b:Ll3/c0;

    return-void
.end method


# virtual methods
.method public final a()Ll3/c0;
    .locals 1

    iget-object v0, p0, Lo3/b;->b:Ll3/c0;

    return-object v0
.end method

.method public final b()Ll3/a0;
    .locals 1

    iget-object v0, p0, Lo3/b;->a:Ll3/a0;

    return-object v0
.end method

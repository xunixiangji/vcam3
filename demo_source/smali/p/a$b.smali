.class public final Lp/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[Lp/a$c;


# direct methods
.method public constructor <init>([Lp/a$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/a$b;->a:[Lp/a$c;

    return-void
.end method


# virtual methods
.method public a()[Lp/a$c;
    .locals 1

    iget-object v0, p0, Lp/a$b;->a:[Lp/a$c;

    return-object v0
.end method

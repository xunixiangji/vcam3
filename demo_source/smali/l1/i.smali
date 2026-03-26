.class public final synthetic Ll1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ll1/h$b;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ll1/h$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/i;->b:Ll1/h$b;

    iput-boolean p2, p0, Ll1/i;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ll1/i;->b:Ll1/h$b;

    iget-boolean v1, p0, Ll1/i;->c:Z

    invoke-static {v0, v1}, Ll1/h$b;->a(Ll1/h$b;Z)V

    return-void
.end method

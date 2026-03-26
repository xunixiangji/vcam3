.class public final synthetic Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ln2/e;


# direct methods
.method public synthetic constructor <init>(Ln2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/d;->b:Ln2/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln2/d;->b:Ln2/e;

    invoke-static {v0}, Ln2/e;->c(Ln2/e;)V

    return-void
.end method

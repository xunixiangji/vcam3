.class Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ashokvarma/bottomnavigation/d;

.field final synthetic c:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;


# direct methods
.method constructor <init>(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;Lcom/ashokvarma/bottomnavigation/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->c:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    iput-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->b:Lcom/ashokvarma/bottomnavigation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->b:Lcom/ashokvarma/bottomnavigation/d;

    iget-object v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->c:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    invoke-static {v1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->c:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    invoke-static {v2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->b:Lcom/ashokvarma/bottomnavigation/d;

    invoke-virtual {v3}, Lcom/ashokvarma/bottomnavigation/d;->a()I

    move-result v3

    iget-object v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;->c:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    invoke-static {v4}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ashokvarma/bottomnavigation/b;->d(Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

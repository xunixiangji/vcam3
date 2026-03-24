.class Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u(ZLcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/c;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;


# direct methods
.method constructor <init>(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$a;->b:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lcom/ashokvarma/bottomnavigation/d;

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$a;->b:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    invoke-virtual {p1}, Lcom/ashokvarma/bottomnavigation/d;->b()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->a(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;IZZZ)V

    return-void
.end method

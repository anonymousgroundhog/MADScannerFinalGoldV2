.class Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;

    invoke-direct {v1, p0, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

.field final synthetic val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isValidPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 479
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$802(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Z)Z

    .line 480
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1$1;->this$2:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;->this$1:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$400(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)V

    :cond_0
    return-void
.end method

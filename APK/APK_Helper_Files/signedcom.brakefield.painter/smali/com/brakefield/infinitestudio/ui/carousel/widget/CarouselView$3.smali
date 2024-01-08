.class Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setOnItemSelectedListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isValidPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$400(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)V

    .line 467
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$802(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Z)Z

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :goto_0
    return-void
.end method

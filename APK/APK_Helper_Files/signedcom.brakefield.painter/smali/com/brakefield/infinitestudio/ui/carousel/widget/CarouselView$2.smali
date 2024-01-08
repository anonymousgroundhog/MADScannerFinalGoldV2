.class Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setLayoutManagerInternal(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
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

    .line 199
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;II)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$600(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->smoothScrollToPosition(I)V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$700(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$700(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;II)V

    :cond_1
    return-void
.end method

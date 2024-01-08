.class Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
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

    .line 43
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPositionPoint()F

    move-result v2

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$202(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;F)F

    goto :goto_2

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPositionPoint()F

    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 58
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$100(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentOffset()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    int-to-float v3, v2

    sub-float v3, v1, v3

    .line 59
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 60
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getScroller()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$200(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)F

    move-result v3

    sub-float v3, v1, v3

    invoke-interface {v2, v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;->tweakScrollDx(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    float-to-double v1, v1

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    :cond_2
    float-to-double v1, v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    :goto_0
    double-to-int v2, v1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$300(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$400(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)V

    .line 70
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$302(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Z)Z

    .line 85
    :goto_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 86
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object v1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrollStateChanged(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)V

    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    goto :goto_3

    .line 99
    :cond_6
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onFling(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    goto :goto_3

    .line 94
    :cond_7
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrollBegin(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    goto :goto_3

    .line 89
    :cond_8
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrollEnd(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 109
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object v0

    check-cast p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrolled(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;II)V

    .line 111
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    move-result-object p2

    iget-object p3, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 112
    invoke-static {p3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPositionPoint()F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p3, v0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 113
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPositionPoint()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 114
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentOffset()F

    move-result v1

    .line 111
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrolled(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;IIF)V

    :cond_0
    return-void
.end method

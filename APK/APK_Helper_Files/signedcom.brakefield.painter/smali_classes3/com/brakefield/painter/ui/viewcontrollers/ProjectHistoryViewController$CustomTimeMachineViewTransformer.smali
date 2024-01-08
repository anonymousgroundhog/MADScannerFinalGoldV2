.class public Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;
.super Ljava/lang/Object;
.source "ProjectHistoryViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTimeMachineViewTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 2

    .line 199
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    .line 200
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/scrolltweaker/InverseScroller;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/carousel/scrolltweaker/InverseScroller;-><init>()V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setScroller(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    .line 201
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setExtraVisibleChilds(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    const/16 v0, 0x11

    .line 202
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setGravity(I)V

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 3

    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 209
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getPivotX()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 210
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getPivotY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    const/high16 v0, 0x40000000    # 2.0f

    add-float v1, p2, v0

    div-float/2addr v0, v1

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    add-float/2addr p2, v2

    .line 215
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr p2, v1

    sub-float/2addr v2, p2

    .line 216
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 217
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

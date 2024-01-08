.class Lcom/brakefield/painter/ui/MainView$11;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setHoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevPointerIcon:Landroid/view/PointerIcon;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 599
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->prevPointerIcon:Landroid/view/PointerIcon;

    return-void
.end method


# virtual methods
.method synthetic lambda$onEnter$0$com-brakefield-painter-ui-MainView$11(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 4

    .line 610
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 612
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 614
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainView;->access$600(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v1, p1}, Lcom/brakefield/painter/ui/MainView;->access$700(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v1

    .line 616
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v2, p1}, Lcom/brakefield/painter/ui/MainView;->access$800(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v2

    .line 618
    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, p1, v2, v0, v1}, Lcom/brakefield/painter/PainterLib;->hoverEnter(FFFFF)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 622
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    :cond_1
    return-void
.end method

.method synthetic lambda$onExit$2$com-brakefield-painter-ui-MainView$11()V
    .locals 1

    .line 654
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hoverExit()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    :cond_1
    return-void
.end method

.method synthetic lambda$onMove$1$com-brakefield-painter-ui-MainView$11(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 4

    .line 632
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 634
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 636
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainView;->access$600(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v0

    .line 637
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v1, p1}, Lcom/brakefield/painter/ui/MainView;->access$700(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v1

    .line 638
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v2, p1}, Lcom/brakefield/painter/ui/MainView;->access$800(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v2

    .line 640
    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, p1, v2, v0, v1}, Lcom/brakefield/painter/PainterLib;->hoverMove(FFFFF)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 644
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    :cond_1
    return-void
.end method

.method public onEnter(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->prevPointerIcon:Landroid/view/PointerIcon;

    .line 605
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 607
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 608
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainView$11;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 625
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainView$11;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 662
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    .line 664
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$11;->prevPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 629
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 630
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/MainView$11$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainView$11;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 647
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$11;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

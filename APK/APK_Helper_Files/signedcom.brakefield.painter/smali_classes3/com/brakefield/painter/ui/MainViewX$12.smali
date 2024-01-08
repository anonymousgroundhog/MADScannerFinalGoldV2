.class Lcom/brakefield/painter/ui/MainViewX$12;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setHoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevPointerIcon:Landroid/view/PointerIcon;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 711
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->prevPointerIcon:Landroid/view/PointerIcon;

    return-void
.end method


# virtual methods
.method synthetic lambda$onEnter$0$com-brakefield-painter-ui-MainViewX$12(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 4

    .line 723
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 725
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 727
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1600(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v0

    .line 728
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v1, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1700(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v1

    .line 729
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v2, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1800(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v2

    .line 731
    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, p1, v2, v0, v1}, Lcom/brakefield/painter/PainterLib;->hoverEnter(FFFFF)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onExit$2$com-brakefield-painter-ui-MainViewX$12()V
    .locals 1

    .line 764
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hoverExit()V

    .line 766
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onMove$1$com-brakefield-painter-ui-MainViewX$12(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 4

    .line 744
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->handlesHover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 746
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 748
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1600(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v1, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1700(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v1

    .line 750
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v2, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1800(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v2

    .line 752
    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, p1, v2, v0, v1}, Lcom/brakefield/painter/PainterLib;->hoverMove(FFFFF)V

    :cond_0
    return-void
.end method

.method public onEnter(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->prevPointerIcon:Landroid/view/PointerIcon;

    .line 717
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 719
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->access$1502(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 721
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 722
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainViewX$12;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 735
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainViewX$12;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 770
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->access$1502(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 772
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->prevPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 743
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainViewX$12;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 756
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$12;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

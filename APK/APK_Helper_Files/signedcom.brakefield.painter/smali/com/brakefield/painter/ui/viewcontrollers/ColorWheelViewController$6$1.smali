.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/Draggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downRadius:F

.field downSize:F

.field downX:F

.field downY:F

.field floatView:Landroid/view/View;

.field offsetX:F

.field offsetY:F

.field removeView:Landroid/view/View;

.field final synthetic this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 523
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    .line 524
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->removeView:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$dragStarted$0(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;IZ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 598
    invoke-interface {p0, p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method adjustSize(I)I
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x7

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public dragEnded()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v1, v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->inFloatRemove(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v1, v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->removeFloatView(Landroid/view/View;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->endDraggingFloatView()V

    .line 648
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    .line 649
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->showPopupContainer()V

    .line 651
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->removeView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->removeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->removeFloatView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public dragMoved([Landroid/graphics/PointF;)V
    .locals 9

    .line 625
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageX([Landroid/graphics/PointF;)F

    move-result v0

    .line 626
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageY([Landroid/graphics/PointF;)F

    move-result v1

    .line 627
    invoke-virtual {p0, p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageRadius([Landroid/graphics/PointF;FF)F

    move-result p1

    .line 629
    iget v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downX:F

    add-float v5, v0, v2

    .line 630
    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetY:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downY:F

    add-float v6, v1, v0

    .line 632
    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downRadius:F

    div-float/2addr p1, v0

    .line 634
    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downSize:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 635
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->adjustSize(I)I

    move-result v8

    .line 637
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    move v7, v8

    invoke-virtual/range {v3 .. v8}, Lcom/brakefield/painter/ui/SimpleUI;->adjustFloatView(Landroid/view/View;FFII)V

    .line 638
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->invalidate()V

    .line 639
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    return-void
.end method

.method public dragStarted([Landroid/graphics/PointF;)V
    .locals 12

    .line 559
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->hidePopupContainer()V

    .line 561
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setFocusable(Z)V

    .line 563
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->startDraggingFloatView()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 568
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v2, v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->getFloatView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 571
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 572
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->removeView:Landroid/view/View;

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-boolean v2, v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$fromPopup:Z

    if-nez v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 577
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v2, v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getLocationInWindow([I)V

    .line 580
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v2, v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getMeasuredWidth()I

    move-result v2

    .line 583
    :goto_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageX([Landroid/graphics/PointF;)F

    move-result v9

    .line 584
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageY([Landroid/graphics/PointF;)F

    move-result v10

    .line 585
    invoke-virtual {p0, p1, v9, v10}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->getAverageRadius([Landroid/graphics/PointF;FF)F

    move-result p1

    const/4 v3, 0x0

    .line 587
    iput-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    .line 591
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v4, v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$502(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/color/ColorPickerView;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    .line 592
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v3

    iput-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    .line 593
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 595
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v3

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v4, v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v5, v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v6, v6, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v7, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v7, v7, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$colorListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-static {v4, v5, v6, v7, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    .line 597
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v3

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v4, v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$colorListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnColorChangeListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V

    .line 600
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float v4, v9, v3

    .line 602
    iput v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetX:F

    sub-float v3, v10, v3

    .line 603
    iput v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetY:F

    aget v5, v0, v1

    int-to-float v5, v5

    add-float/2addr v5, v9

    add-float/2addr v5, v4

    const/4 v11, 0x1

    aget v4, v0, v11

    int-to-float v4, v4

    add-float/2addr v4, v10

    add-float v6, v4, v3

    .line 608
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/brakefield/painter/ui/SimpleUI;->adjustFloatView(Landroid/view/View;FFII)V

    aget v1, v0, v1

    int-to-float v3, v1

    .line 611
    iput v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downX:F

    aget v0, v0, v11

    int-to-float v3, v0

    .line 612
    iput v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downY:F

    .line 613
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downRadius:F

    int-to-float p1, v2

    .line 614
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->downSize:F

    int-to-float p1, v1

    add-float/2addr v9, p1

    .line 616
    iget p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetX:F

    add-float v5, v9, p1

    int-to-float p1, v0

    add-float/2addr v10, p1

    .line 617
    iget p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->offsetY:F

    add-float v6, v10, p1

    .line 619
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    iget-object v3, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->floatView:Landroid/view/View;

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/brakefield/painter/ui/SimpleUI;->adjustFloatView(Landroid/view/View;FFII)V

    return-void
.end method

.method getAverageRadius([Landroid/graphics/PointF;FF)F
    .locals 5

    .line 544
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p3, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_0
    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method getAverageX([Landroid/graphics/PointF;)F
    .locals 4

    .line 530
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method getAverageY([Landroid/graphics/PointF;)F
    .locals 4

    .line 537
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :cond_0
    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

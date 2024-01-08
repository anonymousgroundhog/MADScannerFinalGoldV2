.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;
.super Ljava/lang/Object;
.source "MainToolbar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupToolbar(Landroid/app/Activity;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutEnded()V
    .locals 9

    .line 542
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 543
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperX()F

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    .line 545
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 546
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 547
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

.method public onOutMove(FF)V
    .locals 9

    .line 533
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 535
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 536
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    .line 537
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onOutStarted(FF)V
    .locals 10

    .line 509
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 511
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 514
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 515
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setVisibility(I)V

    .line 520
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 521
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 523
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    const/4 p1, 0x1

    .line 525
    invoke-static {p1, v1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 526
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    .line 528
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

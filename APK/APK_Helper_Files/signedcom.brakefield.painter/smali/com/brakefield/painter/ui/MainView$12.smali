.class Lcom/brakefield/painter/ui/MainView$12;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setLongpressDragListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDown$0$com-brakefield-painter-ui-MainView$12(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 727
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$1000(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 728
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$onUp$1$com-brakefield-painter-ui-MainView$12(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 784
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 9

    .line 713
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isFinger()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 715
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 716
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 718
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    return v1

    .line 721
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$200(Lcom/brakefield/painter/ui/MainView;)V

    .line 723
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$900(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 725
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result p1

    int-to-float v3, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result p1

    int-to-float v4, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result p1

    int-to-float v5, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result p1

    int-to-float v6, p1

    const/4 v7, 0x0

    new-instance v8, Lcom/brakefield/painter/ui/MainView$12$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/ui/MainView$12$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainView$12;)V

    invoke-static/range {v3 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return v2

    .line 732
    :cond_2
    invoke-static {v2, v1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 733
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainView;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return v2
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 741
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainView;->access$000(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :goto_0
    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 14

    .line 750
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$1000(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 755
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v2

    .line 756
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v3

    .line 758
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 759
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v2, v2

    invoke-direct {v6, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 760
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v3, v3

    invoke-direct {v7, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 761
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v5, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 763
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 764
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    .line 765
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 766
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    .line 768
    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 769
    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 770
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 771
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 773
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$1000(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 775
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$900(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 777
    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 778
    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 779
    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 780
    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/16 v0, 0x8

    new-array v10, v0, [F

    .line 782
    iget v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v4, v10, v1

    iget v4, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v4, v10, p1

    iget v4, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v6, 0x3

    aput v4, v10, v6

    iget v4, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v11, 0x4

    aput v4, v10, v11

    iget v4, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x5

    aput v4, v10, v7

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v13, 0x6

    aput v4, v10, v13

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x7

    aput v2, v10, v4

    new-array v0, v0, [F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v0, v12

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v0, v1

    iget v1, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v0, p1

    iget p1, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p1, v0, v6

    iget p1, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput p1, v0, v11

    iget p1, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p1, v0, v7

    iget p1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput p1, v0, v13

    iget p1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p1, v0, v4

    new-instance p1, Lcom/brakefield/painter/ui/MainView$12$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MainView$12$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainView$12;)V

    invoke-static {v10, v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animate([F[FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$12;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainView;->access$100(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 788
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    :goto_0
    return-void
.end method

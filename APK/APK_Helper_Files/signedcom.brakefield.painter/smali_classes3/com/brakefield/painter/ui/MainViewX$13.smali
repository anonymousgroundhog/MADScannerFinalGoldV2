.class Lcom/brakefield/painter/ui/MainViewX$13;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setLongpressDragListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDown$0$com-brakefield-painter-ui-MainViewX$13(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 839
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$2000(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 840
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$onUp$1$com-brakefield-painter-ui-MainViewX$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 896
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 9

    .line 825
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isFinger()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 827
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 828
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v2}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 830
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    return v1

    .line 833
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1100(Lcom/brakefield/painter/ui/MainViewX;)V

    .line 835
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1900(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 837
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

    new-instance v8, Lcom/brakefield/painter/ui/MainViewX$13$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/ui/MainViewX$13$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainViewX$13;)V

    invoke-static/range {v3 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return v2

    .line 844
    :cond_2
    invoke-static {v2, v1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 845
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return v2
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 853
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1, v1, v1}, Lcom/brakefield/painter/ui/MainViewX;->access$900(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    :goto_0
    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 14

    .line 862
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$2000(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 867
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v2

    .line 868
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v3

    .line 870
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 871
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v2, v2

    invoke-direct {v6, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 872
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v3, v3

    invoke-direct {v7, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 873
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v5, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 875
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 876
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    .line 877
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 878
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    .line 880
    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 881
    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 882
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 883
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 885
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$2000(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 887
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1900(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 889
    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 890
    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 891
    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 892
    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/16 v0, 0x8

    new-array v10, v0, [F

    .line 894
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

    new-instance p1, Lcom/brakefield/painter/ui/MainViewX$13$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MainViewX$13$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainViewX$13;)V

    invoke-static {v10, v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animate([F[FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$13;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1000(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 900
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    :goto_0
    return-void
.end method

.class Lcom/brakefield/painter/ui/MainViewX$8;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setThreeFingerSlideVerticalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downSize:F

.field liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 581
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 582
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method public onDown(FF)V
    .locals 2

    const/4 p1, 0x1

    .line 532
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 533
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    .line 535
    new-instance p2, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolManager()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;-><init>(J)V

    .line 536
    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getLiquifyTool()Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$8;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    .line 537
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 538
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getIntensity()F

    move-result p2

    .line 540
    :cond_1
    iput p2, p0, Lcom/brakefield/painter/ui/MainViewX$8;->downSize:F

    return-void
.end method

.method public onMove(F)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 548
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    :goto_0
    iget v1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->downSize:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 551
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v5, v2

    mul-float/2addr p1, v5

    sub-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v2

    if-gez v5, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_3

    .line 555
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainViewX$8;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    div-float p1, v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setIntensity(F)V

    goto :goto_2

    :cond_3
    div-float p1, v1, p1

    float-to-double v7, p1

    .line 556
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float p1, v5

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    .line 558
    :goto_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    const-string p1, ": "

    const v2, 0x7f120a9e

    if-eqz v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 563
    :cond_4
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 564
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    float-to-int v0, v0

    .line 565
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_3
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " px"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    .line 568
    :goto_4
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method public onUp()V
    .locals 1

    const/4 v0, 0x1

    .line 573
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    const/4 v0, 0x0

    .line 574
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 575
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    .line 576
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$8;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

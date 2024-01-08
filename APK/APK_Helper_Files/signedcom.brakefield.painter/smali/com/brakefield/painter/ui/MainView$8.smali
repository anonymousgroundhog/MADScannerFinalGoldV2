.class Lcom/brakefield/painter/ui/MainView$8;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setThreeFingerSlideHorizontalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

.field downValue:F

.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 548
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

.method public onDown(FF)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 477
    :cond_0
    new-instance p1, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    const/4 p1, 0x1

    .line 478
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 479
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    .line 481
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p2}, Lcom/brakefield/painter/ui/MainView;->access$500(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/OpacityControl;

    move-result-object p2

    iget p2, p2, Lcom/brakefield/painter/OpacityControl;->affects:I

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSoftness()F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/MainView$8;->downValue:F

    goto :goto_0

    .line 486
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getFlow()F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/MainView$8;->downValue:F

    goto :goto_0

    .line 483
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/MainView$8;->downValue:F

    :goto_0
    return-void
.end method

.method public onMove(F)V
    .locals 4

    .line 497
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 503
    iget v0, p0, Lcom/brakefield/painter/ui/MainView$8;->downValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 505
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, p1

    if-gez v2, :cond_2

    move v0, p1

    :cond_2
    :goto_0
    div-float/2addr v0, v1

    .line 512
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$500(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/OpacityControl;

    move-result-object p1

    iget p1, p1, Lcom/brakefield/painter/OpacityControl;->affects:I

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 523
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSoftness(F)V

    const p1, 0x7f120aad

    goto :goto_1

    .line 519
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setFlow(F)V

    const p1, 0x7f1201c1

    goto :goto_1

    .line 515
    :cond_5
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    const p1, 0x7f1209bb

    .line 526
    :goto_1
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v2}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    .line 528
    iget-object v2, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v2}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method public onUp()V
    .locals 1

    .line 535
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 539
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    const/4 v0, 0x0

    .line 540
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 541
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    .line 542
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$8;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.class Lcom/brakefield/painter/ui/MainViewX$7;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setTwoFingerListener()V
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

    .line 400
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCancel$4$com-brakefield-painter-ui-MainViewX$7()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 497
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    return-void
.end method

.method synthetic lambda$onDown$0$com-brakefield-painter-ui-MainViewX$7(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 420
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v4, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 421
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 422
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 424
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v1, v4, v2}, Lcom/brakefield/painter/PainterLib;->twoDown(FFFF)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/MainViewX;->access$1202(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 425
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1200(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v1, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiDown(FFFF)V

    :cond_0
    const/4 p1, 0x1

    .line 426
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    return-void
.end method

.method synthetic lambda$onMove$1$com-brakefield-painter-ui-MainViewX$7(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1200(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 448
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v1, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 449
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p1, v2, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 450
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 451
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 453
    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p2, v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->twoMove(FFFF)V

    goto :goto_0

    .line 456
    :cond_0
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v1, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiMove(FFFF)V

    .line 457
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onUp$2$com-brakefield-painter-ui-MainViewX$7()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 478
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    return-void
.end method

.method synthetic lambda$onUp$3$com-brakefield-painter-ui-MainViewX$7()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1200(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->twoUp()V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/MainViewX$7;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 482
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    .line 484
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 492
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1200(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancel()V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainViewX$7;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 501
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    .line 502
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 507
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeCorrectionsDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    const v0, 0x7f1209ae

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 511
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    .line 512
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDown(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 407
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 409
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    const/4 v1, 0x0

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    .line 412
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1100(Lcom/brakefield/painter/ui/MainViewX;)V

    .line 416
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v2, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1}, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainViewX$7;Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 428
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method public onMove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 436
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 438
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    const/4 v1, 0x0

    .line 440
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v2, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainViewX$7;Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 461
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method public onUp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 469
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 471
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 473
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$7$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/MainViewX$7;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 486
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$7;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

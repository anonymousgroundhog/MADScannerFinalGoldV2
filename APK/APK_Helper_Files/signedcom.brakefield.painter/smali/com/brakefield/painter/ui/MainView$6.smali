.class Lcom/brakefield/painter/ui/MainView$6;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setTwoFingerListener()V
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

    .line 275
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCancel$4$com-brakefield-painter-ui-MainView$6()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 369
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    return-void
.end method

.method synthetic lambda$onDown$0$com-brakefield-painter-ui-MainView$6(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 5

    .line 292
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 294
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v4, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 295
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 296
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 297
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v1, v4, v2}, Lcom/brakefield/painter/PainterLib;->twoDown(FFFF)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/MainView;->access$302(Lcom/brakefield/painter/ui/MainView;Z)Z

    .line 298
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$300(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v1, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiDown(FFFF)V

    :cond_0
    const/4 p1, 0x1

    .line 301
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    return-void
.end method

.method synthetic lambda$onMove$1$com-brakefield-painter-ui-MainView$6(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$300(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v1, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 323
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p1, v2, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 324
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 325
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 326
    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p2, v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->twoMove(FFFF)V

    goto :goto_0

    .line 328
    :cond_0
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v1, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiMove(FFFF)V

    .line 329
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onUp$2$com-brakefield-painter-ui-MainView$6()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 350
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    return-void
.end method

.method synthetic lambda$onUp$3$com-brakefield-painter-ui-MainView$6()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$300(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->twoUp()V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/MainView$6;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 354
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    .line 356
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 364
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$300(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancel()V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainView$6;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 373
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setNavigating(Z)V

    .line 374
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

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

    .line 379
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeCorrectionsDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    const v0, 0x7f1209ae

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    .line 384
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

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

    .line 280
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 282
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 284
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    const/4 v1, 0x0

    .line 286
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$200(Lcom/brakefield/painter/ui/MainView;)V

    .line 291
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v2, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainView$6;Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 303
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

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

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 311
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 313
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    const/4 v1, 0x0

    .line 315
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 318
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v2, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1}, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainView$6;Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 333
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

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

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 341
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 343
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 345
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/MainView$6;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 358
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$6;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

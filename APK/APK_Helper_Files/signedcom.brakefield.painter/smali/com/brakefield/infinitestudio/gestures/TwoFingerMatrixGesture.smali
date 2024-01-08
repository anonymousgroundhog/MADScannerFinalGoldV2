.class public Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "TwoFingerMatrixGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    .line 20
    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;

    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->active()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Needs implementation"

    .line 44
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Todo;->warn(Ljava/lang/String;)V

    return v1
.end method

.method public getScale()F
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->active()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const-string v0, "Needs implementation"

    .line 50
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Todo;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationX()F
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->active()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getCurrentPointersCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getDownPointersCenter()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->active()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getCurrentPointersCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getDownPointersCenter()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected makeActive(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public update(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->cancel()V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getCoordinates([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)[F

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->getCoordinates([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)[F

    move-result-object v4

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 38
    array-length v1, v2

    div-int/lit8 v6, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 39
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;

    invoke-interface {v0, p0, p1}, Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture$Listener;->onUpdate(Lcom/brakefield/infinitestudio/gestures/TwoFingerMatrixGesture;Landroid/graphics/Matrix;)V

    return-void
.end method

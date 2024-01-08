.class public Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;
.super Ljava/lang/Object;
.source "Hand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;
    }
.end annotation


# static fields
.field private static down:Z

.field private static final downMatrix:Landroid/graphics/Matrix;

.field private static final downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static final downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

.field public static lock:Z

.field private static multi:Z

.field public static pinchListener:Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;

.field private static final prevPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static final prevPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static startLength:F

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 17
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 18
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    .line 23
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->lock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onMultiUp$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 114
    sget-object p0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static onDown(FF)V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->lock:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->multi:Z

    .line 30
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    .line 32
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 33
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static onMove(FF)V
    .locals 3

    .line 37
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->lock:Z

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onDown(FF)V

    .line 39
    :cond_1
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->multi:Z

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr p0, v2

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 42
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 44
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 48
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method public static onMultiDown(FFFF)V
    .locals 6

    .line 57
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->lock:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->startTime:J

    sub-float v0, p2, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 60
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v4, p3, p1

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->startLength:F

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->multi:Z

    .line 63
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    .line 65
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 67
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 68
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 70
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 71
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 73
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static onMultiMove(FFFF)V
    .locals 11

    .line 77
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->lock:Z

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiDown(FFFF)V

    .line 80
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 81
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 83
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [F

    .line 84
    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v6, 0x0

    aput v5, v3, v6

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x1

    aput v4, v3, v5

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v9, 0x2

    aput v7, v3, v9

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x3

    aput v4, v3, v7

    const/4 v4, 0x0

    new-array v10, v2, [F

    aput p0, v10, v6

    aput p1, v10, v5

    aput p2, v10, v9

    aput p3, v10, v7

    const/4 v7, 0x2

    move-object v2, v8

    move-object v5, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 85
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    invoke-virtual {v8, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 87
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->downMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p0, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 91
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->setMatrix(Landroid/graphics/Matrix;)V

    .line 93
    iget p0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 94
    iget p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr p2, p3

    div-float/2addr p2, p1

    .line 95
    sget-boolean p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    if-nez p1, :cond_2

    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->snapToOrthagonalDirection(FF)V

    :cond_2
    return-void
.end method

.method public static onMultiUp(Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    .line 100
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->prevPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 104
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 107
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 108
    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v0

    mul-float/2addr v2, v4

    .line 110
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->startLength:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->startTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    .line 113
    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->pinchListener:Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;

    if-eqz v4, :cond_1

    const/high16 v5, 0x438c0000    # 280.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-interface {v4}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;->onPinch()V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v2, v0, p0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->settleOrientation(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    const/4 p0, 0x0

    .line 116
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    return-void
.end method

.method public static onUp()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->down:Z

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/sketchbook/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;
    }
.end annotation


# static fields
.field private static animator:Landroid/animation/ValueAnimator; = null

.field private static cachedGlobalMatrix:Landroid/graphics/Matrix; = null

.field private static cachedMatrix:Landroid/graphics/Matrix; = null

.field public static deg:F = 0.0f

.field public static globalMatrix:Landroid/graphics/Matrix; = null

.field public static h:I = 0x0

.field public static hardwareScale:F = 1.0f

.field public static matrix:Landroid/graphics/Matrix; = null

.field public static mirror:I = 0x0

.field public static px:F = 0.0f

.field public static py:F = 0.0f

.field public static rotate:Z = false

.field public static screen_h:I = 0x0

.field public static screen_w:I = 0x0

.field public static startX:F = 0.0f

.field public static startY:F = 0.0f

.field public static tx:F = 0.0f

.field public static ty:F = 0.0f

.field public static w:I = 0x0

.field public static zoom:F = 1.0f

.field public static zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 43
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->mirror:I

    .line 44
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedMatrix:Landroid/graphics/Matrix;

    .line 49
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedGlobalMatrix:Landroid/graphics/Matrix;

    .line 51
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 17
    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static animate()V
    .locals 3

    .line 477
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 479
    :cond_0
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Camera$5;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 492
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Camera$6;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 505
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animate([F[FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 15

    .line 230
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v3, 0x1

    aget v4, p0, v3

    invoke-direct {v2, v1, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 233
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x2

    aget v5, p0, v1

    const/4 v6, 0x3

    aget v7, p0, v6

    invoke-direct {v4, v5, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 234
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v7, 0x4

    aget v8, p0, v7

    const/4 v9, 0x5

    aget v10, p0, v9

    invoke-direct {v5, v8, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 235
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v10, 0x6

    aget v11, p0, v10

    const/4 v12, 0x7

    aget v13, p0, v12

    invoke-direct {v8, v11, v13}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 237
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v13, p1, v0

    aget v14, p1, v3

    invoke-direct {v11, v13, v14}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 238
    new-instance v13, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, p1, v1

    aget v6, p1, v6

    invoke-direct {v13, v1, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 239
    new-instance v14, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, p1, v7

    aget v6, p1, v9

    invoke-direct {v14, v1, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 240
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, p1, v10

    aget v6, p1, v12

    invoke-direct {v9, v1, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 242
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 245
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    .line 246
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v6, v11

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Camera$2;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animateCenter(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 16

    .line 142
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 145
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    invoke-direct {v3, v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 146
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v5, v5

    invoke-direct {v4, v1, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 147
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v1

    invoke-direct {v5, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/4 v0, 0x0

    .line 149
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 152
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 153
    invoke-virtual {v4, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 154
    invoke-virtual {v5, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 156
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    .line 157
    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 159
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v6, v1, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 160
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v9, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v9, v9

    add-float/2addr v9, v1

    invoke-direct {v8, v9, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 161
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v11, v11

    add-float/2addr v11, v7

    invoke-direct {v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 162
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v11, v11

    add-float/2addr v7, v11

    invoke-direct {v10, v1, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 164
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v12

    .line 166
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v1, v1

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v11, v11

    div-float/2addr v1, v11

    .line 167
    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v13, v11

    sget v14, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v15, v14

    div-float/2addr v13, v15

    int-to-float v14, v14

    mul-float/2addr v14, v1

    int-to-float v11, v11

    cmpl-float v11, v14, v11

    if-ltz v11, :cond_1

    move v11, v1

    goto :goto_0

    :cond_1
    move v11, v13

    .line 176
    :goto_0
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 179
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0x190

    .line 180
    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v14, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;

    move-object v1, v14

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v13}, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Camera$1;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static applyMatrix(Landroid/graphics/Canvas;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static applyMatrix(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 5

    .line 292
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 293
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->tx:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->ty:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 294
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->mirror:I

    int-to-float v1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    mul-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->px:F

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->py:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 295
    sget-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->deg:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->px:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->py:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 297
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 298
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v1, v3

    .line 299
    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget v0, v1, v4

    .line 300
    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public static cacheCameras()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedMatrix:Landroid/graphics/Matrix;

    .line 56
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedGlobalMatrix:Landroid/graphics/Matrix;

    .line 57
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedMatrix:Landroid/graphics/Matrix;

    .line 59
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedGlobalMatrix:Landroid/graphics/Matrix;

    :cond_0
    return-void
.end method

.method public static center()V
    .locals 19

    .line 100
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 101
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v3, v3

    invoke-direct {v2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 102
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v4, v4

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 103
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v5, v5

    invoke-direct {v4, v1, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 107
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 108
    invoke-virtual {v2, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 109
    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 110
    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 112
    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sub-int v7, v5, v6

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 113
    sget v9, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    sub-int v11, v9, v10

    int-to-float v11, v11

    div-float/2addr v11, v8

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    int-to-float v5, v10

    int-to-float v12, v9

    div-float/2addr v5, v12

    int-to-float v9, v9

    mul-float/2addr v9, v6

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    .line 123
    :goto_0
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v7, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 124
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    invoke-direct {v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 125
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v12, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    sget v13, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    invoke-direct {v10, v12, v13}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 126
    new-instance v12, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v13, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v13, v13

    add-float/2addr v11, v13

    invoke-direct {v12, v7, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 128
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/16 v11, 0x8

    new-array v14, v11, [F

    .line 129
    iget v13, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v15, 0x0

    aput v13, v14, v15

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v13, 0x1

    aput v0, v14, v13

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v16, 0x2

    aput v0, v14, v16

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x3

    aput v0, v14, v2

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v17, 0x4

    aput v0, v14, v17

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v3, 0x5

    aput v0, v14, v3

    iget v0, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v18, 0x6

    aput v0, v14, v18

    iget v0, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x7

    aput v0, v14, v4

    const/4 v0, 0x0

    new-array v11, v11, [F

    iget v8, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v8, v11, v15

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v11, v13

    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v11, v16

    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v11, v2

    iget v2, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v11, v17

    iget v2, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v11, v3

    iget v2, v12, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v11, v18

    iget v2, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v11, v4

    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object v13, v7

    move v15, v0

    move-object/from16 v16, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    cmpl-float v0, v6, v1

    if-lez v0, :cond_1

    .line 133
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v6, v6, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 135
    :cond_1
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 137
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private static centerCrop(Landroid/graphics/Matrix;IIII)V
    .locals 5

    mul-int v0, p3, p2

    mul-int v1, p1, p4

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    int-to-float p2, p2

    int-to-float p4, p4

    div-float/2addr p2, p4

    int-to-float p1, p1

    int-to-float p3, p3

    mul-float/2addr p3, p2

    sub-float/2addr p1, p3

    mul-float/2addr p1, v2

    move v4, v3

    move v3, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    int-to-float p3, p4

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    mul-float/2addr p2, v2

    move v4, p2

    move p2, p1

    :goto_0
    move p1, v4

    .line 654
    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-float/2addr v3, v2

    float-to-int p2, v3

    int-to-float p2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 655
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static centerFit(Landroid/graphics/Matrix;IIII)V
    .locals 3

    int-to-float p1, p1

    int-to-float p3, p3

    div-float v0, p1, p3

    int-to-float p2, p2

    int-to-float p4, p4

    div-float v1, p2, p4

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p1, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    mul-float/2addr p2, p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 674
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 675
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8

    .line 427
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 430
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 432
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;

    move-object v1, v7

    move v2, p2

    move v3, p0

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;-><init>(ZFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/Camera$4;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$4;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 471
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static fullscreen()V
    .locals 7

    .line 314
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->center()V

    .line 316
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v0

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 317
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v4, v3

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    cmpl-float v6, v1, v4

    if-lez v6, :cond_1

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 320
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    goto :goto_0

    .line 321
    :cond_0
    sput v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    goto :goto_0

    :cond_1
    int-to-float v0, v5

    mul-float/2addr v0, v4

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 323
    sput v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    goto :goto_0

    .line 324
    :cond_2
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    :goto_0
    const/4 v0, 0x0

    .line 327
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->deg:F

    .line 329
    invoke-static {}, Lcom/brakefield/infinitestudio/color/PaintManager;->create()V

    const/4 v0, 0x1

    .line 331
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->mirror:I

    return-void
.end method

.method public static getGlobalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 354
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedGlobalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 356
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_1
    return-object v0
.end method

.method public static getGlobalRotation()F
    .locals 1

    .line 714
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public static getGlobalZoom()F
    .locals 2

    .line 361
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 362
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 68
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->cachedMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMatrix(Z)Landroid/graphics/Matrix;
    .locals 3

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p0, :cond_0

    .line 75
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, p0

    div-float/2addr v1, p0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    return-object v0
.end method

.method public static getPreview()Landroid/graphics/RectF;
    .locals 5

    .line 336
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 337
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v2, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 339
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 342
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 344
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public static getReverseGlobalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 348
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static getReverseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static getRotation()F
    .locals 1

    .line 710
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public static getRotation(Landroid/graphics/Matrix;)F
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 726
    fill-array-data v0, :array_0

    .line 727
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    float-to-double v3, v0

    .line 728
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 729
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped(Landroid/graphics/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

    neg-float v0, v0

    :cond_0
    return v0

    :array_0
    .array-data 4
        0x4b189680    # 1.0E7f
        0x0
    .end array-data
.end method

.method public static getRotationInDegrees()F
    .locals 2

    .line 373
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInRadians()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getRotationInRadians()F
    .locals 4

    .line 366
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v1, 0x0

    const v2, 0x47c35000    # 100000.0f

    const v3, -0x383cb000    # -100000.0f

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 367
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->transform(Landroid/graphics/Matrix;)V

    .line 368
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->transform(Landroid/graphics/Matrix;)V

    .line 369
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    return v0
.end method

.method public static getZoom()F
    .locals 2

    .line 91
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    return v0
.end method

.method public static getZoom(Landroid/graphics/Matrix;)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p0

    return p0
.end method

.method public static isAnimating()Z
    .locals 1

    .line 679
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFlipped()Z
    .locals 1

    .line 718
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public static isFlipped(Landroid/graphics/Matrix;)Z
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 735
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    aget v1, v0, p0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    const/4 v4, 0x4

    aget v0, v0, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move p0, v3

    :cond_1
    xor-int/2addr p0, v1

    return p0
.end method

.method public static isGlobalFlipped()Z
    .locals 1

    .line 722
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->globalMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$animate$1(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 250
    invoke-virtual/range {p10 .. p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 252
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/16 v10, 0x8

    new-array v11, v10, [F

    .line 253
    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v14, 0x1

    aput v12, v11, v14

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v15, 0x2

    aput v12, v11, v15

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v16, 0x3

    aput v12, v11, v16

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v17, 0x4

    aput v12, v11, v17

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v18, 0x5

    aput v12, v11, v18

    iget v12, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v19, 0x6

    aput v12, v11, v19

    iget v12, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v20, 0x7

    aput v12, v11, v20

    new-array v10, v10, [F

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v15, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v8

    add-float/2addr v12, v15

    aput v12, v10, v13

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    add-float/2addr v12, v4

    const/4 v0, 0x1

    aput v12, v10, v0

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v12

    mul-float/2addr v4, v8

    add-float/2addr v0, v4

    const/4 v4, 0x2

    aput v0, v10, v4

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    add-float/2addr v0, v4

    aput v0, v10, v16

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v17

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v18

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v19

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v20

    const/4 v0, 0x0

    const/4 v1, 0x4

    move-object/from16 p0, v9

    move-object/from16 p1, v11

    const/4 v2, 0x0

    move/from16 p2, v2

    move-object/from16 p3, v10

    move/from16 p4, v0

    move/from16 p5, v1

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 264
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 267
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    if-eqz p9, :cond_0

    .line 269
    invoke-interface/range {p9 .. p10}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$animateCenter$0(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 184
    invoke-virtual/range {p12 .. p12}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 186
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/16 v10, 0x8

    new-array v11, v10, [F

    .line 187
    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v14, 0x1

    aput v12, v11, v14

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v15, 0x2

    aput v12, v11, v15

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v16, 0x3

    aput v12, v11, v16

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v17, 0x4

    aput v12, v11, v17

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v18, 0x5

    aput v12, v11, v18

    iget v12, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v19, 0x6

    aput v12, v11, v19

    iget v12, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v20, 0x7

    aput v12, v11, v20

    new-array v10, v10, [F

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v15, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v8

    add-float/2addr v12, v15

    aput v12, v10, v13

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    add-float/2addr v12, v4

    const/4 v0, 0x1

    aput v12, v10, v0

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v12

    mul-float/2addr v4, v8

    add-float/2addr v0, v4

    const/4 v4, 0x2

    aput v0, v10, v4

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    add-float/2addr v0, v4

    aput v0, v10, v16

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v17

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v18

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v19

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, v10, v20

    const/4 v0, 0x0

    const/4 v1, 0x4

    move-object/from16 p0, v9

    move-object/from16 p1, v11

    const/4 v2, 0x0

    move/from16 p2, v2

    move-object/from16 p3, v10

    move/from16 p4, v0

    move/from16 p5, v1

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 198
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    cmpl-float v0, p9, v0

    if-lez v0, :cond_0

    sub-float v0, p9, p10

    mul-float/2addr v0, v8

    add-float v0, p10, v0

    .line 200
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v9, v0, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 202
    :cond_0
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 204
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    if-eqz p11, :cond_1

    .line 206
    invoke-interface/range {p11 .. p12}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$flip$3(ZFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 437
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 439
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 444
    invoke-virtual {v1, v0, v3, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 445
    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 447
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    invoke-virtual {v1, v0, v3, p0, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 448
    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 451
    :goto_0
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p4, :cond_1

    .line 453
    invoke-interface {p4, p5}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$rotate$2(ZFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 388
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 390
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p0, :cond_0

    mul-float/2addr p1, v0

    .line 393
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 394
    invoke-virtual {v1, p4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_0
    mul-float/2addr p1, v0

    .line 396
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    sget p3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    invoke-virtual {v1, p1, p0, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 397
    invoke-virtual {v1, p4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 400
    :goto_0
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p5, :cond_1

    .line 402
    invoke-interface {p5, p6}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$settleOrientation$4(FFFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 539
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 541
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    mul-float/2addr p0, v0

    .line 542
    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    cmpl-float p0, p3, p4

    if-eqz p0, :cond_0

    sub-float/2addr p4, p3

    mul-float/2addr p4, v0

    add-float/2addr p3, p4

    .line 545
    invoke-virtual {v1, p3, p3, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 547
    :cond_0
    invoke-virtual {v1, p5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 548
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p6, :cond_1

    .line 550
    invoke-interface {p6, p7}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 2

    const/4 v0, 0x0

    .line 304
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->tx:F

    .line 305
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->ty:F

    .line 306
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->px:F

    .line 307
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->py:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 308
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoom:F

    .line 309
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->deg:F

    return-void
.end method

.method public static reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    .line 578
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 580
    :cond_0
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 581
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v6, v6

    invoke-direct {v5, v6, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 582
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v7, v7

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 583
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v8, v8

    invoke-direct {v7, v4, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/4 v8, 0x0

    .line 585
    invoke-static {v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v9

    .line 587
    invoke-virtual {v3, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 588
    invoke-virtual {v5, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 589
    invoke-virtual {v6, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 590
    invoke-virtual {v7, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 592
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 594
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v10

    .line 595
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x4

    .line 597
    invoke-static {v10, v12, v13, v12}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v14

    add-float/2addr v10, v14

    sub-float v14, p2, v0

    .line 599
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v14, v14

    sub-float v15, p3, v1

    .line 600
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v15, v15

    const/high16 v16, 0x42b40000    # 90.0f

    div-float v16, v10, v16

    .line 602
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    const/4 v13, 0x2

    rem-int/lit8 v16, v16, 0x2

    const/high16 v17, 0x43340000    # 180.0f

    if-eqz v16, :cond_1

    .line 603
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    invoke-static {v9, v4, v8, v14, v15}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->centerFit(Landroid/graphics/Matrix;IIII)V

    if-nez v11, :cond_2

    add-float v10, v10, v17

    goto :goto_0

    .line 606
    :cond_1
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v9, v4, v8, v14, v15}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->centerFit(Landroid/graphics/Matrix;IIII)V

    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    add-float v10, v10, v17

    :cond_3
    neg-float v4, v10

    .line 610
    div-int/lit8 v8, v14, 0x2

    int-to-float v8, v8

    div-int/lit8 v10, v15, 0x2

    int-to-float v10, v10

    invoke-virtual {v9, v4, v8, v10}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    if-eqz v11, :cond_4

    const/high16 v4, -0x40800000    # -1.0f

    .line 611
    invoke-virtual {v9, v4, v12, v8, v10}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_4
    new-array v4, v13, [F

    int-to-float v8, v14

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v8, v10

    const/4 v11, 0x0

    aput v8, v4, v11

    int-to-float v8, v15

    mul-float/2addr v8, v10

    const/4 v12, 0x1

    aput v8, v4, v12

    .line 614
    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 616
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    aget v14, v4, v11

    sub-float/2addr v8, v14

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    aget v4, v4, v12

    sub-float/2addr v11, v4

    invoke-virtual {v9, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float v0, v0

    neg-float v1, v1

    .line 617
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 619
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    if-eqz v0, :cond_5

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    invoke-static {v9, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->restrictZoom(Landroid/graphics/Matrix;FF)V

    .line 621
    :cond_5
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 622
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v8, v8

    invoke-direct {v4, v8, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 623
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v10, v10

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v11, v11

    invoke-direct {v8, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 624
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v11, v11

    invoke-direct {v10, v1, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    if-nez v2, :cond_6

    .line 627
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void

    .line 631
    :cond_6
    invoke-virtual {v0, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 632
    invoke-virtual {v4, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 633
    invoke-virtual {v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 634
    invoke-virtual {v10, v9}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/16 v1, 0x8

    new-array v9, v1, [F

    .line 636
    iget v11, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v14, 0x0

    aput v11, v9, v14

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v9, v12

    iget v3, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v9, v13

    iget v3, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x3

    aput v3, v9, v5

    iget v3, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v11, 0x4

    aput v3, v9, v11

    iget v3, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v6, 0x5

    aput v3, v9, v6

    iget v3, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v11, 0x6

    aput v3, v9, v11

    iget v3, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x7

    aput v3, v9, v7

    new-array v1, v1, [F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v14, 0x0

    aput v3, v1, v14

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v12

    iget v0, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v0, v1, v13

    iget v0, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v5

    iget v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x4

    aput v0, v1, v3

    iget v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v6

    iget v0, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v0, v1, v11

    iget v0, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v7

    invoke-static {v9, v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animate([F[FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static restrictZoom(Landroid/graphics/Matrix;FF)V
    .locals 3

    .line 697
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;->getMaxZoom()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 700
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 703
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public static rotate(FFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 9

    .line 378
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 381
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 383
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 385
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;

    move-object v1, v8

    move v2, p3

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;-><init>(ZFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 405
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/Camera$3;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera$3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static settleOrientation(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    .line 511
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-static {p2, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->restrictZoom(Landroid/graphics/Matrix;FF)V

    :cond_0
    return-void

    .line 516
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v0

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v4

    .line 517
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v7

    .line 519
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;->getMaxZoom()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_0
    cmpl-float v1, v7, v0

    if-lez v1, :cond_3

    div-float/2addr v0, v7

    move v8, v0

    goto :goto_1

    :cond_3
    move v8, v7

    .line 522
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 523
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    if-eqz p2, :cond_4

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-static {p2, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->restrictZoom(Landroid/graphics/Matrix;FF)V

    :cond_4
    if-eqz p3, :cond_5

    const/4 p0, 0x0

    .line 525
    invoke-interface {p3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 526
    invoke-interface {p3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_5
    return-void

    .line 531
    :cond_6
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 532
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 534
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    .line 535
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 536
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;

    move-object v3, v1

    move v5, p0

    move v6, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;-><init>(FFFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/Camera$7;

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/sketchbook/Camera$7;-><init>(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 573
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static snapToOrthagonalDirection(FF)V
    .locals 4

    .line 684
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const v3, 0x3f19999a    # 0.6f

    if-lez v2, :cond_0

    div-float/2addr v3, v0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v2, v3, v0

    if-gez v2, :cond_1

    move v3, v0

    .line 690
    :cond_1
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    const/4 v2, 0x4

    if-nez v0, :cond_2

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v0

    invoke-static {v0, v1, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v0

    goto :goto_0

    .line 691
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 693
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p0, p1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    return-void
.end method

.method public static uncacheCameras()V
    .locals 0

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "QuickCurveGuide.java"


# static fields
.field private static final CREATE:I = 0x1

.field private static final END_POINT:I = 0x4

.field private static final LOCK:I = 0x6

.field private static final MID_POINT:I = 0x3

.field private static final NEXT:I = 0x5

.field private static final NONE:I = 0x0

.field private static final START_POINT:I = 0x2


# instance fields
.field a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private active:Z

.field private adjustCase:I

.field b:Lcom/brakefield/infinitestudio/geometry/Point;

.field c:Lcom/brakefield/infinitestudio/geometry/Point;

.field private down:Z

.field fill:Landroid/graphics/Paint;

.field private lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

.field private lastPosition:F

.field private lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private nextDrawable:Landroid/graphics/drawable/Drawable;

.field private nextLine:Lcom/brakefield/infinitestudio/geometry/Line;

.field private out:Z

.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private prevX:F

.field private prevY:F

.field private unlockedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 62
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->fill:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 41
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v2, -0x3b860000    # -1000.0f

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 42
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 43
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 45
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 58
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->fill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->scale_in:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->nextDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v3, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->lock:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v3, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->lock_outline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->unlockedDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    neg-int v3, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->knobSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->nextDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->unlockedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 480
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 485
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 486
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    double-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    .line 485
    invoke-static {v1, v3, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 488
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v1, v0, v2}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getMaxPointFromControlPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0

    .line 481
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method private getControlPoints()[Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 16

    move-object/from16 v0, p0

    .line 497
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 501
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 502
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 503
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 505
    invoke-static {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getControlPointFromMaxPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 507
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 508
    iget v7, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 509
    iget v3, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v6, v3, v4, v7, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    new-array v5, v3, [F

    .line 513
    new-instance v7, Landroid/graphics/PathMeasure;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v6, 0x0

    .line 515
    invoke-virtual {v7, v6, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 517
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v9, v4, v8

    aget v10, v5, v8

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aget v11, v4, v10

    aget v12, v5, v10

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    invoke-direct {v6, v9, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 519
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-virtual {v7, v9, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 520
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v9, v4, v8

    aget v11, v5, v8

    mul-float/2addr v11, v1

    add-float/2addr v9, v11

    aget v11, v4, v10

    aget v12, v5, v10

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    invoke-direct {v7, v9, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 522
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v11, v4, v8

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v1

    aget v13, v5, v8

    mul-float/2addr v13, v12

    add-float/2addr v11, v13

    aget v13, v4, v10

    aget v5, v5, v10

    mul-float/2addr v12, v5

    add-float/2addr v13, v12

    invoke-direct {v9, v11, v13}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 524
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 525
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v11, v5

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-object v15, v4

    sub-double v3, v11, v13

    double-to-float v3, v3

    .line 527
    invoke-static {v2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    add-double/2addr v11, v13

    double-to-float v4, v11

    .line 528
    invoke-static {v2, v1, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 530
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    aget v4, v15, v8

    aget v11, v15, v10

    iget v12, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v4, v11, v12, v13}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->nextLine:Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/brakefield/infinitestudio/geometry/Point;

    aput-object v6, v2, v8

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v7, v2, v1

    const/4 v1, 0x4

    aput-object v9, v2, v1

    return-object v2
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 6

    .line 374
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v1, v0, v2}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getControlPointFromMaxPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 379
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v3, :cond_0

    .line 381
    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 382
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 383
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 386
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 328
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snapping:Z

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 332
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getControlPoints()[Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 341
    new-instance v2, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 342
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 343
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 344
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v10, 0x0

    aget-object v2, v0, v10

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v3, v0, v10

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 348
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/Point;

    aget-object v2, v0, v9

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v3, v0, v9

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v11, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 349
    new-instance v12, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x2

    aget-object v3, v0, v2

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v4, v0, v2

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v12, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 350
    new-instance v13, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v14, 0x3

    aget-object v3, v0, v14

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v4, v0, v14

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v13, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 351
    new-instance v15, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v6, 0x4

    aget-object v3, v0, v6

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v0, v0, v6

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v15, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 353
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 354
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 355
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 356
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 357
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    .line 359
    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v16, 0x0

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    if-ne v0, v2, :cond_1

    move/from16 v17, v9

    goto :goto_0

    :cond_1
    move/from16 v17, v10

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    move v9, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 361
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->unlockedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    iget v3, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    if-ne v0, v14, :cond_4

    goto :goto_2

    :cond_4
    move v6, v10

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 364
    iget v3, v12, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    if-ne v0, v14, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    move v6, v10

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 366
    iget v3, v13, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v13, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    if-ne v0, v9, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    move v6, v10

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 368
    iget v3, v15, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v15, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->nextLine:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 369
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    add-float v5, v0, v1

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    move v6, v10

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 368
    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 0

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 550
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 551
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 552
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 553
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 554
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x3"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 555
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y3"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 562
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 563
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 564
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 565
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 566
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 12

    .line 83
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    if-eqz v0, :cond_0

    .line 84
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->out:Z

    .line 89
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 90
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snapping:Z

    .line 91
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    const/4 v2, 0x0

    .line 92
    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 94
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getControlPoints()[Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    const/4 v4, 0x3

    .line 96
    aget-object v5, v3, v4

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v6, v3, v4

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v5, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    const/4 v6, 0x2

    .line 98
    aget-object v7, v3, v6

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v6, v3, v6

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v7, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    .line 100
    aget-object v7, v3, v1

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v8, v3, v1

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v7, v8}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v7

    const/4 v8, 0x4

    .line 102
    aget-object v9, v3, v8

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v10, v3, v8

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v9, v10}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v9

    .line 104
    aget-object v10, v3, v0

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget-object v3, v3, v0

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v10, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v11

    div-float/2addr v10, v11

    cmpg-float v3, v3, v10

    if-gez v3, :cond_2

    .line 106
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v2, :cond_1

    const/4 v4, 0x6

    :cond_1
    iput v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 107
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->move:Z

    .line 108
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    goto/16 :goto_0

    .line 110
    :cond_2
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v10

    div-float/2addr v3, v10

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    .line 111
    iput v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 112
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    goto/16 :goto_0

    .line 114
    :cond_3
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v3, v5

    cmpg-float v3, v6, v3

    if-gez v3, :cond_4

    .line 115
    iput v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 116
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    goto/16 :goto_0

    .line 118
    :cond_4
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    cmpg-float v3, v7, v3

    if-gez v3, :cond_6

    .line 119
    iput v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 121
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 123
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v3, :cond_5

    .line 125
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 132
    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 133
    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 135
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 137
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 139
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 140
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 143
    :cond_5
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 144
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 145
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 146
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 147
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 149
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    goto/16 :goto_0

    .line 151
    :cond_6
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v1, v9, v1

    if-gez v1, :cond_7

    const/4 v1, 0x5

    .line 153
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 154
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 156
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getControlPointFromMaxPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 160
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 162
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 163
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 166
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 167
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 169
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 171
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 173
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    .line 175
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 176
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 178
    :cond_7
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 180
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snapping:Z

    goto :goto_0

    .line 184
    :cond_8
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 186
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 189
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downX:F

    .line 190
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downY:F

    .line 192
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevX:F

    .line 193
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevY:F

    .line 195
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    return p1
.end method

.method public onMove(FF)Z
    .locals 4

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    .line 203
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 205
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevX:F

    sub-float v1, p1, v1

    .line 206
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevY:F

    sub-float v2, p2, v2

    .line 208
    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 285
    :pswitch_0
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downX:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downY:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 286
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 287
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->move:Z

    const/4 v0, 0x3

    .line 288
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    goto/16 :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 273
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 276
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 277
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 280
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_0

    .line 225
    :pswitch_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v1

    iput v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 226
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_0

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v1

    iput v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 220
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_0

    .line 213
    :pswitch_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v1

    iput v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 214
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 231
    :pswitch_5
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->out:Z

    if-nez v0, :cond_0

    .line 232
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downY:F

    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 233
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastMid:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 236
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastStart:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 238
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downX:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 239
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->downY:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 242
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 243
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 246
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 247
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 250
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->out:Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 258
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 261
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 262
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 265
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 294
    :cond_1
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevX:F

    .line 295
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->prevY:F

    .line 297
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUp()Z
    .locals 4

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    .line 305
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snapping:Z

    .line 307
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    if-nez v1, :cond_0

    return v0

    .line 310
    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->move:Z

    if-nez v1, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 312
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lock:Z

    .line 313
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 314
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 317
    :cond_1
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->adjustCase:I

    .line 319
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    .line 320
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    return v1
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 14

    .line 393
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getAdjustedB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 402
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 403
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 404
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 406
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 407
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 408
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastPosition:F

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    .line 416
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    .line 418
    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastPosition:F

    cmpl-float v5, v4, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    sub-float v5, v4, v3

    add-float/2addr v4, v3

    cmpg-float v3, v5, v6

    if-gez v3, :cond_2

    move v5, v6

    :cond_2
    cmpl-float v3, v4, v0

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v5, v6

    :goto_0
    sub-float/2addr v0, v5

    add-float/2addr v0, v5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 432
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    move v7, v2

    move v4, v6

    :goto_1
    cmpg-float v8, v5, v0

    const/4 v9, 0x1

    if-gez v8, :cond_a

    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 438
    iget-object v10, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v8, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 440
    iget v10, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v6, v4, v10, v12}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v10

    cmpl-float v12, v7, v2

    if-eqz v12, :cond_5

    cmpg-float v12, v10, v7

    if-gez v12, :cond_6

    :cond_5
    aget v6, v8, v1

    aget v4, v8, v9

    .line 446
    iput v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastPosition:F

    move v7, v10

    :cond_6
    add-float v10, v5, v3

    cmpl-float v10, v10, v0

    if-lez v10, :cond_9

    .line 452
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v5, v0, v8, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 454
    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v6, v4, v5, v10}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    cmpl-float v10, v7, v2

    if-eqz v10, :cond_8

    cmpg-float v10, v5, v7

    if-gez v10, :cond_7

    goto :goto_2

    :cond_7
    move v5, v0

    goto :goto_3

    :cond_8
    :goto_2
    aget v4, v8, v1

    aget v6, v8, v9

    .line 460
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->lastPosition:F

    move v7, v5

    move v5, v0

    move v13, v6

    move v6, v4

    move v4, v13

    :cond_9
    :goto_3
    add-float/2addr v5, v3

    goto :goto_1

    :cond_a
    cmpl-float v0, v7, v2

    if-nez v0, :cond_b

    return v1

    .line 468
    :cond_b
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->snapping:Z

    if-nez v0, :cond_d

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v0, v2

    cmpg-float v0, v7, v0

    if-gez v0, :cond_c

    goto :goto_4

    :cond_c
    return v1

    .line 470
    :cond_d
    :goto_4
    iput v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 471
    iput v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v9
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->down:Z

    .line 537
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 538
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 539
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/QuickCurveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

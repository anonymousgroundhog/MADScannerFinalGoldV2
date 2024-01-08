.class public Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "TwoPointPerspectiveGuide.java"


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private angleA:F

.field private angleB:F

.field private b:Lcom/brakefield/infinitestudio/geometry/Point;

.field horizon:Landroid/graphics/Paint;

.field interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private vertical:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 21
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 22
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 23
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->horizon:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 36
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 39
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->horizon:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->horizon:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 374
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 375
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 376
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 377
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 378
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 379
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v0

    sub-float/2addr p0, v1

    sub-float/2addr v3, v0

    sub-float/2addr p1, v1

    mul-float v0, v2, v3

    mul-float v1, p0, p1

    add-float/2addr v0, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 385
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 386
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 387
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double p0, p0

    div-double/2addr v3, p0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public applyPerspectiveFactor(FFF)F
    .locals 1

    .line 460
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p2, p3, p1, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v7, p0

    .line 178
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 180
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 182
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v8, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 184
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 186
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->showGrid:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snap:Z

    if-nez v1, :cond_5

    .line 188
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v1, v0, v8}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 190
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    .line 192
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    sub-double/2addr v3, v11

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v4

    .line 193
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v4, v11

    iget v11, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    .line 194
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iget v12, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v9, v12

    .line 195
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v13

    add-double/2addr v9, v5

    double-to-float v5, v9

    iget-object v6, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->horizon:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v11

    move/from16 v19, v5

    move-object/from16 v20, v6

    .line 192
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    const/16 v3, 0x9

    int-to-float v4, v3

    const v5, 0x3f490fdb

    div-float/2addr v5, v4

    const/4 v6, 0x0

    :goto_0
    if-gt v6, v3, :cond_2

    .line 211
    iget-object v9, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v10, v6

    .line 212
    invoke-interface {v9, v4, v10, v4}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v9

    .line 214
    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    neg-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v9, v2

    float-to-double v13, v9

    move/from16 v16, v4

    .line 215
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v10

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 216
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v10, v13

    mul-float/2addr v10, v1

    add-float v14, v4, v10

    iget-object v15, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v13, v3

    .line 214
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    const/16 v3, 0x9

    goto :goto_0

    :cond_2
    move/from16 v16, v4

    move v4, v3

    const/4 v3, 0x1

    :goto_1
    if-gt v3, v4, :cond_3

    .line 224
    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v6, v3

    move/from16 v10, v16

    .line 225
    invoke-interface {v4, v10, v6, v10}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v4

    .line 227
    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-double v14, v4

    move/from16 v17, v10

    .line 228
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v6, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 229
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v1

    add-float v15, v9, v10

    iget-object v9, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v14, v6

    move-object/from16 v16, v9

    .line 227
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v17

    const/16 v4, 0x9

    goto :goto_1

    :cond_3
    move/from16 v17, v16

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x9

    if-gt v3, v4, :cond_4

    .line 237
    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v6, v3

    move/from16 v10, v17

    .line 238
    invoke-interface {v4, v10, v6, v10}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v4

    .line 240
    iget v12, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    neg-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-double v14, v4

    .line 241
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v1

    sub-float/2addr v6, v9

    iget v9, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 242
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v1

    sub-float v15, v9, v10

    iget-object v9, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v14, v6

    move-object/from16 v16, v9

    .line 240
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_3
    const/16 v4, 0x9

    if-gt v3, v4, :cond_5

    .line 250
    iget-object v6, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v9, v3

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v17, v10

    move/from16 v11, v17

    invoke-interface {v6, v11, v9, v10}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v6

    .line 253
    iget v13, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v9, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v6, v2

    move v10, v5

    float-to-double v4, v6

    move/from16 v19, v10

    move v6, v11

    .line 254
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v1

    sub-float v15, v9, v10

    iget v9, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 255
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float v16, v9, v4

    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v4

    .line 253
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v17, v6

    move/from16 v5, v19

    goto :goto_3

    .line 260
    :cond_5
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_6

    .line 262
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapX:F

    iget v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapY:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 263
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 265
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v9, p1

    invoke-virtual {v7, v9, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    :cond_6
    move-object/from16 v9, p1

    .line 324
    :goto_4
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    if-nez v1, :cond_9

    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->lock:Z

    if-nez v1, :cond_9

    const/4 v2, 0x0

    .line 325
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 326
    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    :cond_9
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 19

    move-object/from16 v0, p0

    .line 403
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->showCursor:Z

    if-nez v1, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 408
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 410
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 412
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 414
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 416
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v4, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 417
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 419
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 421
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 423
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 425
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    .line 427
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v5, v5

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    double-to-float v14, v5

    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    .line 428
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    sub-double/2addr v4, v9

    double-to-float v15, v4

    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v4

    .line 429
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    double-to-float v4, v4

    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v5, v5

    .line 430
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    add-double/2addr v5, v7

    double-to-float v5, v5

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    .line 427
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 431
    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v1, v7

    const/high16 v7, -0x3b860000    # -1000.0f

    mul-float/2addr v1, v7

    add-float v9, v4, v1

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 432
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v4, v7

    add-float v10, v1, v4

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 433
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v14

    add-float v11, v1, v4

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 434
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v14

    add-float v12, v1, v4

    iget-object v13, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    .line 431
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v7

    add-float v9, v1, v2

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 436
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v2, v10

    mul-float/2addr v2, v7

    add-float v10, v1, v2

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 437
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v14

    add-float v11, v1, v2

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 438
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    add-float v12, v1, v2

    iget-object v13, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    .line 435
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 443
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 445
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 446
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 447
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y2"

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

    .line 453
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 454
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 455
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 456
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 5

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->perspectiveFactor:F

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 53
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->move:Z

    .line 57
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->lock:Z

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 59
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    div-float/2addr v2, v3

    .line 64
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 72
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    .line 74
    :cond_2
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    .line 75
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    .line 77
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapX:F

    .line 78
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapY:F

    .line 80
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 82
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleA:F

    .line 84
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 86
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleB:F

    .line 88
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 90
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public onMove(FF)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 95
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v3, :cond_2

    .line 96
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->move:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 100
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->move:Z

    .line 103
    :cond_0
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->move:Z

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 105
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_1
    return v4

    .line 109
    :cond_2
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v3, :cond_5

    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    .line 110
    invoke-static {v3, v4, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 111
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 113
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleA:F

    float-to-double v8, v8

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v7, v7

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleA:F

    float-to-double v12, v9

    .line 115
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    sub-double/2addr v7, v12

    double-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 117
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 119
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v7, v7

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleB:F

    float-to-double v12, v9

    .line 120
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    sub-double/2addr v7, v12

    double-to-float v7, v7

    iget-object v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v8, v8

    iget v12, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleB:F

    float-to-double v12, v12

    .line 121
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    sub-double/2addr v8, v12

    double-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 123
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 125
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 126
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 128
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v7, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 130
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 132
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    float-to-double v7, v7

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    sub-double/2addr v7, v14

    double-to-float v7, v7

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    float-to-double v8, v8

    .line 133
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    double-to-float v8, v8

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    float-to-double v14, v9

    .line 134
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    add-double v14, v14, v16

    double-to-float v9, v14

    iget v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    float-to-double v14, v14

    .line 135
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v14, v12

    double-to-float v10, v14

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 137
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v7, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    .line 139
    iget v7, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v7, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    .line 140
    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v7, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    .line 141
    iget v7, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v7, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gez v7, :cond_3

    cmpg-float v6, v6, v3

    if-gez v6, :cond_3

    .line 144
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 145
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 146
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 147
    iput v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    .line 149
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    .line 150
    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    .line 152
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->perspectiveFactor:F

    goto :goto_0

    :cond_3
    cmpg-float v1, v3, v4

    if-gez v1, :cond_4

    .line 155
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 156
    iget v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleA:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 159
    iget v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->angleB:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    :cond_5
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    .line 169
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0

    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 13

    .line 331
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 334
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 335
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    const v2, 0x3fc90fdb

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    const v2, 0x4096cbe4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 342
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 347
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->snapAngle:F

    float-to-double v9, v6

    .line 348
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 349
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 350
    invoke-static {v3, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 351
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v4, v0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v9

    double-to-float v0, v4

    .line 352
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    double-to-float v0, v4

    .line 353
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v2, v4

    .line 354
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 355
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    .line 356
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    if-eqz v0, :cond_3

    .line 358
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 359
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 365
    :cond_3
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 397
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

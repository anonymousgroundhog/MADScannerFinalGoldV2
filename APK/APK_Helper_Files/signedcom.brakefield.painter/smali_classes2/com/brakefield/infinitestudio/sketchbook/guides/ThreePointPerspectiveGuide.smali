.class public Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "ThreePointPerspectiveGuide.java"


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private angleA:F

.field private angleB:F

.field private angleC:F

.field private b:Lcom/brakefield/infinitestudio/geometry/Point;

.field private c:Lcom/brakefield/infinitestudio/geometry/Point;

.field interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 21
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 27
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 33
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

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 35
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 402
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 403
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 404
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 405
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 406
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 407
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

    .line 413
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 414
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 415
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

.method private getCentroid()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 5

    .line 398
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v7, p0

    .line 168
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downX:F

    iget v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downY:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 169
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 171
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 173
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 175
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v8, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 177
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 179
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v9, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 181
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 183
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 185
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    .line 187
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v8}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 189
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    .line 191
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v9}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 193
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    .line 195
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->showGrid:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snap:Z

    if-nez v0, :cond_7

    .line 208
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v3

    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v4, v5

    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 215
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v1, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 216
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v8, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 217
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v4, v9, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 221
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    .line 222
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v6

    mul-float/2addr v6, v5

    .line 223
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v12

    mul-float/2addr v12, v5

    const/16 v5, 0x14

    int-to-float v13, v5

    const v14, 0x3fc90fdb

    div-float/2addr v14, v13

    .line 229
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    .line 230
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    .line 231
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    const/4 v15, 0x0

    :goto_0
    if-gt v15, v5, :cond_2

    .line 237
    iget-object v10, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v11, v15

    .line 238
    invoke-interface {v10, v13, v11, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v10

    .line 240
    iget v11, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move/from16 v22, v12

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    neg-float v10, v10

    mul-float/2addr v10, v14

    add-float/2addr v10, v2

    move-object/from16 v23, v9

    float-to-double v9, v10

    move/from16 v24, v3

    move/from16 v25, v4

    .line 241
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    add-float v19, v12, v3

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 242
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float/2addr v4, v0

    add-float v20, v3, v4

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v11

    move/from16 v18, v5

    move-object/from16 v21, v3

    .line 240
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v22

    move-object/from16 v9, v23

    move/from16 v3, v24

    move/from16 v4, v25

    const/16 v5, 0x14

    goto :goto_0

    :cond_2
    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v23, v9

    move/from16 v22, v12

    move v4, v5

    const/4 v3, 0x1

    :goto_1
    if-gt v3, v4, :cond_3

    .line 249
    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v5, v3

    .line 250
    invoke-interface {v4, v13, v5, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v4

    .line 252
    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v10, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v4, v14

    add-float/2addr v4, v2

    float-to-double v11, v4

    move v4, v14

    .line 253
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v0

    add-float v19, v10, v14

    iget v10, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 254
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v0

    add-float v20, v10, v11

    iget-object v10, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v5

    move/from16 v18, v9

    move-object/from16 v21, v10

    .line 252
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move v14, v4

    const/16 v4, 0x14

    goto :goto_1

    :cond_3
    move v4, v14

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x14

    if-gt v0, v2, :cond_4

    .line 261
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v3, v0

    .line 262
    invoke-interface {v2, v13, v3, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v2

    .line 264
    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v9, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v4

    add-float v2, v2, v24

    float-to-double v10, v2

    .line 265
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v2, v14

    mul-float/2addr v2, v6

    add-float v19, v9, v2

    iget v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 266
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v6

    add-float v20, v2, v9

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v21, v2

    .line 264
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_3
    if-gt v0, v2, :cond_5

    .line 273
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v3, v0

    .line 274
    invoke-interface {v2, v13, v3, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v2

    .line 276
    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v9, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v2, v4

    add-float v2, v2, v24

    float-to-double v10, v2

    .line 277
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v2, v14

    mul-float/2addr v2, v6

    add-float v19, v9, v2

    iget v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 278
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v6

    add-float v20, v2, v9

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v21, v2

    .line 276
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-gt v0, v2, :cond_6

    .line 285
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v3, v0

    .line 286
    invoke-interface {v2, v13, v3, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v2

    move-object/from16 v9, v23

    .line 288
    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v4

    add-float v2, v2, v25

    float-to-double v10, v2

    .line 289
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v2, v14

    mul-float v12, v22, v2

    add-float v19, v6, v12

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 290
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float v12, v22, v6

    add-float v20, v2, v12

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v21, v2

    .line 288
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    goto :goto_4

    :cond_6
    move-object/from16 v9, v23

    const/4 v0, 0x1

    :goto_5
    if-gt v0, v2, :cond_7

    .line 297
    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    int-to-float v5, v0

    .line 298
    invoke-interface {v3, v13, v5, v13}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v3

    .line 300
    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v10, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v3, v4

    add-float v3, v3, v25

    float-to-double v11, v3

    .line 301
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v3, v14

    mul-float v3, v3, v22

    add-float v19, v10, v3

    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 302
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v12, v22, v10

    add-float v20, v3, v12

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v21, v3

    .line 300
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 306
    :cond_7
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_8

    .line 308
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapX:F

    iget v3, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapY:F

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 309
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 311
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v10, p1

    invoke-virtual {v7, v10, v2, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    goto :goto_6

    :cond_8
    move-object/from16 v10, p1

    .line 350
    :goto_6
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    if-nez v0, :cond_c

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->lock:Z

    if-nez v0, :cond_c

    const/4 v2, 0x0

    .line 351
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 352
    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 353
    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    :cond_c
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 16

    move-object/from16 v0, p0

    .line 478
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->showCursor:Z

    if-nez v1, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 483
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 485
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 487
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 489
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 491
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 493
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 495
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 497
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    .line 499
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 501
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    .line 503
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v1, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 505
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    .line 507
    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    const/high16 v8, -0x3b860000    # -1000.0f

    mul-float/2addr v2, v8

    add-float v10, v5, v2

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 508
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v5, v11

    mul-float/2addr v5, v8

    add-float v11, v2, v5

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 509
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v15

    add-float v12, v2, v5

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 510
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v15

    add-float v13, v2, v5

    iget-object v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    .line 507
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 511
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float/2addr v3, v8

    add-float v10, v2, v3

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 512
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float/2addr v3, v8

    add-float v11, v2, v3

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 513
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    mul-float/2addr v3, v15

    add-float v12, v2, v3

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 514
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v3, v15

    add-float v13, v2, v3

    iget-object v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    .line 511
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 515
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v8

    add-float v10, v2, v5

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 516
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v8

    add-float v11, v2, v5

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 517
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v15

    add-float v12, v2, v5

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 518
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v15

    add-float v13, v1, v2

    iget-object v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    .line 515
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawMarker(Landroid/graphics/Canvas;FFF)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 432
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 434
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 437
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 438
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 439
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 441
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 442
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 443
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 445
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v7, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 447
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    .line 449
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v7, v3, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 451
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    .line 453
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v7, v3, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 455
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    .line 457
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float v4, v4, p4

    sub-float v4, v1, v4

    .line 458
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p4

    sub-float v9, v2, v9

    .line 459
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, p4

    add-float/2addr v10, v1

    .line 460
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p4

    add-float/2addr v7, v2

    invoke-direct {v6, v4, v9, v10, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 461
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float v5, v5, p4

    sub-float v5, v1, v5

    .line 462
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p4

    sub-float v9, v2, v9

    .line 463
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, p4

    add-float/2addr v10, v1

    .line 464
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p4

    add-float/2addr v7, v2

    invoke-direct {v4, v5, v9, v10, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 465
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float v3, v3, p4

    sub-float v3, v1, v3

    .line 466
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p4

    sub-float v9, v2, v9

    .line 467
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, p4

    add-float/2addr v1, v10

    .line 468
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p4

    add-float/2addr v2, v7

    invoke-direct {v5, v3, v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 470
    iget v11, v6, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v12, v6, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v13, v6, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v14, v6, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget-object v15, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 471
    iget v1, v4, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, v4, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v3, v4, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 472
    iget v8, v5, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v9, v5, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v10, v5, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v11, v5, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget-object v12, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 523
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 525
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 526
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 527
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 528
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x3"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 529
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 535
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 536
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 537
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 538
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 539
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 540
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 5

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->perspectiveFactor:F

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 49
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->move:Z

    .line 53
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->lock:Z

    if-nez v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 55
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    div-float/2addr v2, v3

    .line 60
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    div-float/2addr v2, v3

    .line 65
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 71
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 72
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    .line 74
    :cond_3
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downX:F

    .line 75
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downY:F

    .line 77
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapX:F

    .line 78
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapY:F

    .line 80
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 82
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleA:F

    .line 84
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 86
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleB:F

    .line 88
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 90
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleC:F

    .line 92
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 94
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public onMove(FF)Z
    .locals 13

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_2

    .line 100
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->move:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->move:Z

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->move:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 109
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_1
    return v1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downY:F

    .line 114
    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 115
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 117
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleA:F

    float-to-double v5, v5

    .line 118
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleA:F

    float-to-double v9, v6

    .line 119
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 121
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleB:F

    float-to-double v9, v6

    .line 124
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    double-to-float v4, v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v5, v5

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleB:F

    float-to-double v9, v9

    .line 125
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    double-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 127
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v5, v5

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleC:F

    float-to-double v9, v9

    .line 130
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    double-to-float v5, v5

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v9, v6

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleC:F

    float-to-double v11, v6

    .line 131
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    double-to-float v6, v9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 133
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 135
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    .line 136
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    .line 137
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p2

    .line 138
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_3

    cmpg-float p1, p2, v0

    if-gez p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 142
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleC:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapAngle:F

    goto :goto_0

    :cond_3
    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    .line 144
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 145
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleA:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapAngle:F

    goto :goto_0

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 148
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->angleB:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapAngle:F

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    .line 158
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 358
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 361
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 362
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 367
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->snapAngle:F

    float-to-double v9, v6

    .line 368
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 369
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 370
    invoke-static {v3, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 371
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v4, v0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v9

    double-to-float v0, v4

    .line 372
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    double-to-float v0, v4

    .line 373
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v2, v4

    .line 374
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 375
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    .line 376
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    if-eqz v0, :cond_1

    .line 378
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 379
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 389
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 426
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 427
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

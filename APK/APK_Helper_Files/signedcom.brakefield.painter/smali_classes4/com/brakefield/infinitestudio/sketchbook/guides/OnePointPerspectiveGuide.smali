.class public Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "OnePointPerspectiveGuide.java"


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private angleA:F

.field private horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

.field private vertical:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 18
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 27
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 28
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 315
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 316
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 317
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 318
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 319
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 320
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

    .line 326
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 327
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 328
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

    .line 404
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p2, p3, p1, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 142
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 143
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 145
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->showGrid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snap:Z

    if-nez v1, :cond_4

    .line 147
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const v3, -0x39e3c000    # -10000.0f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 148
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    const v5, 0x461c4000    # 10000.0f

    invoke-direct {v3, v5, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 150
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 151
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 153
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v4, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 158
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v1, v3

    .line 162
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v1

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v6, v1

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v7, v1

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v8, v1

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v4, v2

    :goto_0
    int-to-float v6, v4

    const/high16 v7, 0x41a00000    # 20.0f

    .line 164
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v8

    mul-float/2addr v8, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v1

    add-float/2addr v1, v6

    neg-float v6, v1

    .line 168
    invoke-virtual {v3, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 170
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    move v3, v2

    :goto_1
    int-to-float v4, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 176
    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-int/lit8 v6, v3, 0x2

    int-to-double v9, v6

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    float-to-double v11, v1

    div-double/2addr v9, v11

    const v6, 0x3f490fdb

    float-to-double v11, v6

    add-double/2addr v9, v11

    .line 181
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 185
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v5

    add-float v10, v6, v9

    iget-object v11, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    move-object v6, p1

    move v9, v4

    .line 176
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    :cond_4
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_5

    .line 195
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapX:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapY:F

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 196
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 198
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p0, p1, v3, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 260
    :cond_5
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->lock:Z

    if-nez v1, :cond_7

    .line 261
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    move v9, v2

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    :cond_7
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 343
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->showCursor:Z

    if-nez v3, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 347
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 349
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 351
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 352
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    .line 354
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    double-to-float v4, v6

    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v6, v6

    .line 355
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    double-to-float v6, v6

    invoke-direct {v5, v4, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 356
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    double-to-float v6, v6

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v10, v3

    .line 357
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v12

    add-double/2addr v10, v7

    double-to-float v3, v10

    invoke-direct {v4, v6, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 359
    iget v15, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    const v4, -0x39e3c000    # -10000.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 362
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const v6, 0x461c4000    # 10000.0f

    invoke-direct {v4, v6, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 364
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 365
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 367
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v6, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 369
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    neg-float v3, v3

    .line 371
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v4

    if-eqz v4, :cond_1

    neg-float v3, v3

    .line 374
    :cond_1
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    float-to-double v6, v1

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v10, v3

    add-double/2addr v10, v8

    .line 375
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    sub-double v8, v6, v8

    double-to-float v1, v8

    float-to-double v8, v2

    .line 376
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double v14, v8, v14

    double-to-float v2, v14

    invoke-direct {v4, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 377
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 378
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v14, v6

    double-to-float v2, v14

    .line 379
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    double-to-float v10, v10

    invoke-direct {v1, v2, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 380
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    add-float/2addr v3, v5

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double v14, v6, v14

    double-to-float v3, v14

    .line 381
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double v14, v8, v14

    double-to-float v5, v14

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 382
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v6, v14

    double-to-float v5, v6

    .line 383
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v8, v6

    double-to-float v6, v8

    invoke-direct {v3, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 385
    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v10, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v12, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    iget v14, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v15, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 391
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 393
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

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

    .line 399
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 400
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 5

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->perspectiveFactor:F

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 38
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->move:Z

    .line 42
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->lock:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 43
    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 44
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 48
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    .line 49
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 54
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    .line 56
    :cond_1
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    .line 57
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    .line 59
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapX:F

    .line 60
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapY:F

    .line 62
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 64
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->angleA:F

    .line 66
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 68
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public onMove(FF)Z
    .locals 11

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_2

    .line 74
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->move:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->move:Z

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->move:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 83
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_1
    return v1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    .line 88
    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 89
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 91
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->angleA:F

    float-to-double v5, v5

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->angleA:F

    float-to-double v9, v6

    .line 93
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 95
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 97
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    .line 98
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 99
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 101
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    cmpg-float p2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez p2, :cond_3

    cmpg-float p2, v1, v0

    if-gez p2, :cond_3

    .line 104
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 105
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 106
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const p2, 0x3fc90fdb

    .line 107
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapAngle:F

    .line 109
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->perspectiveFactor:F

    goto :goto_0

    :cond_3
    cmpg-float p2, v2, v0

    if-gez p2, :cond_4

    .line 112
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 113
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 114
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 p2, 0x0

    .line 115
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapAngle:F

    .line 117
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->perspectiveFactor:F

    goto :goto_0

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 121
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->angleA:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapAngle:F

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    .line 132
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 267
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 270
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 271
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_1

    .line 276
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 277
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_2

    .line 282
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 283
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 288
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->snapAngle:F

    float-to-double v9, v6

    .line 289
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 290
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 291
    invoke-static {v3, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 292
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v4, v0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v9

    double-to-float v0, v4

    .line 293
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    double-to-float v0, v4

    .line 294
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v2, v4

    .line 295
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 296
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    .line 297
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    if-eqz v0, :cond_3

    .line 299
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 300
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 306
    :cond_3
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

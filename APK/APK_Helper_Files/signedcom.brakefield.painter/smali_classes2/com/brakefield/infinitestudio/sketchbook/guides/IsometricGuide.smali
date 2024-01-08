.class public Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "IsometricGuide.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private vertical:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 31
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 25
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->showGrid:Z

    .line 35
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->iso_pattern:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 244
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 245
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 246
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 247
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 248
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 249
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

    .line 255
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 256
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 257
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
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->showGrid:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snap:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapping:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snap:Z

    if-nez v0, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    :cond_2
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapping:Z

    if-eqz v0, :cond_3

    .line 133
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapX:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapY:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 134
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 136
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p0, p1, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    :cond_3
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 21

    move-object/from16 v0, p0

    .line 271
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->showCursor:Z

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const v2, -0x39e3c000    # -10000.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 275
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const v4, 0x461c4000    # 10000.0f

    invoke-direct {v2, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 277
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 278
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 280
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 282
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    neg-float v1, v1

    .line 284
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-float v1, v1

    :cond_1
    const v2, 0x3f060a92

    add-float/2addr v2, v1

    const v3, -0x40f9f56e

    add-float/2addr v3, v1

    const v4, 0x3fc90fdb

    add-float/2addr v1, v4

    .line 291
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 293
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    double-to-float v2, v6

    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v6, v6

    .line 294
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    double-to-float v6, v6

    invoke-direct {v5, v2, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 295
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    double-to-float v6, v6

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v10, v7

    .line 296
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v12

    add-double/2addr v10, v7

    double-to-float v7, v10

    invoke-direct {v2, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 297
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v7, v7

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double/2addr v7, v14

    double-to-float v3, v7

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v7, v7

    .line 298
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double/2addr v7, v14

    double-to-float v7, v7

    invoke-direct {v6, v3, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 299
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v7, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v7, v14

    double-to-float v7, v7

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v14, v8

    .line 300
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    add-double/2addr v14, v8

    double-to-float v8, v14

    invoke-direct {v3, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 301
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v8, v8

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double/2addr v8, v14

    double-to-float v1, v8

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v8, v8

    .line 302
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double/2addr v8, v14

    double-to-float v8, v8

    invoke-direct {v7, v1, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 303
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v8, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v8, v14

    double-to-float v8, v8

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v14, v4

    .line 304
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v12

    add-double/2addr v14, v9

    double-to-float v4, v14

    invoke-direct {v1, v8, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 306
    iget v10, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 307
    iget v2, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v3

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    iget v9, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v11, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v13, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method

.method public onDown(FF)Z
    .locals 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 44
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->move:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapping:Z

    .line 50
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    .line 51
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    .line 53
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapX:F

    .line 54
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapY:F

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onMove(FF)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 62
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v3, :cond_2

    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    .line 63
    invoke-static {v3, v4, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 64
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 66
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    const v4, -0x39e3c000    # -10000.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 67
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const v6, 0x461c4000    # 10000.0f

    invoke-direct {v4, v6, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 69
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 70
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 75
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    float-to-double v4, v4

    const v6, 0x3f060a92

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v9, v11

    sub-double/2addr v4, v9

    double-to-float v4, v4

    iget v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    float-to-double v9, v5

    .line 76
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    sub-double/2addr v9, v13

    double-to-float v5, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    float-to-double v9, v9

    .line 77
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    add-double/2addr v9, v13

    double-to-float v9, v9

    iget v10, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    float-to-double v13, v10

    .line 78
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    add-double/2addr v13, v7

    double-to-float v7, v13

    invoke-direct {v3, v4, v5, v9, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 80
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    float-to-double v7, v7

    const v9, -0x40f9f56e

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    sub-double/2addr v7, v15

    double-to-float v7, v7

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    float-to-double v9, v8

    .line 83
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v11

    sub-double v9, v9, v16

    double-to-float v8, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    float-to-double v9, v9

    .line 84
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v11

    add-double v9, v9, v16

    double-to-float v9, v9

    iget v10, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    float-to-double v5, v10

    .line 85
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    add-double/2addr v5, v13

    double-to-float v5, v5

    invoke-direct {v4, v7, v8, v9, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 87
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 89
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v5, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    .line 90
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v5, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    .line 91
    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 94
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 95
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 96
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const v1, 0x3fc90fdb

    .line 97
    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapAngle:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v2, v3

    if-gez v1, :cond_1

    .line 99
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const v1, -0x40f9f56e

    .line 100
    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapAngle:F

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const v1, 0x3f060a92

    .line 103
    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapAngle:F

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapping:Z

    .line 113
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 205
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snap:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapping:Z

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 208
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 209
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_1

    .line 214
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 215
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 220
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->snapAngle:F

    float-to-double v9, v6

    .line 221
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 222
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 223
    invoke-static {v3, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 224
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v4, v0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v9

    double-to-float v0, v4

    .line 225
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    double-to-float v0, v4

    .line 226
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v2, v4

    .line 227
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 228
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    .line 229
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    if-eqz v0, :cond_2

    .line 231
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 232
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 235
    :cond_2
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

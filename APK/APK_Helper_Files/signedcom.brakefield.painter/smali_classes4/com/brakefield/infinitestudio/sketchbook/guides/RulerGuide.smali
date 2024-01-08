.class public Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "RulerGuide.java"


# static fields
.field static a:Lcom/brakefield/infinitestudio/geometry/Point;

.field static b:Lcom/brakefield/infinitestudio/geometry/Point;

.field static move:Lcom/brakefield/infinitestudio/geometry/Point;

.field static rotate:Lcom/brakefield/infinitestudio/geometry/Point;


# instance fields
.field private startDistanceX:F

.field private startDistanceY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 25
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 26
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 27
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->move:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 28
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->rotate:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 198
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 199
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 200
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 201
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 202
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 203
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

    .line 209
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 210
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 211
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

.method private getA()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 237
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method private getB()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 241
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 110
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->snapping:Z

    if-eqz v1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->getA()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->getB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    .line 116
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 117
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 119
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v1, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 120
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v3, v2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v5, v3

    double-to-float v5, v5

    .line 123
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    const/high16 v6, 0x43480000    # 200.0f

    .line 125
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v10

    mul-float/2addr v10, v6

    .line 127
    invoke-static {v1, v10, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    const v11, 0x461c4000    # 10000.0f

    .line 128
    invoke-static {v6, v11, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v12

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v13

    double-to-float v3, v3

    .line 129
    invoke-static {v6, v11, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v15

    float-to-double v4, v5

    add-double/2addr v4, v13

    double-to-float v4, v4

    .line 131
    invoke-static {v1, v10, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 132
    invoke-static {v1, v11, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v13

    .line 133
    invoke-static {v1, v11, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v11

    .line 135
    iget v2, v12, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v15, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v15, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget v2, v12, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v15, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v15, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    iget v2, v13, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v13, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    iget v2, v13, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v13, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget v1, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v10, v3

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget v1, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget v1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    iget v1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 11

    .line 252
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 253
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 255
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const v2, -0x39e3c000    # -10000.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 256
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const v4, 0x461c4000    # 10000.0f

    invoke-direct {v2, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 258
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 259
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 261
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 263
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 265
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    float-to-double v3, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    sub-double v5, v3, v5

    double-to-float p2, v5

    float-to-double v5, p3

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double v9, v5, v9

    double-to-float p3, v9

    invoke-direct {v2, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 267
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    double-to-float p3, v3

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    add-double/2addr v5, v0

    double-to-float v0, v5

    invoke-direct {p2, p3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 270
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 276
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 277
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 278
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 279
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 285
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 286
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 287
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 288
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 3

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 36
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 37
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 38
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 41
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 42
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 49
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->snapping:Z

    .line 51
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 53
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downX:F

    .line 54
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downY:F

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onMove(FF)Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    .line 64
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downX:F

    sub-float v0, p1, v0

    .line 65
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downY:F

    sub-float v1, p2, v1

    .line 68
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v2, v3, :cond_0

    .line 70
    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v0

    iput v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 71
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v2, v3, :cond_1

    .line 75
    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v0

    iput v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 76
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->move:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 88
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downX:F

    .line 89
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->downY:F

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->snapping:Z

    .line 100
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    .line 217
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 219
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    .line 220
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceX:F

    goto :goto_0

    .line 221
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 222
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 223
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, p1

    neg-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceY:F

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 226
    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 227
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 228
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 229
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 230
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 231
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceX:F

    .line 232
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, p1

    neg-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceY:F

    :goto_0
    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 10

    .line 149
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->snapping:Z

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 152
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    .line 157
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceX:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 159
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 160
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v1

    .line 165
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceY:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 168
    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 169
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 170
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 171
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 172
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 173
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceX:F

    add-float/2addr v1, v2

    .line 174
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->startDistanceY:F

    add-float/2addr v2, v3

    if-eqz v0, :cond_2

    .line 188
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 189
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 245
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 246
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/RulerGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

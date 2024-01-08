.class public Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "LinearGuide.java"


# static fields
.field static a:Lcom/brakefield/infinitestudio/geometry/Point;

.field static b:Lcom/brakefield/infinitestudio/geometry/Point;


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

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

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

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 164
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 165
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 166
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 167
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 168
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 169
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

    .line 175
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 176
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 177
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

    .line 203
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method private getB()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 207
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v7, p0

    .line 95
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->set:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->setting:Z

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->snapping:Z

    if-eqz v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->getA()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 101
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->getB()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 103
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 104
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 106
    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v12, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 109
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v1, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    move v6, v10

    :goto_0
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    const/4 v2, 0x0

    .line 111
    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_3

    move v6, v9

    goto :goto_1

    :cond_3
    move v6, v10

    :goto_1
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 11

    .line 218
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->set:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 222
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 224
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const v2, -0x39e3c000    # -10000.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 225
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const v4, 0x461c4000    # 10000.0f

    invoke-direct {v2, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 227
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 228
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 230
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 232
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 233
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-float v0, v0

    .line 236
    :cond_1
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    float-to-double v3, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    sub-double v5, v3, v5

    double-to-float p2, v5

    float-to-double v5, p3

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double v9, v5, v9

    double-to-float p3, v9

    invoke-direct {v2, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 238
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    double-to-float p3, v3

    .line 239
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    add-double/2addr v5, v0

    double-to-float v0, v5

    invoke-direct {p2, p3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 241
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->cursorStroke:Landroid/graphics/Paint;

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

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 248
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 249
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 250
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 256
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 257
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 258
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 259
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 4

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 34
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->set:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 36
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 37
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->setting:Z

    return v1

    .line 41
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 42
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 43
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 46
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 47
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_3

    .line 52
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->snapping:Z

    .line 54
    :cond_3
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onMove(FF)Z
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->set:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 64
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 71
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->snapping:Z

    .line 82
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->set:Z

    .line 83
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->setting:Z

    .line 85
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    .line 183
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 185
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    .line 186
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceX:F

    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 188
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 189
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, p1

    neg-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceY:F

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 192
    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 193
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 194
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 195
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 196
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 197
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceX:F

    .line 198
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, p1

    neg-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceY:F

    :goto_0
    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 10

    .line 115
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->snapping:Z

    if-eqz v0, :cond_3

    .line 116
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 118
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    .line 123
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceX:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 126
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v1

    .line 131
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceY:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 134
    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 135
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 136
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 137
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 138
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 139
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceX:F

    add-float/2addr v1, v2

    .line 140
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->startDistanceY:F

    add-float/2addr v2, v3

    if-eqz v0, :cond_2

    .line 154
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 155
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

    .line 211
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 212
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "FocalGuide.java"


# static fields
.field protected static final MOVE:I = 0x1

.field protected static final NONE:I

.field static close:Lcom/brakefield/infinitestudio/geometry/Point;


# instance fields
.field type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->type:I

    .line 27
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 29
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 137
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 138
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 139
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 140
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 141
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 142
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

    .line 148
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 149
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 150
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
    .locals 9

    .line 100
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->set:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->setting:Z

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 9

    .line 168
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->set:Z

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 172
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 174
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v1, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 175
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p2

    .line 177
    new-instance p3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    double-to-float p2, v1

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    .line 178
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    double-to-float v1, v1

    invoke-direct {p3, p2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 179
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    double-to-float v1, v1

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v5, v0

    .line 180
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    add-double/2addr v5, v2

    double-to-float v0, v5

    invoke-direct {p2, v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 182
    iget v3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 189
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 195
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 196
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

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
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->move:Z

    .line 38
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->type:I

    .line 40
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->set:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 41
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 43
    :cond_0
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->setting:Z

    .line 45
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 47
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->downX:F

    .line 48
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->downY:F

    .line 50
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->type:I

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v1, :cond_2

    .line 54
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->snapping:Z

    .line 56
    :cond_2
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public onMove(FF)Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->move:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->downY:F

    .line 68
    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 69
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 70
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->move:Z

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->move:Z

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 75
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->snapping:Z

    .line 87
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->set:Z

    .line 88
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->setting:Z

    .line 90
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 2

    .line 156
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 158
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->startDistance:F

    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 9

    .line 111
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->snapping:Z

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 114
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->startDistance:F

    float-to-double v3, v3

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->startDistance:F

    float-to-double v5, v5

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 117
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 118
    invoke-static {v2, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 119
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 120
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 121
    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    add-double/2addr v4, v0

    double-to-float v0, v4

    .line 122
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 123
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    .line 124
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    if-eqz v0, :cond_0

    .line 126
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 127
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

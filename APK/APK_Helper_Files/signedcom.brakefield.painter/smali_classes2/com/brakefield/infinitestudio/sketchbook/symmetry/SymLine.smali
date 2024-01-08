.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;
.super Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.source "SymLine.java"


# instance fields
.field private prevX2:F

.field private prevY2:F

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;-><init>()V

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    .line 30
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    .line 31
    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    .line 32
    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    return-void
.end method


# virtual methods
.method public close(FF)I
    .locals 11

    .line 136
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getTouchSize()F

    move-result v0

    .line 138
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->adjust:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 139
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    cmpl-float v5, v1, v4

    if-nez v5, :cond_1

    add-float p1, v1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    sub-float/2addr v1, v0

    cmpl-float p1, p2, v1

    if-lez p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 141
    :cond_1
    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    cmpl-float v7, v5, v6

    if-nez v7, :cond_3

    add-float p2, v5, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    sub-float/2addr v5, v0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    sub-float/2addr v6, v5

    sub-float/2addr v4, v1

    sub-float/2addr p1, v5

    sub-float/2addr p2, v1

    mul-float v1, v6, p1

    mul-float v5, v4, p2

    add-float/2addr v1, v5

    float-to-double v7, p1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 151
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double p1, p2

    invoke-static {p1, p2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v7, p1

    double-to-float p1, v7

    float-to-double v5, v6

    .line 152
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float p2, v5

    float-to-double v4, p1

    float-to-double v6, v1

    .line 153
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double p1, p2

    div-double/2addr v6, p1

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 158
    :cond_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 160
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    .line 162
    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v6, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_6

    return v3

    .line 164
    :cond_6
    iget v1, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    const/4 p1, 0x2

    return p1

    .line 166
    :cond_7
    iget v1, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, 0x3

    return p1

    :cond_8
    return v2
.end method

.method public copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 5

    .line 179
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 85
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    .line 86
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    .line 87
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    .line 88
    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v1, 0x2

    aput v2, v4, v1

    const/4 v2, 0x3

    aput v3, v4, v2

    .line 90
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 91
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v4, v5

    aget v12, v4, v0

    aget v13, v4, v1

    aget v4, v4, v2

    .line 97
    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->adjust:Z

    if-eqz v6, :cond_0

    .line 98
    sget-object v11, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v3

    move v8, v12

    move v9, v13

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    :cond_0
    sget-object v11, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v3

    move v8, v12

    move v9, v13

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->adjust:Z

    if-eqz v3, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 104
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->touchCase:I

    if-ne v3, v0, :cond_1

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v5

    :goto_0
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 109
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 110
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 111
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 113
    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->touchCase:I

    if-ne v3, v1, :cond_2

    move v11, v0

    goto :goto_1

    :cond_2
    move v11, v5

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 115
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 117
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 119
    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->touchCase:I

    if-ne v1, v2, :cond_3

    move v11, v0

    goto :goto_2

    :cond_3
    move v11, v5

    :goto_2
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    :cond_4
    return-void
.end method

.method public getAngle()F
    .locals 4

    .line 249
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 5

    .line 245
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    sub-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getClippingPlane(FF)I
    .locals 7

    .line 184
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    sub-float/2addr p2, v0

    cmpl-float p1, p2, v2

    if-lez p1, :cond_0

    return v3

    :cond_0
    return v4

    .line 193
    :cond_1
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    return v3

    :cond_2
    return v4

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 205
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result p1

    float-to-double p1, p1

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getAngle()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-double v5, v0

    invoke-static {p1, p2, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 218
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 220
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 221
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 222
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 223
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 224
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    .line 226
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 227
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 7

    .line 233
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getAngle()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 235
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getTouchSize()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    float-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v5

    double-to-float v1, v3

    invoke-static {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMatrices()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    iget v5, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    cmpl-float v6, v4, v5

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_0

    .line 46
    iget v2, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    invoke-virtual {v3, v8, v7, v2, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto/16 :goto_0

    .line 48
    :cond_0
    iget v6, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    cmpl-float v10, v6, v9

    if-nez v10, :cond_1

    .line 50
    invoke-virtual {v3, v7, v8, v6, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto/16 :goto_0

    .line 54
    :cond_1
    invoke-static {v6, v4, v9, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result v4

    .line 55
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    iget v7, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 56
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    invoke-direct {v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 57
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    float-to-double v8, v8

    float-to-double v10, v4

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v10, v12

    .line 58
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    const-wide v18, 0x40c3880000000000L    # 10000.0

    mul-double v16, v16, v18

    add-double v8, v8, v16

    double-to-float v4, v8

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    float-to-double v8, v8

    .line 59
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v18

    add-double v8, v8, v16

    double-to-float v8, v8

    invoke-direct {v7, v4, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 60
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    float-to-double v8, v8

    sub-double/2addr v10, v12

    .line 61
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v18

    add-double/2addr v8, v12

    double-to-float v8, v8

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    float-to-double v12, v9

    .line 62
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v18

    add-double v12, v12, v16

    double-to-float v9, v12

    invoke-direct {v4, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 63
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    float-to-double v12, v9

    .line 64
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v18

    add-double v12, v12, v16

    double-to-float v9, v12

    iget v12, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    float-to-double v12, v12

    .line 65
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v18

    add-double/2addr v12, v14

    double-to-float v12, v12

    invoke-direct {v8, v9, v12}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 66
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v12, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    float-to-double v12, v12

    .line 67
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v18

    add-double/2addr v12, v14

    double-to-float v12, v12

    iget v13, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    float-to-double v13, v13

    .line 68
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    add-double/2addr v13, v10

    double-to-float v10, v13

    invoke-direct {v9, v12, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/16 v10, 0x8

    new-array v11, v10, [F

    .line 69
    iget v12, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v14, 0x1

    aput v12, v11, v14

    iget v12, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v12, v11, v2

    iget v12, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v15, 0x3

    aput v12, v11, v15

    iget v12, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v16, 0x4

    aput v12, v11, v16

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v12, 0x5

    aput v7, v11, v12

    iget v7, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v17, 0x6

    aput v7, v11, v17

    iget v7, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v8, 0x7

    aput v7, v11, v8

    new-array v7, v10, [F

    .line 71
    iget v10, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v10, v7, v13

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v7, v14

    iget v5, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v7, v2

    iget v2, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v7, v15

    iget v2, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v7, v16

    iget v2, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v7, v12

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v7, v17

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v7, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v4, v3

    move-object v5, v11

    .line 73
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 77
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 239
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getAngle()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 241
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->getTouchSize()F

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    invoke-static {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 125
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    .line 127
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x1:F

    aget p1, v0, v3

    .line 128
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y1:F

    aget p1, v0, v4

    .line 129
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->x2:F

    aget p1, v0, v5

    .line 130
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;->y2:F

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;
.super Ljava/lang/Object;
.source "QuadraticBezier.java"


# instance fields
.field public x1:F

.field public x2:F

.field public x3:F

.field public y1:F

.field public y2:F

.field public y3:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    .line 18
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    .line 19
    iput p3, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    .line 20
    iput p4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    .line 21
    iput p5, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    .line 22
    iput p6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    return-void
.end method

.method public static getControlPointFromMaxPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 36
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getControlValueFromMaxValue(FFF)F

    move-result v1

    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p2, p1}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getControlValueFromMaxValue(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static getControlValueFromMaxValue(FFF)F
    .locals 1

    neg-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p0, p2

    return p0
.end method

.method public static getMaxPointFromControlPoint(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 44
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getMaxValueFromControlValue(FFF)F

    move-result v1

    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p2, p1}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getMaxValueFromControlValue(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static getMaxValueFromControlValue(FFF)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    add-float/2addr p2, p0

    div-float/2addr p1, v0

    add-float/2addr p2, p1

    div-float/2addr p2, v0

    return p2
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 5

    .line 150
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 151
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-object v0
.end method


# virtual methods
.method public cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 112
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 113
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 115
    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 116
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    move v8, v6

    move v9, v8

    :goto_0
    cmpg-float v10, v8, v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-gez v10, :cond_2

    .line 120
    invoke-virtual {v3, v8, v5, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v4

    .line 121
    iget v11, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget v12, v5, v12

    iget v15, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v12, v15

    move-object/from16 v16, v5

    float-to-double v4, v12

    .line 122
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v10, v4

    .line 121
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    cmpl-float v5, v9, v6

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v5, v4, v7

    if-gez v5, :cond_1

    :goto_1
    move v7, v4

    move v9, v8

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v8, v4

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 131
    invoke-virtual {v3, v2, v4, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v3, 0x0

    aget v5, v4, v3

    .line 132
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v5, v3

    float-to-double v10, v5

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget v3, v4, v12

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v1

    float-to-double v3, v3

    .line 133
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v10, v3

    .line 132
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    cmpl-float v3, v9, v6

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    :goto_2
    move v9, v2

    :cond_4
    new-array v1, v12, [F

    div-float/2addr v9, v2

    const/4 v2, 0x0

    aput v9, v1, v2

    .line 141
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->cut([F)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs cut([F)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 51
    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    .line 52
    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    .line 53
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 54
    iget v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 55
    iget v12, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 56
    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    sub-float/2addr v7, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    .line 57
    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    iget v8, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    sub-float/2addr v8, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 58
    new-instance v13, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    move-object v4, v13

    move v9, v11

    move v10, v12

    invoke-direct/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;-><init>(FFFFFF)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    .line 62
    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    .line 63
    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    sub-float v7, v4, v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 64
    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v8, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    sub-float/2addr v8, v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    .line 65
    iput v11, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    .line 66
    iput v12, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    .line 67
    iput v6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    .line 68
    iput v7, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    .line 69
    iput v4, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    .line 70
    iput v5, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 79
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 81
    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 82
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v9, v6

    :goto_0
    cmpg-float v10, v8, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const/4 v13, 0x1

    if-gez v10, :cond_2

    .line 86
    invoke-virtual {v3, v8, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v4

    .line 87
    iget v14, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v10, v14

    float-to-double v14, v10

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    aget v10, v5, v13

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v10, v6

    move-object/from16 v16, v5

    float-to-double v4, v10

    .line 88
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v14, v4

    .line 87
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    if-nez v9, :cond_0

    .line 91
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v5, 0x0

    aget v6, v16, v5

    aget v7, v16, v13

    invoke-direct {v9, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :goto_1
    move v7, v4

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    cmpg-float v6, v4, v7

    if-gez v6, :cond_1

    .line 94
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v6, v16, v5

    aget v7, v16, v13

    invoke-direct {v9, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_1

    :cond_1
    :goto_2
    add-float v8, v8, p2

    move v4, v5

    move-object/from16 v5, v16

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v17, v5

    move v5, v4

    move-object/from16 v4, v17

    .line 97
    invoke-virtual {v3, v2, v4, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v2, v4, v5

    .line 98
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v5, v4, v13

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v5, v1

    float-to-double v14, v5

    .line 99
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-nez v9, :cond_3

    .line 102
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    aget v1, v4, v2

    aget v2, v4, v13

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    .line 105
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v4, v2

    aget v2, v4, v13

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :cond_4
    :goto_3
    return-object v9
.end method

.method public getLength()F
    .locals 3

    .line 145
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 146
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 11

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 26
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v7, v8

    sub-float v9, v6, v9

    iget v10, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v4, v9

    mul-float/2addr p1, v8

    sub-float v7, v6, v7

    mul-float/2addr v7, p1

    float-to-double v9, v7

    sub-double/2addr v4, v9

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    mul-float/2addr v8, v3

    sub-float v5, v2, v8

    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v0, v5

    sub-float v3, v2, v3

    mul-float/2addr p1, v3

    float-to-double v5, p1

    sub-double/2addr v0, v5

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 28
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v4, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

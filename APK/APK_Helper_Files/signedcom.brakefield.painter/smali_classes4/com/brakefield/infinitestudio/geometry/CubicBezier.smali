.class public Lcom/brakefield/infinitestudio/geometry/CubicBezier;
.super Ljava/lang/Object;
.source "CubicBezier.java"


# instance fields
.field public x1:F

.field public x2:F

.field public x3:F

.field public x4:F

.field public y1:F

.field public y2:F

.field public y3:F

.field public y4:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    .line 21
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    .line 22
    iput p3, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    .line 23
    iput p4, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    .line 24
    iput p5, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    .line 25
    iput p6, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    .line 26
    iput p7, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    .line 27
    iput p8, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/Line;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    .line 43
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    .line 50
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    .line 51
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    .line 52
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    .line 53
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    .line 55
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    .line 56
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    .line 32
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    .line 33
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    const v1, 0x3eaaaaaa

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    const v3, 0x3f2aaaaa

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    .line 34
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    .line 35
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    mul-float/2addr v0, v3

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    .line 36
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    mul-float/2addr v0, v3

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    .line 37
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    .line 38
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    return-void
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 8

    .line 440
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 441
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 442
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
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
            "Lcom/brakefield/infinitestudio/geometry/CubicBezier;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 204
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 205
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 207
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 208
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    move v8, v6

    move v9, v8

    :goto_0
    cmpg-float v10, v8, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-gez v10, :cond_2

    .line 212
    invoke-virtual {v2, v8, v5, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v3

    .line 213
    iget v11, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget v12, v5, v12

    iget v15, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v12, v15

    move/from16 v16, v4

    float-to-double v3, v12

    .line 214
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v10, v3

    .line 213
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v9, v6

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v4, v3, v7

    if-gez v4, :cond_1

    :goto_1
    move v7, v3

    move v9, v8

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v8, v3

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move v3, v4

    .line 223
    invoke-virtual {v2, v3, v5, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v2, 0x0

    aget v4, v5, v2

    .line 224
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v2

    float-to-double v10, v4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget v2, v5, v12

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v1

    float-to-double v1, v2

    .line 225
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v10, v1

    .line 224
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpl-float v2, v9, v6

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    :goto_2
    move v9, v3

    :cond_4
    new-array v1, v12, [F

    div-float/2addr v9, v3

    const/4 v2, 0x0

    aput v9, v1, v2

    .line 233
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->cut([F)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs cut([F)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/CubicBezier;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 83
    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    .line 84
    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    .line 86
    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v6, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    add-float/2addr v9, v6

    .line 87
    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    sub-float/2addr v6, v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float/2addr v6, v10

    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    add-float/2addr v10, v6

    .line 89
    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    sub-float/2addr v6, v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v6, v11

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    add-float/2addr v6, v11

    .line 90
    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    sub-float/2addr v11, v12

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    add-float/2addr v11, v12

    .line 92
    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v13, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    sub-float/2addr v12, v13

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float/2addr v12, v13

    iget v13, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    add-float/2addr v12, v13

    .line 93
    iget v13, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    iget v14, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    sub-float/2addr v13, v14

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v13, v14

    iget v14, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    add-float/2addr v13, v14

    sub-float v14, v6, v9

    .line 95
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float/2addr v14, v15

    add-float/2addr v14, v9

    sub-float v15, v11, v10

    .line 96
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v15, v10

    sub-float/2addr v12, v6

    .line 98
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v16

    mul-float v12, v12, v16

    add-float/2addr v12, v6

    sub-float/2addr v13, v11

    .line 99
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v13, v6

    add-float/2addr v13, v11

    sub-float/2addr v12, v14

    .line 101
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v12, v6

    add-float/2addr v12, v14

    sub-float/2addr v13, v15

    .line 102
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v13, v6

    add-float/2addr v13, v15

    .line 104
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    move-object v6, v11

    move-object v1, v11

    move v11, v14

    move v14, v12

    move v12, v15

    move v15, v13

    move v13, v14

    move/from16 v16, v3

    move v3, v14

    move v14, v15

    invoke-direct/range {v6 .. v14}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;-><init>(FFFFFFFF)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 108
    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v5, v6

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    add-float/2addr v5, v6

    .line 109
    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    sub-float/2addr v6, v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    add-float/2addr v6, v7

    .line 111
    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    add-float/2addr v7, v8

    .line 112
    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    sub-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v5

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v7, v5

    sub-float/2addr v8, v6

    .line 115
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v8, v1

    add-float/2addr v8, v6

    .line 120
    iput v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    .line 121
    iput v15, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    .line 122
    iput v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    .line 123
    iput v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    .line 124
    iput v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    .line 125
    iput v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    goto/16 :goto_0

    .line 144
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 153
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 154
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 156
    invoke-virtual {p1, v7, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 160
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 161
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 170
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 171
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 173
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 174
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v9, v6

    :goto_0
    cmpg-float v10, v8, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const/4 v13, 0x1

    if-gez v10, :cond_2

    .line 178
    invoke-virtual {v2, v8, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v3

    .line 179
    iget v14, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v10, v14

    float-to-double v14, v10

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    aget v10, v5, v13

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v10, v6

    move/from16 v16, v4

    float-to-double v3, v10

    .line 180
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v14, v3

    .line 179
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    if-nez v9, :cond_0

    .line 183
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v4, 0x0

    aget v6, v5, v4

    aget v7, v5, v13

    invoke-direct {v9, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    cmpg-float v6, v3, v7

    if-gez v6, :cond_1

    .line 186
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v6, v5, v4

    aget v7, v5, v13

    invoke-direct {v9, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_1

    :cond_1
    :goto_2
    add-float v8, v8, p2

    move v3, v4

    move/from16 v4, v16

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    .line 189
    invoke-virtual {v2, v3, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v2, v5, v4

    .line 190
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, v5, v13

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v1

    float-to-double v14, v4

    .line 191
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-nez v9, :cond_3

    .line 194
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    aget v1, v5, v2

    aget v2, v5, v13

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    .line 197
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v5, v2

    aget v2, v5, v13

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :cond_4
    :goto_3
    return-object v9
.end method

.method getCurveDirections(DDDDDDDD)[D
    .locals 14

    move-object v9, p0

    const/4 v0, 0x2

    new-array v10, v0, [D

    .line 299
    invoke-virtual/range {p0 .. p8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    sub-double v0, p5, p1

    sub-double v2, p7, p3

    .line 300
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    .line 301
    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-double v0, p9, p1

    sub-double v2, p11, p3

    .line 302
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    .line 303
    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-double v0, p13, p1

    sub-double v2, p15, p3

    .line 304
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_0

    :cond_2
    aput-wide v11, v10, v13

    :goto_0
    move-object v0, p0

    move-wide/from16 v1, p13

    move-wide/from16 v3, p15

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    .line 309
    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_3

    sub-double v0, p13, p9

    sub-double v2, p15, p11

    .line 310
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-wide/from16 v1, p13

    move-wide/from16 v3, p15

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 311
    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-double v0, p13, p5

    sub-double v2, p15, p7

    .line 312
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-wide/from16 v1, p13

    move-wide/from16 v3, p15

    move-wide v5, p1

    move-wide/from16 v7, p3

    .line 313
    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->notEqual(DDDD)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-double v0, p13, p1

    sub-double v2, p15, p3

    .line 314
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v0

    aput-wide v0, v10, v13

    goto :goto_1

    :cond_5
    aput-wide v11, v10, v13

    :goto_1
    return-object v10
.end method

.method getDirection(DD)D
    .locals 0

    neg-double p3, p3

    neg-double p1, p1

    .line 331
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr p1, p3

    return-wide p1
.end method

.method public getLength()F
    .locals 3

    .line 435
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getOffsetCurve(F)Lcom/brakefield/infinitestudio/geometry/CubicBezier;
    .locals 53

    move-object/from16 v15, p0

    move-object/from16 v17, p0

    move-object/from16 v0, p0

    .line 237
    iget v1, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    float-to-double v13, v1

    move-wide/from16 v18, v13

    move-wide v1, v13

    .line 238
    iget v3, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    float-to-double v11, v3

    move-wide/from16 v20, v11

    move-wide v3, v11

    .line 239
    iget v5, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    float-to-double v9, v5

    move-wide/from16 v22, v9

    move-wide v5, v9

    .line 240
    iget v7, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    float-to-double v7, v7

    move-wide/from16 v24, v7

    move-wide/from16 v34, v7

    move-wide/from16 v28, v9

    .line 241
    iget v9, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    float-to-double v9, v9

    move-wide/from16 v26, v9

    move-wide/from16 v38, v9

    move-wide/from16 v36, v28

    move-wide/from16 v30, v11

    .line 242
    iget v11, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    float-to-double v11, v11

    move-wide/from16 v28, v11

    move-wide/from16 v42, v11

    move-wide/from16 v40, v30

    move-wide/from16 v32, v13

    .line 243
    iget v13, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    float-to-double v13, v13

    move-wide/from16 v30, v13

    move-wide/from16 v46, v13

    move-wide/from16 v44, v32

    move-object/from16 v48, v0

    .line 244
    iget v0, v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-wide/from16 v49, v1

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-object v2, v15

    move-wide v15, v0

    move-wide/from16 v51, v0

    move-object/from16 v0, v48

    move-wide/from16 v1, v49

    move-wide/from16 v48, v51

    .line 249
    invoke-virtual/range {v0 .. v16}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getCurveDirections(DDDDDDDD)[D

    move-result-object v0

    move/from16 v1, p1

    float-to-double v1, v1

    const/4 v3, 0x0

    .line 250
    aget-wide v4, v0, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v1

    add-double v13, v44, v4

    .line 251
    aget-wide v4, v0, v3

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v1

    add-double v11, v40, v4

    const/4 v4, 0x1

    .line 252
    aget-wide v8, v0, v4

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v1

    add-double v8, v46, v8

    .line 253
    aget-wide v15, v0, v4

    add-double/2addr v15, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    add-double v0, v48, v1

    .line 256
    invoke-virtual/range {v17 .. v33}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getScaleOrigin(DDDDDDDD)[D

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v5, p0

    return-object v5

    :cond_0
    move-object/from16 v5, p0

    .line 264
    aget-wide v6, v2, v3

    .line 265
    aget-wide v15, v2, v4

    const/4 v2, 0x4

    new-array v10, v2, [D

    aput-wide v13, v10, v3

    aput-wide v11, v10, v4

    sub-double v17, v36, v44

    add-double v17, v13, v17

    const/16 v19, 0x2

    aput-wide v17, v10, v19

    sub-double v17, v34, v40

    add-double v17, v11, v17

    const/16 v20, 0x3

    aput-wide v17, v10, v20

    move-wide/from16 v17, v11

    new-array v11, v2, [D

    aput-wide v6, v11, v3

    aput-wide v15, v11, v4

    aput-wide v36, v11, v19

    aput-wide v34, v11, v20

    .line 270
    invoke-virtual {v5, v10, v11}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->intersectsLineLine([D[D)[D

    move-result-object v10

    if-nez v10, :cond_1

    return-object v5

    .line 276
    :cond_1
    aget-wide v11, v10, v3

    move-wide/from16 v21, v11

    .line 277
    aget-wide v10, v10, v4

    new-array v12, v2, [D

    aput-wide v8, v12, v3

    aput-wide v0, v12, v4

    sub-double v23, v38, v46

    add-double v23, v8, v23

    aput-wide v23, v12, v19

    sub-double v23, v42, v48

    add-double v23, v0, v23

    aput-wide v23, v12, v20

    new-array v2, v2, [D

    aput-wide v6, v2, v3

    aput-wide v15, v2, v4

    aput-wide v38, v2, v19

    aput-wide v42, v2, v20

    .line 281
    invoke-virtual {v5, v12, v2}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->intersectsLineLine([D[D)[D

    move-result-object v2

    if-nez v2, :cond_2

    return-object v5

    .line 287
    :cond_2
    aget-wide v6, v2, v3

    .line 288
    aget-wide v2, v2, v4

    .line 291
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    double-to-float v12, v13

    move-wide/from16 v13, v17

    double-to-float v13, v13

    move-wide/from16 v14, v21

    double-to-float v14, v14

    double-to-float v10, v10

    double-to-float v6, v6

    double-to-float v2, v2

    double-to-float v3, v8

    double-to-float v0, v0

    move-object/from16 v23, v4

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v10

    move/from16 v28, v6

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v0

    invoke-direct/range {v23 .. v31}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;-><init>(FFFFFFFF)V

    return-object v4
.end method

.method public getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 60
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    float-to-double v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    float-to-double v5, v4

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v2, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v10, v1, v9

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    mul-float/2addr v11, v10

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 61
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v11, v15

    add-double/2addr v2, v11

    mul-float/2addr v4, v9

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    mul-float/2addr v9, v4

    float-to-double v11, v9

    float-to-double v7, v1

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v11, v11, v17

    add-double/2addr v2, v11

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 62
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    float-to-double v13, v1

    mul-double/2addr v15, v13

    add-double/2addr v2, v15

    double-to-float v1, v2

    .line 63
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    float-to-double v2, v2

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v2, v13

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    mul-float/2addr v10, v9

    float-to-double v9, v10

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 64
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v9, v5

    add-double/2addr v2, v9

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v4, v9

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 65
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 66
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v3
.end method

.method getScaleOrigin(DDDDDDDD)[D
    .locals 16

    move-object/from16 v0, p0

    sub-double v1, p5, p1

    sub-double v3, p7, p3

    .line 401
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    .line 402
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 403
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const/4 v7, 0x4

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide p1, v8, v9

    const/4 v10, 0x1

    aput-wide p3, v8, v10

    add-double v11, p1, v5

    const/4 v13, 0x2

    aput-wide v11, v8, v13

    add-double v11, p3, v1

    const/4 v14, 0x3

    aput-wide v11, v8, v14

    sub-double v11, p13, p9

    sub-double v14, p15, p11

    .line 406
    invoke-virtual {v0, v11, v12, v14, v15}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getDirection(DD)D

    move-result-wide v11

    add-double/2addr v11, v3

    double-to-float v3, v11

    float-to-double v3, v3

    .line 407
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 408
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    new-array v7, v7, [D

    add-double v14, p13, v11

    aput-wide v14, v7, v9

    add-double v14, p15, v3

    aput-wide v14, v7, v10

    aput-wide p13, v7, v13

    const/4 v14, 0x3

    aput-wide p15, v7, v14

    new-array v13, v13, [D

    cmpl-double v5, v5, v11

    const/4 v6, 0x0

    if-nez v5, :cond_0

    cmpl-double v11, v1, v3

    if-nez v11, :cond_0

    return-object v6

    :cond_0
    if-eqz v5, :cond_3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0, v8, v7}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->intersectsLineLine([D[D)[D

    move-result-object v1

    if-nez v1, :cond_2

    return-object v6

    .line 428
    :cond_2
    aget-wide v2, v1, v9

    aput-wide v2, v13, v9

    .line 429
    aget-wide v1, v1, v10

    aput-wide v1, v13, v10

    goto :goto_1

    :cond_3
    :goto_0
    add-double v1, p1, p13

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    aput-wide v1, v13, v9

    add-double v1, p3, p15

    div-double/2addr v1, v3

    aput-wide v1, v13, v10

    :goto_1
    return-object v13
.end method

.method intersectsLineLine([D[D)[D
    .locals 26

    const/4 v0, 0x0

    .line 341
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    const/4 v6, 0x2

    .line 342
    aget-wide v7, p1, v6

    const/4 v9, 0x3

    aget-wide v10, p1, v9

    .line 343
    aget-wide v12, p2, v0

    aget-wide v14, p2, v3

    .line 344
    aget-wide v16, p2, v6

    aget-wide v18, p2, v9

    mul-double v20, v1, v10

    mul-double v22, v4, v7

    sub-double v20, v20, v22

    sub-double v22, v12, v16

    mul-double v24, v20, v22

    sub-double/2addr v1, v7

    mul-double v12, v12, v18

    mul-double v16, v16, v14

    sub-double v12, v12, v16

    mul-double v7, v1, v12

    sub-double v24, v24, v7

    sub-double v14, v14, v18

    mul-double v20, v20, v14

    sub-double/2addr v4, v10

    mul-double/2addr v12, v4

    sub-double v20, v20, v12

    mul-double/2addr v1, v14

    mul-double v4, v4, v22

    sub-double/2addr v1, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    div-double v24, v24, v1

    div-double v20, v20, v1

    new-array v1, v6, [D

    aput-wide v24, v1, v0

    aput-wide v20, v1, v3

    return-object v1
.end method

.method notEqual(DDDD)Z
    .locals 0

    cmpl-double p1, p1, p5

    if-nez p1, :cond_1

    cmpl-double p1, p3, p7

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toQuads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

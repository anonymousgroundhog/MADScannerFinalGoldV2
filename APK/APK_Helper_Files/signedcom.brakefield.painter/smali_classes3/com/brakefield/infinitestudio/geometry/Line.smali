.class public Lcom/brakefield/infinitestudio/geometry/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field public b:F

.field public m:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;->init(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    return-void
.end method

.method public static angle(FFFF)F
    .locals 2

    sub-float/2addr p3, p1

    float-to-double v0, p3

    sub-float/2addr p2, p0

    float-to-double p0, p2

    .line 397
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 337
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceFromLine(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 111
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 112
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 113
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 114
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 115
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 116
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

    .line 122
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 123
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 124
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

.method public static getDifferenceAngle(DD)F
    .locals 2

    sub-double/2addr p2, p0

    :goto_0
    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p2, p0

    const-wide v0, 0x4076800000000000L    # 360.0

    if-gez p0, :cond_0

    add-double/2addr p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide p0, 0x4066800000000000L    # 180.0

    cmpl-double p0, p2, p0

    if-lez p0, :cond_1

    sub-double/2addr p2, v0

    goto :goto_1

    :cond_1
    double-to-float p0, p2

    return p0
.end method

.method public static length(FFFF)F
    .locals 4

    sub-float/2addr p2, p0

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 393
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 321
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, p1

    add-float/2addr v1, p2

    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static snap(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 9

    .line 130
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    float-to-int p0, v0

    int-to-float p0, p0

    .line 132
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr p0, v0

    float-to-int p0, p0

    .line 133
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    float-to-int p0, v0

    int-to-float p0, p0

    .line 136
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p0, v0

    float-to-int p0, p0

    .line 137
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 140
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    double-to-int v0, v1

    .line 141
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 142
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p0

    .line 143
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 144
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p0, :cond_2

    .line 146
    iget p0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    int-to-float v0, v0

    add-float/2addr p0, v0

    iput p0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 147
    iget p0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    int-to-float v0, v1

    add-float/2addr p0, v0

    iput p0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_2
    :goto_0
    return-void
.end method

.method public static snapAngle(FFIF)F
    .locals 6

    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p0, v2

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v1, p0, v2

    if-lez v1, :cond_1

    sub-float/2addr p0, v2

    goto :goto_1

    :cond_1
    int-to-float v1, p2

    div-float/2addr v2, v1

    mul-float/2addr p1, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    move v3, v0

    :goto_2
    add-int/lit8 v4, p2, 0x1

    if-ge v1, v4, :cond_3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    sub-float v4, p0, v3

    .line 368
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    div-float/2addr v4, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_3
    cmpl-float p1, v4, v0

    if-eqz p1, :cond_6

    if-lez p1, :cond_4

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p1, v4, p1

    if-gez p1, :cond_4

    goto :goto_4

    :cond_4
    cmpg-float p1, v4, v0

    if-gez p1, :cond_5

    const/high16 p1, -0x41000000    # -0.5f

    cmpl-float p1, v4, p1

    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_4
    sub-float/2addr v3, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p3

    .line 382
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p0, p2

    float-to-double p2, v3

    float-to-double v0, p0

    float-to-double p0, p1

    .line 384
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p2, p0

    double-to-float p0, p2

    return p0

    :cond_6
    return v0
.end method


# virtual methods
.method ccw(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)I
    .locals 7

    .line 248
    iget v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p2, v1

    .line 249
    iget v1, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p3, p1

    mul-float p1, p2, v1

    mul-float v2, p3, v0

    cmpg-float v3, p1, v2

    const/4 v4, 0x1

    if-gez v3, :cond_0

    return v4

    :cond_0
    cmpl-float p1, p1, v2

    const/4 v2, -0x1

    if-lez p1, :cond_1

    return v2

    :cond_1
    mul-float p1, v0, v1

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_4

    mul-float p1, p2, p3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    float-to-double v2, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 256
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double p1, p2

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    float-to-double p1, v1

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    float-to-double v0, p3

    .line 257
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p1, v0

    cmpl-double p1, v2, p1

    if-ltz p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v2
.end method

.method public cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Line;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 215
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 216
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 219
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

    .line 223
    invoke-virtual {v3, v8, v5, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v4

    .line 224
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

    .line 225
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v10, v4

    .line 224
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
    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v8, v4

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 234
    invoke-virtual {v3, v2, v4, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v3, 0x0

    aget v5, v4, v3

    .line 235
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v5, v3

    float-to-double v10, v5

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget v3, v4, v12

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v1

    float-to-double v3, v3

    .line 236
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v10, v3

    .line 235
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

    .line 244
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->cut([F)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs cut([F)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Line;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 156
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 157
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 162
    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    add-float/2addr v6, v7

    .line 163
    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v8, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v7, v5

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    add-float/2addr v5, v7

    .line 165
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v7, v1, v2, v6, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 167
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    move v1, v6

    goto :goto_0

    .line 172
    :cond_0
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 173
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAngle()F
    .locals 11

    .line 45
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 46
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    const v3, 0x3fc90fdb

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v1, v2

    const v2, 0x4096cbe4

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    cmpl-float v5, v1, v4

    const/4 v6, 0x0

    if-nez v5, :cond_2

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    return v6

    :cond_2
    sub-float v5, v4, v1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 52
    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v5, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v0, v3

    :cond_3
    sub-float v3, v4, v1

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 54
    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v3, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    .line 56
    :goto_0
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float v5, v0, v3

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    sub-float v5, v4, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    const v2, 0x40490fdb    # (float)Math.PI

    :cond_5
    sub-float v5, v4, v1

    cmpg-float v5, v5, v6

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    if-gez v5, :cond_6

    sub-float v5, v0, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    cmpg-float v5, v2, v6

    if-gez v5, :cond_6

    float-to-double v9, v2

    add-double/2addr v9, v7

    double-to-float v2, v9

    :cond_6
    sub-float v5, v4, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    sub-float v5, v0, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    cmpl-float v5, v2, v6

    if-lez v5, :cond_7

    float-to-double v9, v2

    add-double/2addr v9, v7

    double-to-float v2, v9

    :cond_7
    sub-float/2addr v4, v1

    cmpl-float v1, v4, v6

    if-lez v1, :cond_8

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8

    cmpg-float v0, v2, v6

    if-gez v0, :cond_8

    float-to-double v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    double-to-float v2, v0

    :cond_8
    return v2
.end method

.method public getCenter()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 104
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 105
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 106
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v2
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 9

    .line 292
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    :goto_0
    int-to-float v4, v3

    cmpg-float v5, v4, v0

    if-gtz v5, :cond_2

    div-float/2addr v4, v0

    .line 299
    invoke-virtual {p0, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 301
    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    if-eqz v1, :cond_0

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    :cond_0
    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 180
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 181
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 184
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

    .line 188
    invoke-virtual {v3, v8, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v10, v5, v4

    .line 189
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

    .line 190
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v14, v4

    .line 189
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    if-nez v9, :cond_0

    .line 193
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

    .line 196
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

    .line 199
    invoke-virtual {v3, v2, v4, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v2, v4, v5

    .line 200
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v5, v4, v13

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v5, v1

    float-to-double v14, v5

    .line 201
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-nez v9, :cond_3

    .line 204
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

    .line 207
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v4, v2

    aget v2, v4, v13

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :cond_4
    :goto_3
    return-object v9
.end method

.method public getLength()F
    .locals 6

    .line 70
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 287
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getSlope()F
    .locals 5

    .line 75
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v2, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const v0, 0x461c4000    # 10000.0f

    return v0

    :cond_0
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 77
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const v0, -0x39e3c000    # -10000.0f

    return v0

    .line 80
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sub-float/2addr v2, v3

    sub-float/2addr v0, v1

    div-float/2addr v2, v0

    return v2
.end method

.method public getYIntercept()F
    .locals 3

    .line 84
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public init(FFFF)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 28
    iput p3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 29
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 30
    iput p4, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getSlope()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    .line 32
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getYIntercept()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->b:F

    return-void
.end method

.method public init(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 1

    .line 36
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 37
    iget v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 38
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 39
    iget p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getSlope()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getYIntercept()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->b:F

    return-void
.end method

.method public intersectSegments(Lcom/brakefield/infinitestudio/geometry/Line;)Z
    .locals 0

    .line 273
    invoke-virtual {p0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectSegments(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Line;)Z

    move-result p1

    return p1
.end method

.method intersectSegments(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Line;)Z
    .locals 4

    .line 277
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 278
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {v1, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 279
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v3, p2, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-direct {p1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 280
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p2, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {v2, v3, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 282
    invoke-virtual {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/Line;->ccw(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)I

    move-result p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->ccw(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)I

    move-result v3

    mul-int/2addr p2, v3

    if-gtz p2, :cond_0

    .line 283
    invoke-virtual {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->ccw(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)I

    move-result p2

    invoke-virtual {p0, p1, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->ccw(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)I

    move-result p1

    mul-int/2addr p2, p1

    if-gtz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 92
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/Line;->isParallel(Lcom/brakefield/infinitestudio/geometry/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Line;->b:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->b:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    sub-float p1, v2, p1

    div-float/2addr v0, p1

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 98
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1
.end method

.method public isParallel(Lcom/brakefield/infinitestudio/geometry/Line;)Z
    .locals 1

    .line 88
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->m:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    .line 313
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 314
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 316
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->init(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    return-void
.end method

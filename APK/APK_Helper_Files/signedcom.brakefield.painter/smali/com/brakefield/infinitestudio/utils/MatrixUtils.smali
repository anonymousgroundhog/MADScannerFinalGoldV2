.class public Lcom/brakefield/infinitestudio/utils/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAffine(Landroid/graphics/Matrix;)Z
    .locals 8

    .line 12
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v1, -0x3b860000    # -1000.0f

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 13
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-direct {v2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 14
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, v3, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 15
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 18
    invoke-virtual {v2, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 19
    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 20
    invoke-virtual {v5, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 22
    new-instance p0, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {p0, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 23
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v1, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 24
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 25
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v5, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float p0, v4

    .line 28
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 29
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 30
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, p0

    float-to-double v5, v0

    .line 32
    invoke-static {v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    float-to-double v0, v1

    .line 33
    invoke-static {v5, v6, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    float-to-double v6, v2

    .line 34
    invoke-static {v0, v1, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 35
    invoke-static {v6, v7, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x5a

    if-eq p0, v3, :cond_0

    return v2

    :cond_0
    if-eq v5, v3, :cond_1

    return v2

    :cond_1
    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

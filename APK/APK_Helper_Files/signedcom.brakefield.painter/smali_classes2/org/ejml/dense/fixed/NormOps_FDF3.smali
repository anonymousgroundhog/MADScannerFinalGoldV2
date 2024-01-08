.class public Lorg/ejml/dense/fixed/NormOps_FDF3;
.super Ljava/lang/Object;
.source "NormOps_FDF3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix3;)F
    .locals 3

    .line 54
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p0, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix3x3;)F
    .locals 4

    .line 46
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 48
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrix3;)F
    .locals 3

    .line 77
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF3;->elementMaxAbs(Lorg/ejml/data/FMatrix3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 82
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a1:F

    div-float/2addr v1, v0

    iget v2, p0, Lorg/ejml/data/FMatrix3;->a2:F

    div-float/2addr v2, v0

    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr p0, p0

    add-float/2addr v1, p0

    float-to-double v1, v1

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normF(Lorg/ejml/data/FMatrix3x3;)F
    .locals 10

    .line 59
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF3;->elementMaxAbs(Lorg/ejml/data/FMatrix3x3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 64
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v3, v0

    iget v4, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v4, v0

    .line 65
    iget v5, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr v5, v0

    iget v6, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v6, v0

    iget v7, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v7, v0

    .line 66
    iget v8, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v8, v0

    iget v9, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v9, v0

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    div-float/2addr p0, v0

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    add-float/2addr v2, v1

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    mul-float/2addr v7, v7

    add-float/2addr v5, v7

    add-float/2addr v2, v5

    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    mul-float/2addr p0, p0

    add-float/2addr v8, p0

    add-float/2addr v2, v8

    float-to-double v1, v2

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF3;->normF(Lorg/ejml/data/FMatrix3;)F

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF3;->divide(Lorg/ejml/data/FMatrix3;F)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF3;->normF(Lorg/ejml/data/FMatrix3x3;)F

    move-result v0

    .line 35
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF3;->divide(Lorg/ejml/data/FMatrix3x3;F)V

    return-void
.end method

.class public Lorg/ejml/dense/fixed/NormOps_FDF2;
.super Ljava/lang/Object;
.source "NormOps_FDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix2;)F
    .locals 2

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix2x2;)F
    .locals 3

    .line 46
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrix2;)F
    .locals 3

    .line 74
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF2;->elementMaxAbs(Lorg/ejml/data/FMatrix2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 79
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    div-float/2addr v1, v0

    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr p0, p0

    add-float/2addr v1, p0

    float-to-double v1, v1

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normF(Lorg/ejml/data/FMatrix2x2;)F
    .locals 5

    .line 58
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF2;->elementMaxAbs(Lorg/ejml/data/FMatrix2x2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 63
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v3, v0

    .line 64
    iget v4, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v4, v0

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    div-float/2addr p0, v0

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float/2addr v4, v4

    mul-float/2addr p0, p0

    add-float/2addr v4, p0

    add-float/2addr v2, v4

    float-to-double v1, v2

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF2;->normF(Lorg/ejml/data/FMatrix2;)F

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF2;->divide(Lorg/ejml/data/FMatrix2;F)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF2;->normF(Lorg/ejml/data/FMatrix2x2;)F

    move-result v0

    .line 35
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF2;->divide(Lorg/ejml/data/FMatrix2x2;F)V

    return-void
.end method

.class public Lorg/ejml/dense/fixed/NormOps_FDF4;
.super Ljava/lang/Object;
.source "NormOps_FDF4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix4;)F
    .locals 3

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p0, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p0, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix4x4;)F
    .locals 4

    .line 46
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 48
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 49
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrix4;)F
    .locals 4

    .line 80
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF4;->elementMaxAbs(Lorg/ejml/data/FMatrix4;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 85
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    div-float/2addr v1, v0

    iget v2, p0, Lorg/ejml/data/FMatrix4;->a2:F

    div-float/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrix4;->a3:F

    div-float/2addr v3, v0

    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p0, p0

    add-float/2addr v1, p0

    float-to-double v1, v1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normF(Lorg/ejml/data/FMatrix4x4;)F
    .locals 17

    move-object/from16 v0, p0

    .line 60
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_FDF4;->elementMaxAbs(Lorg/ejml/data/FMatrix4x4;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 65
    :cond_0
    iget v3, v0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v3, v1

    iget v4, v0, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float/2addr v4, v1

    iget v5, v0, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v5, v1

    iget v6, v0, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float/2addr v6, v1

    .line 66
    iget v7, v0, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float/2addr v7, v1

    iget v8, v0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v8, v1

    iget v9, v0, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v9, v1

    iget v10, v0, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float/2addr v10, v1

    .line 67
    iget v11, v0, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float/2addr v11, v1

    iget v12, v0, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float/2addr v12, v1

    iget v13, v0, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v13, v1

    iget v14, v0, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float/2addr v14, v1

    .line 68
    iget v15, v0, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float/2addr v15, v1

    iget v2, v0, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v2, v1

    move/from16 v16, v2

    iget v2, v0, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v2, v1

    iget v0, v0, Lorg/ejml/data/FMatrix4x4;->a44:F

    div-float/2addr v0, v1

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    mul-float/2addr v6, v6

    add-float/2addr v3, v6

    const/4 v4, 0x0

    add-float/2addr v3, v4

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v9, v9

    add-float/2addr v7, v9

    mul-float/2addr v10, v10

    add-float/2addr v7, v10

    add-float/2addr v3, v7

    mul-float/2addr v11, v11

    mul-float/2addr v12, v12

    add-float/2addr v11, v12

    mul-float/2addr v13, v13

    add-float/2addr v11, v13

    mul-float/2addr v14, v14

    add-float/2addr v11, v14

    add-float/2addr v3, v11

    mul-float/2addr v15, v15

    mul-float v4, v16, v16

    add-float/2addr v15, v4

    mul-float/2addr v2, v2

    add-float/2addr v15, v2

    mul-float/2addr v0, v0

    add-float/2addr v15, v0

    add-float/2addr v3, v15

    float-to-double v2, v3

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v1, v0

    return v1
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF4;->normF(Lorg/ejml/data/FMatrix4;)F

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF4;->divide(Lorg/ejml/data/FMatrix4;F)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF4;->normF(Lorg/ejml/data/FMatrix4x4;)F

    move-result v0

    .line 35
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF4;->divide(Lorg/ejml/data/FMatrix4x4;F)V

    return-void
.end method

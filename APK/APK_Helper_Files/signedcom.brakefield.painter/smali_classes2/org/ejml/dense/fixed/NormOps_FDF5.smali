.class public Lorg/ejml/dense/fixed/NormOps_FDF5;
.super Ljava/lang/Object;
.source "NormOps_FDF5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix5;)F
    .locals 3

    .line 56
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a1:F

    iget v1, p0, Lorg/ejml/data/FMatrix5;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5;->a2:F

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5;->a3:F

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5;->a4:F

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5;->a5:F

    iget p0, p0, Lorg/ejml/data/FMatrix5;->a5:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix5x5;)F
    .locals 4

    .line 46
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 48
    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 49
    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 50
    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    iget p0, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrix5;)F
    .locals 5

    .line 83
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF5;->elementMaxAbs(Lorg/ejml/data/FMatrix5;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 88
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix5;->a1:F

    div-float/2addr v1, v0

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a2:F

    div-float/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrix5;->a3:F

    div-float/2addr v3, v0

    iget v4, p0, Lorg/ejml/data/FMatrix5;->a4:F

    div-float/2addr v4, v0

    iget p0, p0, Lorg/ejml/data/FMatrix5;->a5:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    mul-float/2addr p0, p0

    add-float/2addr v1, p0

    float-to-double v1, v1

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normF(Lorg/ejml/data/FMatrix5x5;)F
    .locals 26

    move-object/from16 v0, p0

    .line 61
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_FDF5;->elementMaxAbs(Lorg/ejml/data/FMatrix5x5;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 66
    :cond_0
    iget v3, v0, Lorg/ejml/data/FMatrix5x5;->a11:F

    div-float/2addr v3, v1

    iget v4, v0, Lorg/ejml/data/FMatrix5x5;->a12:F

    div-float/2addr v4, v1

    iget v5, v0, Lorg/ejml/data/FMatrix5x5;->a13:F

    div-float/2addr v5, v1

    iget v6, v0, Lorg/ejml/data/FMatrix5x5;->a14:F

    div-float/2addr v6, v1

    iget v7, v0, Lorg/ejml/data/FMatrix5x5;->a15:F

    div-float/2addr v7, v1

    .line 67
    iget v8, v0, Lorg/ejml/data/FMatrix5x5;->a21:F

    div-float/2addr v8, v1

    iget v9, v0, Lorg/ejml/data/FMatrix5x5;->a22:F

    div-float/2addr v9, v1

    iget v10, v0, Lorg/ejml/data/FMatrix5x5;->a23:F

    div-float/2addr v10, v1

    iget v11, v0, Lorg/ejml/data/FMatrix5x5;->a24:F

    div-float/2addr v11, v1

    iget v12, v0, Lorg/ejml/data/FMatrix5x5;->a25:F

    div-float/2addr v12, v1

    .line 68
    iget v13, v0, Lorg/ejml/data/FMatrix5x5;->a31:F

    div-float/2addr v13, v1

    iget v14, v0, Lorg/ejml/data/FMatrix5x5;->a32:F

    div-float/2addr v14, v1

    iget v15, v0, Lorg/ejml/data/FMatrix5x5;->a33:F

    div-float/2addr v15, v1

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a34:F

    div-float/2addr v2, v1

    move/from16 v16, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a35:F

    div-float/2addr v2, v1

    move/from16 v17, v2

    .line 69
    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a41:F

    div-float/2addr v2, v1

    move/from16 v18, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a42:F

    div-float/2addr v2, v1

    move/from16 v19, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a43:F

    div-float/2addr v2, v1

    move/from16 v20, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a44:F

    div-float/2addr v2, v1

    move/from16 v21, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a45:F

    div-float/2addr v2, v1

    move/from16 v22, v2

    .line 70
    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a51:F

    div-float/2addr v2, v1

    move/from16 v23, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a52:F

    div-float/2addr v2, v1

    move/from16 v24, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a53:F

    div-float/2addr v2, v1

    move/from16 v25, v2

    iget v2, v0, Lorg/ejml/data/FMatrix5x5;->a54:F

    div-float/2addr v2, v1

    iget v0, v0, Lorg/ejml/data/FMatrix5x5;->a55:F

    div-float/2addr v0, v1

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    mul-float/2addr v6, v6

    add-float/2addr v3, v6

    mul-float/2addr v7, v7

    add-float/2addr v3, v7

    const/4 v4, 0x0

    add-float/2addr v3, v4

    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v10, v10

    add-float/2addr v8, v10

    mul-float/2addr v11, v11

    add-float/2addr v8, v11

    mul-float/2addr v12, v12

    add-float/2addr v8, v12

    add-float/2addr v3, v8

    mul-float/2addr v13, v13

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    mul-float/2addr v15, v15

    add-float/2addr v13, v15

    mul-float v4, v16, v16

    add-float/2addr v13, v4

    mul-float v4, v17, v17

    add-float/2addr v13, v4

    add-float/2addr v3, v13

    mul-float v4, v18, v18

    mul-float v5, v19, v19

    add-float/2addr v4, v5

    mul-float v5, v20, v20

    add-float/2addr v4, v5

    mul-float v5, v21, v21

    add-float/2addr v4, v5

    mul-float v5, v22, v22

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v23, v23

    mul-float v5, v24, v24

    add-float/2addr v4, v5

    mul-float v5, v25, v25

    add-float/2addr v4, v5

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    mul-float/2addr v0, v0

    add-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-double v2, v3

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v1, v0

    return v1
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix5;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF5;->normF(Lorg/ejml/data/FMatrix5;)F

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF5;->divide(Lorg/ejml/data/FMatrix5;F)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix5x5;)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF5;->normF(Lorg/ejml/data/FMatrix5x5;)F

    move-result v0

    .line 35
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF5;->divide(Lorg/ejml/data/FMatrix5x5;F)V

    return-void
.end method

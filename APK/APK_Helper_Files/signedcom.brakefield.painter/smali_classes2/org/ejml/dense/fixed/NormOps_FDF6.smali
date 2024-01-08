.class public Lorg/ejml/dense/fixed/NormOps_FDF6;
.super Ljava/lang/Object;
.source "NormOps_FDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix6;)F
    .locals 3

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrix6x6;)F
    .locals 4

    .line 46
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 48
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 49
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 50
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 51
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrix6;)F
    .locals 6

    .line 86
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF6;->elementMaxAbs(Lorg/ejml/data/FMatrix6;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 91
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a1:F

    div-float/2addr v1, v0

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a2:F

    div-float/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrix6;->a3:F

    div-float/2addr v3, v0

    iget v4, p0, Lorg/ejml/data/FMatrix6;->a4:F

    div-float/2addr v4, v0

    iget v5, p0, Lorg/ejml/data/FMatrix6;->a5:F

    div-float/2addr v5, v0

    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    mul-float/2addr v5, v5

    add-float/2addr v1, v5

    mul-float/2addr p0, p0

    add-float/2addr v1, p0

    float-to-double v1, v1

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normF(Lorg/ejml/data/FMatrix6x6;)F
    .locals 37

    move-object/from16 v0, p0

    .line 62
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_FDF6;->elementMaxAbs(Lorg/ejml/data/FMatrix6x6;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 67
    :cond_0
    iget v3, v0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v3, v1

    iget v4, v0, Lorg/ejml/data/FMatrix6x6;->a12:F

    div-float/2addr v4, v1

    iget v5, v0, Lorg/ejml/data/FMatrix6x6;->a13:F

    div-float/2addr v5, v1

    iget v6, v0, Lorg/ejml/data/FMatrix6x6;->a14:F

    div-float/2addr v6, v1

    iget v7, v0, Lorg/ejml/data/FMatrix6x6;->a15:F

    div-float/2addr v7, v1

    iget v8, v0, Lorg/ejml/data/FMatrix6x6;->a16:F

    div-float/2addr v8, v1

    .line 68
    iget v9, v0, Lorg/ejml/data/FMatrix6x6;->a21:F

    div-float/2addr v9, v1

    iget v10, v0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v10, v1

    iget v11, v0, Lorg/ejml/data/FMatrix6x6;->a23:F

    div-float/2addr v11, v1

    iget v12, v0, Lorg/ejml/data/FMatrix6x6;->a24:F

    div-float/2addr v12, v1

    iget v13, v0, Lorg/ejml/data/FMatrix6x6;->a25:F

    div-float/2addr v13, v1

    iget v14, v0, Lorg/ejml/data/FMatrix6x6;->a26:F

    div-float/2addr v14, v1

    .line 69
    iget v15, v0, Lorg/ejml/data/FMatrix6x6;->a31:F

    div-float/2addr v15, v1

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a32:F

    div-float/2addr v2, v1

    move/from16 v16, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v2, v1

    move/from16 v17, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a34:F

    div-float/2addr v2, v1

    move/from16 v18, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a35:F

    div-float/2addr v2, v1

    move/from16 v19, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a36:F

    div-float/2addr v2, v1

    move/from16 v20, v2

    .line 70
    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a41:F

    div-float/2addr v2, v1

    move/from16 v21, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a42:F

    div-float/2addr v2, v1

    move/from16 v22, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a43:F

    div-float/2addr v2, v1

    move/from16 v23, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v2, v1

    move/from16 v24, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a45:F

    div-float/2addr v2, v1

    move/from16 v25, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a46:F

    div-float/2addr v2, v1

    move/from16 v26, v2

    .line 71
    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a51:F

    div-float/2addr v2, v1

    move/from16 v27, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a52:F

    div-float/2addr v2, v1

    move/from16 v28, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a53:F

    div-float/2addr v2, v1

    move/from16 v29, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a54:F

    div-float/2addr v2, v1

    move/from16 v30, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v2, v1

    move/from16 v31, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a56:F

    div-float/2addr v2, v1

    move/from16 v32, v2

    .line 72
    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a61:F

    div-float/2addr v2, v1

    move/from16 v33, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a62:F

    div-float/2addr v2, v1

    move/from16 v34, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a63:F

    div-float/2addr v2, v1

    move/from16 v35, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a64:F

    div-float/2addr v2, v1

    move/from16 v36, v2

    iget v2, v0, Lorg/ejml/data/FMatrix6x6;->a65:F

    div-float/2addr v2, v1

    iget v0, v0, Lorg/ejml/data/FMatrix6x6;->a66:F

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

    mul-float/2addr v8, v8

    add-float/2addr v3, v8

    const/4 v4, 0x0

    add-float/2addr v3, v4

    mul-float/2addr v9, v9

    mul-float/2addr v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v11, v11

    add-float/2addr v9, v11

    mul-float/2addr v12, v12

    add-float/2addr v9, v12

    mul-float/2addr v13, v13

    add-float/2addr v9, v13

    mul-float/2addr v14, v14

    add-float/2addr v9, v14

    add-float/2addr v3, v9

    mul-float/2addr v15, v15

    mul-float v4, v16, v16

    add-float/2addr v15, v4

    mul-float v4, v17, v17

    add-float/2addr v15, v4

    mul-float v4, v18, v18

    add-float/2addr v15, v4

    mul-float v4, v19, v19

    add-float/2addr v15, v4

    mul-float v4, v20, v20

    add-float/2addr v15, v4

    add-float/2addr v3, v15

    mul-float v4, v21, v21

    mul-float v5, v22, v22

    add-float/2addr v4, v5

    mul-float v5, v23, v23

    add-float/2addr v4, v5

    mul-float v5, v24, v24

    add-float/2addr v4, v5

    mul-float v5, v25, v25

    add-float/2addr v4, v5

    mul-float v5, v26, v26

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v27, v27

    mul-float v5, v28, v28

    add-float/2addr v4, v5

    mul-float v5, v29, v29

    add-float/2addr v4, v5

    mul-float v5, v30, v30

    add-float/2addr v4, v5

    mul-float v5, v31, v31

    add-float/2addr v4, v5

    mul-float v5, v32, v32

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v33, v33

    mul-float v5, v34, v34

    add-float/2addr v4, v5

    mul-float v5, v35, v35

    add-float/2addr v4, v5

    mul-float v5, v36, v36

    add-float/2addr v4, v5

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    mul-float/2addr v0, v0

    add-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-double v2, v3

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v1, v0

    return v1
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF6;->normF(Lorg/ejml/data/FMatrix6;)F

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF6;->divide(Lorg/ejml/data/FMatrix6;F)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_FDF6;->normF(Lorg/ejml/data/FMatrix6x6;)F

    move-result v0

    .line 35
    invoke-static {p0, v0}, Lorg/ejml/dense/fixed/CommonOps_FDF6;->divide(Lorg/ejml/data/FMatrix6x6;F)V

    return-void
.end method

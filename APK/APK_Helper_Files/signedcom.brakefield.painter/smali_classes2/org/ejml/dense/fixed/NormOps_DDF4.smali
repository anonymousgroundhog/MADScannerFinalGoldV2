.class public Lorg/ejml/dense/fixed/NormOps_DDF4;
.super Ljava/lang/Object;
.source "NormOps_DDF4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix4;)D
    .locals 6

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix4x4;)D
    .locals 8

    .line 46
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    .line 47
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 48
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 49
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix4;)D
    .locals 10

    .line 80
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_DDF4;->elementMaxAbs(Lorg/ejml/data/DMatrix4;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 85
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a1:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4;->a2:D

    div-double/2addr v4, v0

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4;->a3:D

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/ejml/data/DMatrix4;->a4:D

    div-double/2addr v8, v0

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    mul-double/2addr v8, v8

    add-double/2addr v2, v8

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix4x4;)D
    .locals 35

    move-object/from16 v0, p0

    .line 60
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_DDF4;->elementMaxAbs(Lorg/ejml/data/DMatrix4x4;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    .line 65
    :cond_0
    iget-wide v5, v0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v5, v1

    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double/2addr v7, v1

    iget-wide v9, v0, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v9, v1

    iget-wide v11, v0, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double/2addr v11, v1

    .line 66
    iget-wide v13, v0, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double/2addr v13, v1

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v3, v1

    move-wide v15, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v3, v1

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double/2addr v3, v1

    move-wide/from16 v19, v3

    .line 67
    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double/2addr v3, v1

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double/2addr v3, v1

    move-wide/from16 v23, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v3, v1

    move-wide/from16 v25, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double/2addr v3, v1

    move-wide/from16 v27, v3

    .line 68
    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double/2addr v3, v1

    move-wide/from16 v29, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v3, v1

    move-wide/from16 v31, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double/2addr v3, v1

    move-wide/from16 v33, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a44:D

    div-double/2addr v3, v1

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    mul-double/2addr v11, v11

    add-double/2addr v5, v11

    const-wide/16 v7, 0x0

    add-double/2addr v5, v7

    mul-double/2addr v13, v13

    mul-double v7, v15, v15

    add-double/2addr v13, v7

    mul-double v7, v17, v17

    add-double/2addr v13, v7

    mul-double v7, v19, v19

    add-double/2addr v13, v7

    add-double/2addr v5, v13

    mul-double v7, v21, v21

    mul-double v9, v23, v23

    add-double/2addr v7, v9

    mul-double v9, v25, v25

    add-double/2addr v7, v9

    mul-double v9, v27, v27

    add-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double v7, v29, v29

    mul-double v9, v31, v31

    add-double/2addr v7, v9

    mul-double v9, v33, v33

    add-double/2addr v7, v9

    mul-double/2addr v3, v3

    add-double/2addr v7, v3

    add-double/2addr v5, v7

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF4;->normF(Lorg/ejml/data/DMatrix4;)D

    move-result-wide v0

    .line 40
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF4;->divide(Lorg/ejml/data/DMatrix4;D)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF4;->normF(Lorg/ejml/data/DMatrix4x4;)D

    move-result-wide v0

    .line 35
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF4;->divide(Lorg/ejml/data/DMatrix4x4;D)V

    return-void
.end method

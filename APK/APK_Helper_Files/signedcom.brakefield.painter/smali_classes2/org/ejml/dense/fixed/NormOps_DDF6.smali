.class public Lorg/ejml/dense/fixed/NormOps_DDF6;
.super Ljava/lang/Object;
.source "NormOps_DDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix6;)D
    .locals 6

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix6x6;)D
    .locals 8

    .line 46
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    .line 47
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 48
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 49
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 50
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 51
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix6;)D
    .locals 14

    .line 86
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_DDF6;->elementMaxAbs(Lorg/ejml/data/DMatrix6;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 91
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a1:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6;->a2:D

    div-double/2addr v4, v0

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6;->a3:D

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/ejml/data/DMatrix6;->a4:D

    div-double/2addr v8, v0

    iget-wide v10, p0, Lorg/ejml/data/DMatrix6;->a5:D

    div-double/2addr v10, v0

    iget-wide v12, p0, Lorg/ejml/data/DMatrix6;->a6:D

    div-double/2addr v12, v0

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    mul-double/2addr v8, v8

    add-double/2addr v2, v8

    mul-double/2addr v10, v10

    add-double/2addr v2, v10

    mul-double/2addr v12, v12

    add-double/2addr v2, v12

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix6x6;)D
    .locals 75

    move-object/from16 v0, p0

    .line 62
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_DDF6;->elementMaxAbs(Lorg/ejml/data/DMatrix6x6;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    .line 67
    :cond_0
    iget-wide v5, v0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v5, v1

    iget-wide v7, v0, Lorg/ejml/data/DMatrix6x6;->a12:D

    div-double/2addr v7, v1

    iget-wide v9, v0, Lorg/ejml/data/DMatrix6x6;->a13:D

    div-double/2addr v9, v1

    iget-wide v11, v0, Lorg/ejml/data/DMatrix6x6;->a14:D

    div-double/2addr v11, v1

    iget-wide v13, v0, Lorg/ejml/data/DMatrix6x6;->a15:D

    div-double/2addr v13, v1

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a16:D

    div-double/2addr v3, v1

    move-wide v15, v3

    .line 68
    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a21:D

    div-double/2addr v3, v1

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v3, v1

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a23:D

    div-double/2addr v3, v1

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a24:D

    div-double/2addr v3, v1

    move-wide/from16 v23, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a25:D

    div-double/2addr v3, v1

    move-wide/from16 v25, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a26:D

    div-double/2addr v3, v1

    move-wide/from16 v27, v3

    .line 69
    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a31:D

    div-double/2addr v3, v1

    move-wide/from16 v29, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a32:D

    div-double/2addr v3, v1

    move-wide/from16 v31, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v3, v1

    move-wide/from16 v33, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a34:D

    div-double/2addr v3, v1

    move-wide/from16 v35, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a35:D

    div-double/2addr v3, v1

    move-wide/from16 v37, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a36:D

    div-double/2addr v3, v1

    move-wide/from16 v39, v3

    .line 70
    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a41:D

    div-double/2addr v3, v1

    move-wide/from16 v41, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a42:D

    div-double/2addr v3, v1

    move-wide/from16 v43, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a43:D

    div-double/2addr v3, v1

    move-wide/from16 v45, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v3, v1

    move-wide/from16 v47, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a45:D

    div-double/2addr v3, v1

    move-wide/from16 v49, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a46:D

    div-double/2addr v3, v1

    move-wide/from16 v51, v3

    .line 71
    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a51:D

    div-double/2addr v3, v1

    move-wide/from16 v53, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a52:D

    div-double/2addr v3, v1

    move-wide/from16 v55, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a53:D

    div-double/2addr v3, v1

    move-wide/from16 v57, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a54:D

    div-double/2addr v3, v1

    move-wide/from16 v59, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v3, v1

    move-wide/from16 v61, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a56:D

    div-double/2addr v3, v1

    move-wide/from16 v63, v3

    .line 72
    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a61:D

    div-double/2addr v3, v1

    move-wide/from16 v65, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a62:D

    div-double/2addr v3, v1

    move-wide/from16 v67, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a63:D

    div-double/2addr v3, v1

    move-wide/from16 v69, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a64:D

    div-double/2addr v3, v1

    move-wide/from16 v71, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a65:D

    div-double/2addr v3, v1

    move-wide/from16 v73, v3

    iget-wide v3, v0, Lorg/ejml/data/DMatrix6x6;->a66:D

    div-double/2addr v3, v1

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    mul-double/2addr v11, v11

    add-double/2addr v5, v11

    mul-double/2addr v13, v13

    add-double/2addr v5, v13

    mul-double v7, v15, v15

    add-double/2addr v5, v7

    const-wide/16 v7, 0x0

    add-double/2addr v5, v7

    mul-double v7, v17, v17

    mul-double v9, v19, v19

    add-double/2addr v7, v9

    mul-double v9, v21, v21

    add-double/2addr v7, v9

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

    mul-double v9, v35, v35

    add-double/2addr v7, v9

    mul-double v9, v37, v37

    add-double/2addr v7, v9

    mul-double v9, v39, v39

    add-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double v7, v41, v41

    mul-double v9, v43, v43

    add-double/2addr v7, v9

    mul-double v9, v45, v45

    add-double/2addr v7, v9

    mul-double v9, v47, v47

    add-double/2addr v7, v9

    mul-double v9, v49, v49

    add-double/2addr v7, v9

    mul-double v9, v51, v51

    add-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double v7, v53, v53

    mul-double v9, v55, v55

    add-double/2addr v7, v9

    mul-double v9, v57, v57

    add-double/2addr v7, v9

    mul-double v9, v59, v59

    add-double/2addr v7, v9

    mul-double v9, v61, v61

    add-double/2addr v7, v9

    mul-double v9, v63, v63

    add-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double v7, v65, v65

    mul-double v9, v67, v67

    add-double/2addr v7, v9

    mul-double v9, v69, v69

    add-double/2addr v7, v9

    mul-double v9, v71, v71

    add-double/2addr v7, v9

    mul-double v9, v73, v73

    add-double/2addr v7, v9

    mul-double/2addr v3, v3

    add-double/2addr v7, v3

    add-double/2addr v5, v7

    .line 82
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF6;->normF(Lorg/ejml/data/DMatrix6;)D

    move-result-wide v0

    .line 40
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF6;->divide(Lorg/ejml/data/DMatrix6;D)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF6;->normF(Lorg/ejml/data/DMatrix6x6;)D

    move-result-wide v0

    .line 35
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF6;->divide(Lorg/ejml/data/DMatrix6x6;D)V

    return-void
.end method

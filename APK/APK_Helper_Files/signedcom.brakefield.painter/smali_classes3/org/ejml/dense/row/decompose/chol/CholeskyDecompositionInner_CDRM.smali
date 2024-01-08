.class public Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;
.super Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;
.source "CholeskyDecompositionInner_CDRM.java"


# instance fields
.field tolerance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;-><init>(Z)V

    .line 35
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    iput v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->tolerance:F

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;-><init>(Z)V

    .line 35
    sget p1, Lorg/ejml/UtilEjml;->F_EPS:F

    iput p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->tolerance:F

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 21

    move-object/from16 v0, p0

    .line 51
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    if-eqz v1, :cond_9

    .line 56
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    .line 57
    :goto_0
    iget v6, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_6

    move v6, v4

    .line 58
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    if-ge v6, v8, :cond_5

    .line 59
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int v9, v4, v1

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v9

    aget v8, v8, v10

    .line 60
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v10, v7

    aget v10, v11, v10

    if-ne v4, v6, :cond_3

    .line 65
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->tolerance:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    return v3

    :cond_0
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v9

    :goto_2
    if-ge v9, v5, :cond_1

    .line 72
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v11, v9, 0x1

    aget v9, v10, v9

    .line 73
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v9

    mul-float/2addr v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v9, v12

    goto :goto_2

    :cond_1
    cmpg-float v9, v8, v2

    if-gtz v9, :cond_2

    return v3

    :cond_2
    float-to-double v8, v8

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 83
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    aput v8, v9, v5

    .line 84
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v5, v5, 0x1

    aput v2, v9, v5

    move v5, v8

    goto :goto_4

    :cond_3
    mul-int v11, v6, v1

    mul-int/lit8 v12, v4, 0x2

    add-int v13, v9, v12

    move v14, v11

    :goto_3
    if-ge v9, v13, :cond_4

    .line 92
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v16, v9, 0x1

    aget v9, v15, v9

    .line 93
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v17, v16, 0x1

    aget v15, v15, v16

    .line 95
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v18, v14, 0x1

    aget v2, v2, v14

    .line 96
    iget-object v14, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v19, v18, 0x1

    aget v14, v14, v18

    mul-float v18, v9, v2

    mul-float v20, v15, v14

    add-float v18, v18, v20

    sub-float v8, v8, v18

    mul-float/2addr v9, v14

    mul-float/2addr v2, v15

    sub-float/2addr v9, v2

    sub-float/2addr v10, v9

    move/from16 v9, v17

    move/from16 v14, v19

    const/4 v2, 0x0

    goto :goto_3

    .line 106
    :cond_4
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v11, v12

    div-float/2addr v8, v5

    aput v8, v2, v11

    .line 107
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v11, v7

    div-float/2addr v10, v5

    aput v10, v2, v11

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    move v2, v7

    .line 112
    :goto_5
    iget v4, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    if-ge v2, v4, :cond_8

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_7

    .line 114
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int v6, v2, v1

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    iget-object v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    aget v8, v8, v6

    neg-float v8, v8

    aput v8, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    return v7

    .line 52
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cholesky is undefined for 0 by 0 matrix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected decomposeUpper()Z
    .locals 19

    move-object/from16 v0, p0

    .line 125
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    if-eqz v1, :cond_7

    .line 130
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    .line 132
    :goto_0
    iget v6, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_6

    move v6, v4

    .line 133
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->n:I

    if-ge v6, v8, :cond_5

    .line 134
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int v9, v4, v1

    mul-int/lit8 v10, v6, 0x2

    add-int v11, v9, v10

    aget v8, v8, v11

    .line 135
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v13, v11, 0x1

    aget v12, v12, v13

    if-ne v4, v6, :cond_3

    .line 138
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->tolerance:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    return v3

    :cond_0
    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_1

    .line 142
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int v11, v5, v1

    mul-int/lit8 v12, v4, 0x2

    add-int/2addr v11, v12

    aget v10, v10, v11

    .line 143
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v11, v7

    aget v11, v12, v11

    mul-float/2addr v10, v10

    mul-float/2addr v11, v11

    add-float/2addr v10, v11

    sub-float/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    cmpg-float v5, v8, v2

    if-gtz v5, :cond_2

    return v3

    :cond_2
    float-to-double v10, v8

    .line 152
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 153
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    aput v5, v8, v9

    .line 154
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v9, v7

    aput v2, v8, v9

    move/from16 v17, v1

    goto :goto_4

    :cond_3
    move v9, v3

    :goto_3
    if-ge v9, v4, :cond_4

    .line 157
    iget-object v14, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    mul-int v15, v9, v1

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v15, v16

    aget v14, v14, v16

    .line 158
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/lit8 v16, v16, 0x1

    aget v2, v2, v16

    .line 160
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v15, v10

    aget v3, v3, v15

    move/from16 v17, v1

    .line 161
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    add-int/2addr v15, v7

    aget v1, v1, v15

    mul-float v15, v14, v3

    mul-float v18, v2, v1

    add-float v15, v15, v18

    sub-float/2addr v8, v15

    mul-float/2addr v14, v1

    mul-float/2addr v3, v2

    sub-float/2addr v14, v3

    sub-float/2addr v12, v14

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move/from16 v17, v1

    .line 167
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    div-float/2addr v8, v5

    aput v8, v1, v11

    .line 168
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->t:[F

    div-float/2addr v12, v5

    aput v12, v1, v13

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    move/from16 v17, v1

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    return v7

    .line 126
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cholesky is undefined for 0 by 0 matrix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTolerance(F)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->tolerance:F

    return-void
.end method

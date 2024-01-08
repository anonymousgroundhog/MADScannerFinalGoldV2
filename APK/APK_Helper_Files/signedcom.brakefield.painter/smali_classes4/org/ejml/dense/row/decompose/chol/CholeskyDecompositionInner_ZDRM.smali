.class public Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;
.super Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;
.source "CholeskyDecompositionInner_ZDRM.java"


# instance fields
.field tolerance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;-><init>(Z)V

    .line 33
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    iput-wide v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->tolerance:D

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;-><init>(Z)V

    .line 33
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    iput-wide v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->tolerance:D

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 30

    move-object/from16 v0, p0

    .line 49
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    if-eqz v1, :cond_9

    .line 54
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    mul-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    .line 55
    :goto_0
    iget v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    const/4 v9, 0x1

    if-ge v5, v8, :cond_6

    move v8, v5

    .line 56
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    if-ge v8, v10, :cond_5

    .line 57
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int v11, v5, v1

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v11

    aget-wide v13, v10, v12

    .line 58
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/2addr v12, v9

    aget-wide v15, v10, v12

    if-ne v5, v8, :cond_3

    .line 63
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v9, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->tolerance:D

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v9, v15

    cmpl-double v6, v6, v9

    if-lez v6, :cond_0

    return v4

    :cond_0
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v11

    :goto_2
    if-ge v11, v6, :cond_1

    .line 70
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v9, v11, 0x1

    aget-wide v10, v7, v11

    .line 71
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v15, v9, 0x1

    aget-wide v16, v7, v9

    mul-double/2addr v10, v10

    mul-double v16, v16, v16

    add-double v10, v10, v16

    sub-double/2addr v13, v10

    move v11, v15

    goto :goto_2

    :cond_1
    cmpg-double v7, v13, v2

    if-gtz v7, :cond_2

    return v4

    .line 80
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 81
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    aput-wide v9, v7, v6

    .line 82
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v6, v6, 0x1

    aput-wide v2, v7, v6

    move-wide v6, v9

    goto :goto_4

    :cond_3
    mul-int v9, v8, v1

    mul-int/lit8 v10, v5, 0x2

    add-int v2, v11, v10

    move v3, v9

    :goto_3
    if-ge v11, v2, :cond_4

    .line 90
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v18, v11, 0x1

    aget-wide v19, v4, v11

    .line 91
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v11, v18, 0x1

    aget-wide v21, v4, v18

    .line 93
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v18, v3, 0x1

    aget-wide v3, v4, v3

    .line 94
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v23, v18, 0x1

    aget-wide v24, v12, v18

    mul-double v26, v19, v3

    mul-double v28, v21, v24

    add-double v26, v26, v28

    sub-double v13, v13, v26

    mul-double v19, v19, v24

    mul-double v3, v3, v21

    sub-double v19, v19, v3

    sub-double v15, v15, v19

    move/from16 v3, v23

    const/4 v4, 0x0

    goto :goto_3

    .line 104
    :cond_4
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/2addr v9, v10

    div-double/2addr v13, v6

    aput-wide v13, v2, v9

    .line 105
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    const/4 v3, 0x1

    add-int/2addr v9, v3

    div-double/2addr v15, v6

    aput-wide v15, v2, v9

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    .line 110
    :goto_5
    iget v3, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    if-ge v2, v3, :cond_8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_7

    .line 112
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int v5, v2, v1

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    aget-wide v7, v7, v5

    neg-double v7, v7

    aput-wide v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    return v6

    .line 50
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cholesky is undefined for 0 by 0 matrix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected decomposeUpper()Z
    .locals 31

    move-object/from16 v0, p0

    .line 123
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    if-eqz v1, :cond_7

    .line 128
    iget v1, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    mul-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    .line 130
    :goto_0
    iget v8, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    const/4 v9, 0x1

    if-ge v5, v8, :cond_6

    move v8, v5

    .line 131
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->n:I

    if-ge v8, v10, :cond_5

    .line 132
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int v11, v5, v1

    mul-int/lit8 v12, v8, 0x2

    add-int v13, v11, v12

    aget-wide v14, v10, v13

    .line 133
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v16, v13, 0x1

    aget-wide v17, v10, v16

    if-ne v5, v8, :cond_3

    .line 136
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v12, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->tolerance:D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    cmpl-double v6, v6, v12

    if-lez v6, :cond_0

    return v4

    :cond_0
    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_1

    .line 140
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int v10, v6, v1

    mul-int/lit8 v12, v5, 0x2

    add-int/2addr v10, v12

    aget-wide v12, v7, v10

    .line 141
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/2addr v10, v9

    aget-wide v16, v7, v10

    mul-double/2addr v12, v12

    mul-double v16, v16, v16

    add-double v12, v12, v16

    sub-double/2addr v14, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    cmpg-double v6, v14, v2

    if-gtz v6, :cond_2

    return v4

    .line 150
    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 151
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int/lit8 v12, v5, 0x2

    add-int/2addr v11, v12

    aput-wide v6, v10, v11

    .line 152
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/2addr v11, v9

    aput-wide v2, v10, v11

    goto :goto_4

    :cond_3
    move v10, v4

    :goto_3
    if-ge v10, v5, :cond_4

    .line 155
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    mul-int v19, v10, v1

    mul-int/lit8 v20, v5, 0x2

    add-int v20, v19, v20

    aget-wide v21, v11, v20

    .line 156
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v20, v20, 0x1

    aget-wide v23, v11, v20

    .line 158
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int v19, v19, v12

    aget-wide v25, v11, v19

    .line 159
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    add-int/lit8 v19, v19, 0x1

    aget-wide v19, v11, v19

    mul-double v27, v21, v25

    mul-double v29, v23, v19

    add-double v27, v27, v29

    sub-double v14, v14, v27

    mul-double v21, v21, v19

    mul-double v25, v25, v23

    sub-double v21, v21, v25

    sub-double v17, v17, v21

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 165
    :cond_4
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    div-double/2addr v14, v6

    aput-wide v14, v10, v13

    .line 166
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->t:[D

    div-double v17, v17, v6

    aput-wide v17, v10, v16

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    return v9

    .line 124
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cholesky is undefined for 0 by 0 matrix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTolerance(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->tolerance:D

    return-void
.end method

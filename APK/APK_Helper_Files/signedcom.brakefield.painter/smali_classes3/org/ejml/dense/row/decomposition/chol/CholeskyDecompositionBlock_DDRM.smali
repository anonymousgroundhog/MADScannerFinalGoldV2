.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;
.source "CholeskyDecompositionBlock_DDRM.java"


# instance fields
.field private B:Lorg/ejml/data/DMatrixRMaj;

.field private final blockWidth:I

.field private final chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;-><init>(Z)V

    .line 47
    iput p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    .line 48
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;

    invoke-direct {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 14

    .line 82
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2, v2, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 87
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    div-int/2addr v0, v1

    .line 88
    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    rem-int/2addr v1, v3

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_1
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    iput v4, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_6

    .line 97
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget v5, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 99
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lez v4, :cond_3

    .line 101
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v7, v7, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int v8, v3, v7

    add-int/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;II)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 103
    :cond_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v5, v5, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int v7, v5, v6

    add-int v11, v4, v7

    mul-int/2addr v6, v5

    .line 104
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v4

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v4, v3

    add-int v12, v6, v4

    .line 107
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;

    invoke-virtual {v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->getL()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v4

    iget-object v9, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget-object v13, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->solveL_special([DLorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;)V

    .line 109
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v4, v5

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    mul-int/2addr v4, v6

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 112
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, v5, v6, v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->symmRankTranA_sub(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V

    goto :goto_3

    :cond_3
    if-lez v1, :cond_4

    move v4, v1

    goto :goto_2

    .line 114
    :cond_4
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    .line 115
    :goto_2
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v7, v3

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    iget v8, v8, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;II)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 121
    :cond_6
    :goto_4
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    if-ge v2, v0, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    .line 122
    :goto_5
    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    if-ge v1, v3, :cond_7

    .line 123
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->t:[D

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->n:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    move v2, v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected decomposeUpper()Z
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Do a lower decomposition and transpose it..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 56
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->setExpectedMaxSize(II)V

    .line 60
    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    if-ge p1, p2, :cond_0

    .line 61
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->blockWidth:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->maxWidth:I

    invoke-direct {p1, p2, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    :goto_0
    return-void
.end method

.method public solveL_special([DLorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 150
    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 152
    iget-object v3, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 153
    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 154
    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    move v7, v5

    move v8, v7

    move v9, v6

    :goto_1
    if-ge v7, v4, :cond_1

    .line 175
    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v7

    add-int v10, p3, v10

    add-int/2addr v10, v6

    aget-wide v10, v2, v10

    add-int v12, v8, v7

    move v14, v6

    move v13, v8

    :goto_2
    if-eq v13, v12, :cond_0

    add-int/lit8 v15, v13, 0x1

    .line 182
    aget-wide v16, p1, v13

    aget-wide v18, v3, v14

    mul-double v16, v16, v18

    sub-double v10, v10, v16

    add-int/2addr v14, v1

    move v13, v15

    goto :goto_2

    :cond_0
    mul-int v12, v7, v4

    add-int/2addr v12, v7

    .line 184
    aget-wide v12, p1, v12

    div-double/2addr v10, v12

    .line 185
    iget v12, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v6

    add-int v12, p4, v12

    add-int/2addr v12, v7

    aput-wide v10, v2, v12

    .line 186
    aput-wide v10, v3, v9

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v9, v1

    add-int/2addr v8, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public symmRankTranA_sub(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 207
    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 208
    iget-object v3, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 220
    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    move/from16 v5, p3

    move v6, v4

    .line 221
    :goto_0
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_2

    .line 223
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    move v8, v4

    move v9, v6

    .line 225
    :goto_1
    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    .line 227
    aget-wide v10, v2, v9

    move v13, v5

    move v12, v9

    :goto_2
    if-ge v12, v7, :cond_0

    add-int/lit8 v14, v13, 0x1

    .line 231
    aget-wide v15, v3, v13

    add-int/lit8 v17, v12, 0x1

    aget-wide v18, v2, v12

    mul-double v18, v18, v10

    sub-double v15, v15, v18

    aput-wide v15, v3, v13

    move v13, v14

    move/from16 v12, v17

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 225
    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v9, v10

    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v7, v10

    goto :goto_1

    :cond_1
    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

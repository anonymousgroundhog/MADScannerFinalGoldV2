.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;
.source "CholeskyDecompositionBlock_FDRM.java"


# instance fields
.field private B:Lorg/ejml/data/FMatrixRMaj;

.field private final blockWidth:I

.field private final chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;-><init>(Z)V

    .line 49
    iput p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    .line 50
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;

    invoke-direct {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 14

    .line 84
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v2, v2, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 89
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    div-int/2addr v0, v1

    .line 90
    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    rem-int/2addr v1, v3

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 96
    :cond_1
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    iput v4, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_6

    .line 99
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget v5, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 101
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lez v4, :cond_3

    .line 103
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v7, v7, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int v8, v3, v7

    add-int/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;II)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 105
    :cond_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v5, v5, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int v7, v5, v6

    add-int v11, v4, v7

    mul-int/2addr v6, v5

    .line 106
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v4

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v4, v3

    add-int v12, v6, v4

    .line 109
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;

    invoke-virtual {v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->getL()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v4

    iget-object v9, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget-object v13, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->solveL_special([FLorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;)V

    .line 111
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v4, v5

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    mul-int/2addr v4, v6

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 114
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, v5, v6, v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->symmRankTranA_sub(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V

    goto :goto_3

    :cond_3
    if-lez v1, :cond_4

    move v4, v1

    goto :goto_2

    .line 116
    :cond_4
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    .line 117
    :goto_2
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->chol:Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v7, v3

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    iget v8, v8, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4}, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;II)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 123
    :cond_6
    :goto_4
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    if-ge v2, v0, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    .line 124
    :goto_5
    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    if-ge v1, v3, :cond_7

    .line 125
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->t:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->n:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    const/4 v5, 0x0

    aput v5, v3, v4

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

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Do a lower decomposition and transpose it..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->setExpectedMaxSize(II)V

    .line 62
    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    if-ge p1, p2, :cond_0

    .line 63
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->blockWidth:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->maxWidth:I

    invoke-direct {p1, p2, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    :goto_0
    return-void
.end method

.method public solveL_special([FLorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 152
    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 154
    iget-object v3, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 155
    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 156
    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    move v7, v5

    move v8, v7

    move v9, v6

    :goto_1
    if-ge v7, v4, :cond_1

    .line 177
    iget v10, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v7

    add-int v10, p3, v10

    add-int/2addr v10, v6

    aget v10, v2, v10

    add-int v11, v8, v7

    move v13, v6

    move v12, v8

    :goto_2
    if-eq v12, v11, :cond_0

    add-int/lit8 v14, v12, 0x1

    .line 184
    aget v12, p1, v12

    aget v15, v3, v13

    mul-float/2addr v12, v15

    sub-float/2addr v10, v12

    add-int/2addr v13, v1

    move v12, v14

    goto :goto_2

    :cond_0
    mul-int v11, v7, v4

    add-int/2addr v11, v7

    .line 186
    aget v11, p1, v11

    div-float/2addr v10, v11

    .line 187
    iget v11, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v11, v6

    add-int v11, p4, v11

    add-int/2addr v11, v7

    aput v10, v2, v11

    .line 188
    aput v10, v3, v9

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

.method public symmRankTranA_sub(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 209
    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 210
    iget-object v3, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 222
    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    move/from16 v5, p3

    move v6, v4

    .line 223
    :goto_0
    iget v7, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_2

    .line 225
    iget v7, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    move v8, v4

    move v9, v6

    .line 227
    :goto_1
    iget v10, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    .line 229
    aget v10, v2, v9

    move v12, v5

    move v11, v9

    :goto_2
    if-ge v11, v7, :cond_0

    add-int/lit8 v13, v12, 0x1

    .line 233
    aget v14, v3, v12

    add-int/lit8 v15, v11, 0x1

    aget v11, v2, v11

    mul-float/2addr v11, v10

    sub-float/2addr v14, v11

    aput v14, v3, v12

    move v12, v13

    move v11, v15

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 227
    iget v10, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v9, v10

    iget v10, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v7, v10

    goto :goto_1

    :cond_1
    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.class public Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;
.super Ljava/lang/Object;
.source "MatrixFeatures_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v1

    invoke-static {v2}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 4

    .line 36
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    .line 39
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isSameStructure(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 42
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_2

    .line 43
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lcom/infinite/core/MTx/eQuC;->VcnJm:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 4

    .line 50
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    .line 52
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isSameStructure(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 55
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_2

    .line 56
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inputs must have sorted indices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEqualsSort(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 4

    .line 63
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    .line 65
    :cond_0
    iget-boolean v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    .line 67
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isSameStructure(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 70
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_4

    .line 71
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdenticalSort(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 4

    .line 78
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    .line 80
    :cond_0
    iget-boolean v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    .line 82
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isSameStructure(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 85
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_4

    .line 86
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentity(Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 5

    .line 133
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 136
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 139
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v1, v3, :cond_4

    .line 140
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_2

    return v2

    .line 142
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static isLowerTriangle(Lorg/ejml/data/FMatrixSparseCSC;IF)Z
    .locals 6

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 169
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 172
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_5

    .line 173
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 174
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-lt v0, p1, :cond_3

    if-ne v1, v3, :cond_2

    return v2

    .line 182
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    sub-int v5, v0, p1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v3, v5, :cond_3

    return v2

    :cond_3
    sub-int/2addr v0, p1

    if-ltz v0, :cond_4

    .line 187
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_4

    return v2

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isOrthogonal(Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 12

    .line 287
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_3

    .line 291
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    .line 292
    new-instance v1, Lorg/ejml/data/FGrowArray;

    invoke-direct {v1}, Lorg/ejml/data/FGrowArray;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    .line 294
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge v9, v2, :cond_2

    add-int/lit8 v10, v9, 0x1

    move v11, v10

    .line 296
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v11, v2, :cond_1

    move-object v2, p0

    move v3, v9

    move-object v4, p0

    move v5, v11

    move-object v6, v0

    move-object v7, v1

    .line 297
    invoke-static/range {v2 .. v7}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F

    move-result v2

    .line 299
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-lez v2, :cond_0

    return v8

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 288
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->fCcp:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 269
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 272
    :cond_0
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;-><init>()V

    .line 273
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static isSameStructure(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 4

    .line 100
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ne v0, v1, :cond_4

    move v0, v2

    .line 101
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v0

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 105
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_3

    .line 106
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public static isSymmetric(Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 8

    .line 233
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 236
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 239
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 240
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    :goto_1
    if-ge v3, v4, :cond_2

    .line 243
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    .line 244
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v3

    .line 245
    invoke-virtual {p0, v1, v6}, Lorg/ejml/data/FMatrixSparseCSC;->get(II)F

    move-result v6

    sub-float/2addr v6, v7

    .line 247
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, p1

    if-lez v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isTranspose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 5

    .line 195
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-eq v0, v1, :cond_1

    return v2

    .line 199
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_5

    .line 202
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-direct {v0, v1, v3, v4}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    const/4 v1, 0x0

    .line 204
    invoke-static {p1, v0, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    .line 205
    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    move v1, v2

    .line 207
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v3, :cond_4

    .line 208
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    iget-object v4, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_2

    return v2

    .line 210
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v1

    iget-object v4, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 200
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must have sorted indicies"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v2
.end method

.method public static isVector(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 222
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-gt v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isZeros(Lorg/ejml/data/FMatrixSparseCSC;F)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 124
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 125
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

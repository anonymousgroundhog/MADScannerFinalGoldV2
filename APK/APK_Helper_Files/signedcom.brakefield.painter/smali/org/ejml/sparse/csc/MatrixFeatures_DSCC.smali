.class public Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;
.super Ljava/lang/Object;
.source "MatrixFeatures_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

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

.method public static isEquals(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 6

    .line 34
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    .line 37
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isSameStructure(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 40
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_2

    .line 41
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 35
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inputs must have sorted indices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEquals(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 6

    .line 48
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_3

    .line 50
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isSameStructure(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 53
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inputs must have sorted indices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEqualsSort(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 6

    .line 61
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    .line 63
    :cond_0
    iget-boolean v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    .line 65
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isSameStructure(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 68
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_4

    .line 69
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-lez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdenticalSort(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 9

    .line 76
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    .line 78
    :cond_0
    iget-boolean v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    .line 80
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isSameStructure(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 83
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_4

    .line 84
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v2, v0

    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v2, v0

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

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

.method public static isIdentity(Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 7

    .line 131
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 134
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 137
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v1, v3, :cond_4

    .line 138
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_2

    return v2

    .line 140
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-lez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static isLowerTriangle(Lorg/ejml/data/DMatrixSparseCSC;ID)Z
    .locals 6

    .line 163
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 167
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 170
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_5

    .line 171
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 172
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-lt v0, p1, :cond_3

    if-ne v1, v3, :cond_2

    return v2

    .line 180
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    sub-int v5, v0, p1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v3, v5, :cond_3

    return v2

    :cond_3
    sub-int/2addr v0, p1

    if-ltz v0, :cond_4

    .line 185
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_4

    return v2

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isOrthogonal(Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 12

    .line 285
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_3

    .line 289
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    .line 290
    new-instance v1, Lorg/ejml/data/DGrowArray;

    invoke-direct {v1}, Lorg/ejml/data/DGrowArray;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    .line 292
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v9, v2, :cond_2

    add-int/lit8 v10, v9, 0x1

    move v11, v10

    .line 294
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v11, v2, :cond_1

    move-object v2, p0

    move v3, v9

    move-object v4, p0

    move v5, v11

    move-object v6, v0

    move-object v7, v1

    .line 295
    invoke-static/range {v2 .. v7}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D

    move-result-wide v2

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p1

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

    .line 286
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 267
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_0
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;-><init>()V

    .line 271
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static isSameStructure(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 4

    .line 98
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ne v0, v1, :cond_4

    move v0, v2

    .line 99
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    iget-object v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v0

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_3

    .line 104
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    iget-object v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

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

.method public static isSymmetric(Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 11

    .line 231
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 234
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 237
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 238
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    :goto_1
    if-ge v3, v4, :cond_2

    .line 241
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    .line 242
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v3

    .line 243
    invoke-virtual {p0, v1, v6}, Lorg/ejml/data/DMatrixSparseCSC;->get(II)D

    move-result-wide v9

    sub-double/2addr v9, v7

    .line 245
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, p1

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

.method public static isTranspose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 7

    .line 193
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-eq v0, v1, :cond_1

    return v2

    .line 197
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_5

    .line 200
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-direct {v0, v1, v3, v4}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    const/4 v1, 0x0

    .line 202
    invoke-static {p1, v0, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    .line 203
    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    move v1, v2

    .line 205
    :goto_0
    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v1, v3, :cond_4

    .line 206
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    iget-object v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_2

    return v2

    .line 208
    :cond_2
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v1

    iget-object v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p2

    if-lez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 198
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must have sorted indicies"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v2
.end method

.method public static isVector(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 220
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-gt v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isZeros(Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

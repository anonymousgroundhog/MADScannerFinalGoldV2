.class public Lorg/ejml/sparse/csc/CommonOps_FSCC;
.super Ljava/lang/Object;
.source "CommonOps_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    .line 317
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    .line 319
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p4, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 321
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p4

    .line 318
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Inconsistent matrix shapes. "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static apply(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorUnary;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 0

    .line 1822
    invoke-static {p0, p1, p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->apply(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorUnary;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorUnary;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    if-nez p2, :cond_0

    .line 1808
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1811
    invoke-virtual {p2, p0}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1814
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    .line 1815
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    invoke-interface {p1, v2}, Lorg/ejml/ops/FOperatorUnary;->apply(F)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static applyColumnIdx(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorBinaryIdx;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 4

    if-nez p2, :cond_0

    .line 1862
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1865
    invoke-virtual {p2, p0}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1868
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1869
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    :goto_1
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    .line 1870
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v1

    invoke-interface {p1, v0, v3}, Lorg/ejml/ops/FOperatorBinaryIdx;->apply(IF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public static applyRowIdx(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorBinaryIdx;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 4

    if-nez p2, :cond_0

    .line 1837
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1840
    invoke-virtual {p2, p0}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1843
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    .line 1844
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    invoke-interface {p1, v2, v3}, Lorg/ejml/ops/FOperatorBinaryIdx;->apply(IF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static changeSign(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    if-eq p0, p1, :cond_0

    .line 418
    invoke-virtual {p1, p0}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 422
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    neg-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static checkDuplicateElements(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lorg/ejml/data/FMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V

    .line 114
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->checkSortedFlag(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static checkIndicesSorted(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 56
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_3

    .line 57
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 58
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 60
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    iget v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    .line 64
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 65
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    if-lt v5, v4, :cond_2

    return v0

    .line 67
    :cond_2
    iget v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_1

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static checkSortedFlag(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->checkIndicesSorted(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkStructure(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 6

    .line 75
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    return v3

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    aget v0, v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-eq v0, v1, :cond_1

    return v3

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    return v3

    .line 81
    :cond_2
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_3

    return v3

    .line 83
    :cond_3
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v3

    if-eqz v0, :cond_4

    return v3

    :cond_4
    move v0, v3

    .line 85
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_7

    .line 86
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-le v1, v4, :cond_5

    return v3

    .line 89
    :cond_5
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v5

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v4, v0

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-le v1, v0, :cond_6

    return v3

    :cond_6
    move v0, v5

    goto :goto_0

    .line 92
    :cond_7
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->checkSortedFlag(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    .line 94
    :cond_8
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->checkDuplicateElements(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v3

    :cond_9
    return v2
.end method

.method public static concatColumns(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 9

    .line 1078
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1081
    new-instance p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 1083
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 1084
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 1086
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move v2, v0

    .line 1091
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_2

    .line 1092
    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 1093
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    .line 1095
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v8, v2

    aput v1, v7, v8

    .line 1096
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    sub-int v2, v5, v3

    add-int/2addr v2, v1

    aput v2, v7, v8

    :goto_1
    if-ge v3, v5, :cond_1

    .line 1099
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v7, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v3

    aput v7, v2, v1

    .line 1100
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v7, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v3

    aput v7, v2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    .line 1103
    :cond_2
    iget-boolean p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz p0, :cond_3

    move v0, v4

    :cond_3
    iput-boolean v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-object p2

    .line 1079
    :cond_4
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of rows must match. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static concatRows(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 9

    .line 1034
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1037
    new-instance p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 1039
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 1040
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move v1, v0

    move v2, v1

    .line 1043
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v3, :cond_3

    .line 1044
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 1045
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    .line 1047
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v1

    .line 1048
    iget-object v7, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v5

    .line 1050
    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v8, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    add-int/2addr v1, v7

    sub-int/2addr v1, v6

    .line 1052
    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v1, v8, v5

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1055
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v3

    aput v8, v1, v2

    .line 1056
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    aput v8, v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v6, v7, :cond_2

    .line 1059
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v6

    aput v3, v1, v2

    .line 1060
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_0

    .line 1063
    :cond_3
    iput-boolean v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-object p2

    .line 1035
    :cond_4
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of columns must match. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static det(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 2

    .line 1690
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/DecompositionFactory_FSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;

    move-result-object v0

    .line 1692
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    .line 1696
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1698
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;->computeDeterminant()Lorg/ejml/data/Complex_F32;

    move-result-object p0

    iget p0, p0, Lorg/ejml/data/Complex_F32;->real:F

    return p0
.end method

.method public static diag(Lorg/ejml/data/FMatrixSparseCSC;[FII)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 4

    if-nez p0, :cond_0

    .line 705
    new-instance p0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p0, p3, p3, p3}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {p0, p3, p3, p3}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 708
    :goto_0
    iput p3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 711
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, v0, 0x1

    aput v2, v1, v2

    .line 712
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v0, v1, v0

    .line 713
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int v3, p2, v0

    aget v3, p1, v3

    aput v3, v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static varargs diag([F)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    .line 688
    array-length v0, p0

    .line 689
    new-instance v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v1, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->diag(Lorg/ejml/data/FMatrixSparseCSC;[FII)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static divide(FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    if-eq p1, p2, :cond_0

    .line 403
    invoke-virtual {p2, p1}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 406
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    div-float v2, p0, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    .line 382
    invoke-virtual {p2, p0}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 384
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    div-float/2addr v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    :goto_1
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, p2, :cond_1

    .line 389
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, p2, v0

    div-float/2addr v1, p1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static divideColumns(Lorg/ejml/data/FMatrixSparseCSC;[FI)V
    .locals 6

    .line 609
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 612
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 613
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 614
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p2

    .line 616
    aget v0, p1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 618
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v4, v1

    div-float/2addr v5, v0

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 610
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array is too small. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static divideRows([FILorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 1759
    array-length v0, p0

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1762
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1763
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v1, v0

    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int v4, v0, p1

    aget v3, v3, v4

    aget v3, p0, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1760
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array is too small. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static divideRowsCols([FILorg/ejml/data/FMatrixSparseCSC;[FI)V
    .locals 7

    .line 665
    array-length v0, p0

    add-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const-string v2, "diagA is too small."

    if-lt v0, v1, :cond_3

    .line 667
    array-length v0, p3

    add-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 670
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 671
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 672
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p4

    .line 674
    aget v0, p3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 676
    iget-object v4, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v4, v1

    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    add-int/2addr v6, p1

    aget v6, p0, v6

    mul-float/2addr v6, v0

    div-float/2addr v5, v6

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 668
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F
    .locals 0

    .line 1526
    invoke-static/range {p0 .. p5}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F

    move-result p0

    return p0
.end method

.method public static duplicatesAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 1732
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->duplicatesAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 4

    .line 498
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, v0, v2

    .line 504
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v2, v0, :cond_3

    .line 505
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 4

    .line 454
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 458
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v2, v0, :cond_3

    .line 459
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static elementMin(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 4

    .line 475
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 480
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, v0, v2

    .line 481
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v2, v0, :cond_3

    .line 482
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 4

    .line 433
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 437
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v2, v0, :cond_3

    .line 438
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2

    .line 545
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 547
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    .line 549
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 546
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "All inputs must have the same number of rows and columns. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static elementSum(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 3

    .line 521
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 525
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v2, :cond_1

    .line 526
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static extract(Lorg/ejml/data/FMatrixSparseCSC;IIIILorg/ejml/data/FMatrixSparseCSC;II)V
    .locals 7

    if-lt p2, p1, :cond_6

    if-ltz p1, :cond_6

    .line 1197
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->getNumRows()I

    move-result v0

    if-gt p2, v0, :cond_6

    if-lt p4, p3, :cond_5

    if-ltz p3, :cond_5

    .line 1199
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->getNumCols()I

    move-result v0

    if-gt p4, v0, :cond_5

    sub-int v0, p4, p3

    sub-int v1, p2, p1

    add-int/2addr v1, p6

    .line 1205
    invoke-virtual {p5}, Lorg/ejml/data/FMatrixSparseCSC;->getNumRows()I

    move-result v2

    const-string v3, " < "

    if-gt v1, v2, :cond_4

    add-int/2addr v0, p7

    .line 1207
    invoke-virtual {p5}, Lorg/ejml/data/FMatrixSparseCSC;->getNumCols()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 1210
    invoke-static {p5, p6, v1, p7, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->zero(Lorg/ejml/data/FMatrixSparseCSC;IIII)V

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_2

    .line 1217
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1218
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1221
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    sub-int/2addr v4, p1

    add-int/2addr v4, p6

    sub-int v5, v0, p3

    add-int/2addr v5, p7

    .line 1223
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    invoke-virtual {p5, v4, v5, v6}, Lorg/ejml/data/FMatrixSparseCSC;->set(IIF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    return-void

    .line 1208
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst is too small in columns. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/ejml/data/FMatrixSparseCSC;->getNumCols()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1206
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst is too small in rows. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/ejml/data/FMatrixSparseCSC;->getNumRows()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1200
    :cond_5
    new-instance p1, Lorg/ejml/MatrixDimensionException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "srcX1 < srcX0 || srcX0 < 0 || srcX1 > src.numCols. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1198
    :cond_6
    new-instance p1, Lorg/ejml/MatrixDimensionException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "srcY1 < srcY0 || srcY0 < 0 || srcY1 > src.numRows. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1119
    new-instance p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 1121
    :cond_0
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p1

    .line 1122
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/2addr p1, v0

    aget p1, v2, p1

    .line 1124
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, v2, v0, p1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 1125
    iput p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 1127
    iget-object p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, p1, v2

    .line 1128
    iget-object p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, p1, v0

    .line 1130
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    iget-object p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 4

    .line 769
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 771
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq v1, v2, :cond_1

    .line 772
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 776
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_get(II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 729
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 731
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isVector(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 732
    invoke-virtual {p1, v0, v2, v0}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 733
    :cond_0
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    mul-int/2addr v1, v4

    if-eq v1, v0, :cond_1

    .line 734
    invoke-virtual {p1, v0, v2, v0}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {p1, v0, v3}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 739
    :goto_0
    iput v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 740
    iput-boolean v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 742
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-eq v1, v2, :cond_2

    .line 743
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v3, v1, v3

    .line 744
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v0, v1, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 746
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_get(II)F

    move-result v2

    aput v2, v1, v3

    .line 747
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 750
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v3, v1, v3

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_3

    .line 752
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_get(II)F

    move-result v4

    aput v4, v2, v1

    .line 753
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v3, v2, v1

    .line 754
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static extractRows(Lorg/ejml/data/FMatrixSparseCSC;IILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    if-nez p3, :cond_0

    .line 1149
    new-instance p3, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v0, 0x1

    invoke-direct {p3, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    :cond_0
    sub-int v0, p2, p1

    .line 1151
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p3, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    .line 1155
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1156
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1157
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1160
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    .line 1162
    iget-object v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v5, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    aput v6, v4, v5

    .line 1163
    iget-object v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v5, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    sub-int/2addr v3, p1

    aput v3, v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    :cond_2
    iget-object v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v0

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method public static fill(Lorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 7

    .line 1241
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1242
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 1243
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    .line 1244
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_1

    .line 1245
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 1246
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v4, v2

    aput v4, v3, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    .line 1249
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v6, v3, v2

    aput v6, v5, v3

    .line 1250
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput p1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1253
    :cond_1
    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 p1, 0x1

    .line 1254
    iput-boolean p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public static identity(I)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 0

    .line 327
    invoke-static {p0, p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->identity(II)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static identity(II)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2

    .line 331
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    new-instance v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v1, p0, p1, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 333
    invoke-static {v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->setIdentity(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-object v1
.end method

.method public static invert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 1660
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_2

    .line 1662
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 1665
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1668
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1669
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    .line 1671
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->identity(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v1

    .line 1674
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1677
    :cond_1
    invoke-interface {v0, v1, p1}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0

    .line 1661
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maxAbsCols(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 7

    const/4 v0, 0x1

    .line 561
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 563
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 564
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 565
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 569
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v5, v4

    if-lez v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_1
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static maxCols(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    const/4 v0, 0x1

    .line 1333
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1335
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1336
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1337
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int v4, v2, v1

    .line 1340
    iget v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v4, v5, :cond_0

    const v4, -0x800001

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1342
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1347
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static maxRows(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 8

    .line 1438
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 1439
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 1441
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const v3, -0x800001

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    move v0, v4

    .line 1443
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 1444
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    .line 1445
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1448
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v2

    .line 1449
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v2

    .line 1450
    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v7, v7, v5

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 1451
    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v6, v7, v5

    .line 1453
    :cond_1
    aget v6, p2, v5

    add-int/2addr v6, v1

    aput v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge v4, v0, :cond_4

    .line 1459
    aget v0, p2, v4

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_3

    .line 1460
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v4

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1461
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v1, v0, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static minCols(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    const/4 v0, 0x1

    .line 1301
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1303
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1304
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1305
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int v4, v2, v1

    .line 1308
    iget v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v4, v5, :cond_0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1310
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1315
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static minRows(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 8

    .line 1394
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 1395
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 1397
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    move v0, v4

    .line 1399
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 1400
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    .line 1401
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1404
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v2

    .line 1405
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v2

    .line 1406
    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v7, v7, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_1

    .line 1407
    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v6, v7, v5

    .line 1409
    :cond_1
    aget v6, p2, v5

    add-int/2addr v6, v1

    aput v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1413
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge v4, v0, :cond_4

    .line 1415
    aget v0, p2, v4

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_3

    .line 1416
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v4

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1417
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v1, v0, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 167
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 169
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-object p2

    .line 166
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, p2, v0, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2

    .line 148
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 150
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    .line 152
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 149
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Inconsistent matrix shapes. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 178
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 180
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 183
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void

    .line 181
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 3

    .line 213
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 215
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 219
    new-instance p3, Lorg/ejml/data/FGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/FGrowArray;-><init>()V

    .line 221
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V

    return-void

    .line 216
    :cond_1
    new-instance p3, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 214
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 282
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 284
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 287
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void

    .line 285
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 3

    .line 250
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 252
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 256
    new-instance p3, Lorg/ejml/data/FGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/FGrowArray;-><init>()V

    .line 258
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V

    return-void

    .line 253
    :cond_1
    new-instance p3, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 251
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multColumns(Lorg/ejml/data/FMatrixSparseCSC;[FI)V
    .locals 6

    .line 586
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 589
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 590
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 591
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p2

    .line 593
    aget v0, p1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 595
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v4, v1

    mul-float/2addr v5, v0

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 587
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array is too small. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multRows([FILorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 1743
    array-length v0, p0

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1746
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1747
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v1, v0

    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int v4, v0, p1

    aget v3, v3, v4

    aget v3, p0, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1744
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array is too small. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v0, Lorg/ejml/dense/row/decomposition/eig/symm/dHF/yIeglf;->ohqwhmD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static multRowsCols([FILorg/ejml/data/FMatrixSparseCSC;[FI)V
    .locals 7

    .line 636
    array-length v0, p0

    add-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const-string v2, "diagA is too small."

    if-lt v0, v1, :cond_3

    .line 638
    array-length v0, p3

    add-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 641
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 642
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 643
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p4

    .line 645
    aget v0, p3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 647
    iget-object v4, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v4, v1

    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    add-int/2addr v6, p1

    aget v6, p0, v6

    mul-float/2addr v6, v0

    mul-float/2addr v5, v6

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 639
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 195
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 199
    new-instance p3, Lorg/ejml/data/FGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/FGrowArray;-><init>()V

    .line 201
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 203
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 196
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Inconsistent matrix shapes. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 269
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 271
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 273
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-object p2

    .line 270
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 233
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 235
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 238
    new-instance p3, Lorg/ejml/data/FGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/FGrowArray;-><init>()V

    .line 240
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 234
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Inconsistent matrix shapes. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static permutationInverse([I[II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 848
    aget v1, p0, v0

    aput v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permutationInverse([II)[I
    .locals 1

    .line 853
    new-array v0, p1, [I

    .line 854
    invoke-static {p0, v0, p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permutationInverse([I[II)V

    return-object v0
.end method

.method public static permutationMatrix([IZILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 4

    if-nez p3, :cond_0

    .line 791
    new-instance p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p3, p2, p2, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {p3, p2, p2, p2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    :goto_0
    const/4 v0, 0x1

    .line 794
    iput-boolean v0, p3, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 795
    iput p2, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_1
    if-ge v1, p2, :cond_2

    .line 800
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v2

    .line 801
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, p0, v1

    aput v1, p1, v3

    .line 802
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput v0, p1, v1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 806
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v2

    .line 807
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, p0, v1

    aput v3, p1, v1

    .line 808
    iget-object p1, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput v0, p1, v1

    move v1, v2

    goto :goto_2

    :cond_2
    return-object p3
.end method

.method public static permutationVector(Lorg/ejml/data/FMatrixSparseCSC;[I)V
    .locals 4

    .line 822
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_4

    .line 824
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_3

    .line 826
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    .line 830
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 833
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ne v2, v3, :cond_0

    .line 836
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    aput v1, p1, v2

    move v1, v3

    goto :goto_0

    .line 834
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in a column"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 827
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "vector is too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 825
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected N non-zero elements in permutation matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 823
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Expected a square matrix"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static permute([ILorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FMatrixSparseCSC;)V
    .locals 11

    if-eqz p0, :cond_1

    .line 899
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    array-length v1, p0

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rowInv permutation vector must have at least as many elements as input has columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 901
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    array-length v1, p2

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 902
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permCol permutation vector must have at least as many elements as input has rows"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 904
    :cond_3
    :goto_1
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p3, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    .line 905
    iput-boolean v0, p3, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 906
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iput v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 908
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    move v2, v0

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_7

    if-eqz p2, :cond_4

    .line 913
    aget v4, p2, v2

    goto :goto_3

    :cond_4
    move v4, v2

    .line 914
    :goto_3
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v4

    .line 915
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    sub-int/2addr v4, v5

    .line 917
    iget-object v6, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v8, v2

    add-int/2addr v2, v4

    aput v2, v6, v7

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_6

    .line 920
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v5

    .line 921
    iget-object v8, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    if-eqz p0, :cond_5

    aget v6, p0, v6

    :cond_5
    aput v6, v8, v3

    .line 922
    iget-object v6, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int/lit8 v10, v5, 0x1

    aget v5, v9, v5

    aput v5, v6, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v8

    move v5, v10

    goto :goto_4

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static permute([I[F[FI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 937
    aget v1, p0, v0

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permuteInv([I[F[FI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 951
    aget v1, p0, v0

    aget v2, p1, v0

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permuteRowInv([ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 867
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 870
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 871
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iput v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 874
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 878
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_1

    .line 879
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 882
    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    aget v4, p0, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void

    .line 868
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permutation vector must have at least as many elements as input has rows"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static permuteSymmetric(Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 10

    .line 971
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_a

    .line 973
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    array-length v1, p1

    if-ne v0, v1, :cond_9

    .line 976
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 978
    invoke-static {p3, v0}, Lorg/ejml/UtilEjml;->adjustClear(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    const/4 v1, 0x0

    .line 980
    invoke-virtual {p2, v0, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 981
    iput-boolean v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 982
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 986
    aget v3, p1, v2

    .line 987
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    .line 988
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    :goto_1
    if-ge v4, v5, :cond_2

    .line 991
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v4

    if-le v7, v2, :cond_0

    goto :goto_3

    .line 994
    :cond_0
    aget v7, p1, v7

    if-le v7, v3, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    .line 996
    :goto_2
    aget v8, p3, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, p3, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_0

    .line 1001
    :cond_3
    invoke-virtual {p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    .line 1002
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v2, v1, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v1, v0, :cond_8

    .line 1006
    aget v2, p1, v1

    .line 1007
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 1008
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    :goto_5
    if-ge v3, v4, :cond_7

    .line 1011
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    if-le v6, v1, :cond_4

    goto :goto_8

    .line 1015
    :cond_4
    aget v6, p1, v6

    if-le v6, v2, :cond_5

    move v7, v6

    goto :goto_6

    :cond_5
    move v7, v2

    .line 1017
    :goto_6
    aget v8, p3, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, p3, v7

    .line 1018
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    if-ge v6, v2, :cond_6

    goto :goto_7

    :cond_6
    move v6, v2

    :goto_7
    aput v6, v7, v8

    .line 1019
    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v3

    aput v7, v6, v8

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    return-void

    .line 974
    :cond_9
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Number of column in input must match length of permInv"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 972
    :cond_a
    new-instance p1, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Input must be a square matrix. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static reduceColumnWise(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/ops/FOperatorBinary;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1922
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-direct {p3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1924
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    .line 1927
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1928
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1929
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    move v4, p1

    :goto_2
    if-ge v1, v2, :cond_1

    .line 1933
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    invoke-interface {p2, v4, v5}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1936
    :cond_1
    iget-object v1, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p3
.end method

.method public static reduceRowWise(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/ops/FOperatorBinary;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1961
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-direct {p3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1963
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 1966
    :goto_0
    iget-object v0, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    const/4 p1, 0x0

    .line 1968
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge p1, v0, :cond_2

    .line 1969
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 1970
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget v1, v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1973
    iget-object v2, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    iget-object v4, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v0

    aget v4, v4, v5

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v0

    invoke-interface {p2, v4, v5}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p3
.end method

.method public static reduceScalar(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/ops/FOperatorBinary;)F
    .locals 2

    const/4 v0, 0x0

    .line 1893
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1894
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, v1, v0

    invoke-interface {p2, p1, v1}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static reduceScalar(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FOperatorBinary;)F
    .locals 1

    const/4 v0, 0x0

    .line 1901
    invoke-static {p0, v0, p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->reduceScalar(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/ops/FOperatorBinary;)F

    move-result p0

    return p0
.end method

.method public static removeZeros(Lorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 0

    .line 1720
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->removeZeros(Lorg/ejml/data/FMatrixSparseCSC;F)V

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 0

    .line 1709
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->removeZeros(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)V

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    .line 361
    invoke-virtual {p2, p1}, Lorg/ejml/data/FMatrixSparseCSC;->copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 363
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 364
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v0

    mul-float/2addr v2, p0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    :goto_1
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 368
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v1, v0

    mul-float/2addr v2, p0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 4

    .line 338
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 340
    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 342
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0, v3}, Ljava/util/Arrays;->fill([FIIF)V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_0

    .line 344
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    .line 345
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v3, v1, -0x1

    aput v3, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 347
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v1, v2, :cond_1

    .line 348
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 1559
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 1561
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-le v0, v1, :cond_0

    .line 1562
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;->qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    goto :goto_0

    .line 1564
    :cond_0
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1568
    :goto_0
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1569
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    .line 1571
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesB()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1572
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 1575
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 1578
    :cond_3
    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 1612
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(II)V

    .line 1614
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-le v0, v1, :cond_0

    .line 1615
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;->qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    goto :goto_0

    .line 1617
    :cond_0
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1621
    :goto_0
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1622
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    .line 1624
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesB()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1625
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 1628
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 1631
    :cond_3
    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static sumCols(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1270
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1272
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    .line 1275
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1276
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1277
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    .line 1281
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1283
    :cond_1
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static sumRows(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 1365
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 1367
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1369
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v3, v0, :cond_1

    .line 1370
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v3

    .line 1371
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v3, 0x1

    aget v1, v1, v3

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1374
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    aget v5, v2, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v0

    add-float/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static symmLowerToFull(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 299
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->symmLowerToFull(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public static trace(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 7

    .line 1780
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1782
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 1783
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1786
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    if-ne v6, v2, :cond_0

    .line 1787
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v3

    add-float/2addr v1, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v2, v5

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    .line 126
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixSparseCSC;III)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 127
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-object p1
.end method

.method public static zero(Lorg/ejml/data/FMatrixSparseCSC;IIII)V
    .locals 7

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_5

    .line 1482
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p4

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, p4, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1484
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    if-lez v3, :cond_1

    .line 1490
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v6, v0, v3

    aput v4, v5, v6

    .line 1491
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v0

    aput v5, v4, v6

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_4

    .line 1500
    :goto_3
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v0, :cond_3

    .line 1501
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v4, v1, v3

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    aput v5, v0, v4

    .line 1502
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    aput v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1504
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 1506
    :goto_4
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v2, v0, :cond_4

    .line 1507
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v0, v2

    sub-int/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

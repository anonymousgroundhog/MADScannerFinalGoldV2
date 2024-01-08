.class public Lorg/ejml/sparse/csc/CommonOps_DSCC;
.super Ljava/lang/Object;
.source "CommonOps_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 10

    move-object v2, p2

    move-object v5, p5

    .line 315
    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v5, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, v5, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    .line 317
    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v3, p6

    invoke-static {v3, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/ejml/data/DMatrixSparseCSC;

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, v9

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 319
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object v9

    .line 316
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent matrix shapes. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static apply(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorUnary;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 0

    .line 1820
    invoke-static {p0, p1, p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->apply(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorUnary;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorUnary;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 4

    if-nez p2, :cond_0

    .line 1806
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1809
    invoke-virtual {p2, p0}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1812
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    .line 1813
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v2, v3}, Lorg/ejml/ops/DOperatorUnary;->apply(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static applyColumnIdx(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorBinaryIdx;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 5

    if-nez p2, :cond_0

    .line 1860
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1863
    invoke-virtual {p2, p0}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1866
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1867
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    :goto_1
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    .line 1868
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v1

    invoke-interface {p1, v0, v3, v4}, Lorg/ejml/ops/DOperatorBinaryIdx;->apply(ID)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public static applyRowIdx(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorBinaryIdx;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 5

    if-nez p2, :cond_0

    .line 1835
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p2

    :cond_0
    if-eq p0, p2, :cond_1

    .line 1838
    invoke-virtual {p2, p0}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    :cond_1
    const/4 v0, 0x0

    .line 1841
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    .line 1842
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v0

    invoke-interface {p1, v2, v3, v4}, Lorg/ejml/ops/DOperatorBinaryIdx;->apply(ID)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static changeSign(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 4

    if-eq p0, p1, :cond_0

    .line 416
    invoke-virtual {p1, p0}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 420
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    neg-double v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static checkDuplicateElements(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lorg/ejml/data/DMatrixSparseCSC;->sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V

    .line 112
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->checkSortedFlag(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static checkIndicesSorted(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 54
    :cond_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_3

    .line 55
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 56
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 58
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    .line 62
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 63
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    if-lt v5, v4, :cond_2

    return v0

    .line 65
    :cond_2
    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_1

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static checkSortedFlag(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->checkIndicesSorted(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkStructure(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 6

    .line 73
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    return v3

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    aget v0, v0, v1

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-eq v0, v1, :cond_1

    return v3

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_2

    return v3

    .line 79
    :cond_2
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_3

    return v3

    .line 81
    :cond_3
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v3

    if-eqz v0, :cond_4

    return v3

    :cond_4
    move v0, v3

    .line 83
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_7

    .line 84
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-le v1, v4, :cond_5

    return v3

    .line 87
    :cond_5
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v5

    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v4, v0

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-le v1, v0, :cond_6

    return v3

    :cond_6
    move v0, v5

    goto :goto_0

    .line 90
    :cond_7
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->checkSortedFlag(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    .line 92
    :cond_8
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->checkDuplicateElements(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v3

    :cond_9
    return v2
.end method

.method public static concatColumns(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 9

    .line 1076
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1079
    new-instance p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 1081
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 1082
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 1084
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v2, v0

    .line 1089
    :goto_0
    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_2

    .line 1090
    iget-object v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 1091
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    .line 1093
    iget-object v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v8, v2

    aput v1, v7, v8

    .line 1094
    iget-object v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    sub-int v2, v5, v3

    add-int/2addr v2, v1

    aput v2, v7, v8

    :goto_1
    if-ge v3, v5, :cond_1

    .line 1097
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v3

    aput v7, v2, v1

    .line 1098
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v3

    aput-wide v7, v2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    .line 1101
    :cond_2
    iget-boolean p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz p0, :cond_3

    move v0, v4

    :cond_3
    iput-boolean v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-object p2

    .line 1077
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

.method public static concatRows(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 10

    .line 1032
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1035
    new-instance p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 1037
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 1038
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v1, v0

    move v2, v1

    .line 1041
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v1, v3, :cond_3

    .line 1042
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 1043
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    .line 1045
    iget-object v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v1

    .line 1046
    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v5

    .line 1048
    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v8, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    add-int/2addr v1, v7

    sub-int/2addr v1, v6

    .line 1050
    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v1, v8, v5

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1053
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v3

    aput-wide v8, v1, v2

    .line 1054
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    aput v8, v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v6, v7, :cond_2

    .line 1057
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v6

    aput-wide v3, v1, v2

    .line 1058
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_0

    .line 1061
    :cond_3
    iput-boolean v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-object p2

    .line 1033
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

.method public static det(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 1688
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/DecompositionFactory_DSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;

    move-result-object v0

    .line 1690
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1691
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    .line 1694
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1696
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;->computeDeterminant()Lorg/ejml/data/Complex_F64;

    move-result-object p0

    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    return-wide v0
.end method

.method public static diag(Lorg/ejml/data/DMatrixSparseCSC;[DII)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 5

    if-nez p0, :cond_0

    .line 703
    new-instance p0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p0, p3, p3, p3}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0, p3, p3, p3}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 706
    :goto_0
    iput p3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 709
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, v0, 0x1

    aput v2, v1, v2

    .line 710
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v0, v1, v0

    .line 711
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int v3, p2, v0

    aget-wide v3, p1, v3

    aput-wide v3, v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static varargs diag([D)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    .line 686
    array-length v0, p0

    .line 687
    new-instance v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v1, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->diag(Lorg/ejml/data/DMatrixSparseCSC;[DII)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static divide(DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 4

    if-eq p2, p3, :cond_0

    .line 401
    invoke-virtual {p3, p2}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    div-double v2, p0, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p3, :cond_0

    .line 380
    invoke-virtual {p3, p0}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 382
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 383
    iget-object v1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    div-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    :goto_1
    iget p3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, p3, :cond_1

    .line 387
    iget-object p3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v1, p3, v0

    div-double/2addr v1, p1

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static divideColumns(Lorg/ejml/data/DMatrixSparseCSC;[DI)V
    .locals 8

    .line 607
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 610
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 612
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p2

    .line 614
    aget-wide v4, p1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 616
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v0, v1

    div-double/2addr v6, v4

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 608
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array is too small. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/multibindings/KN/fYvESXZ;->KwGBN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static divideRows([DILorg/ejml/data/DMatrixSparseCSC;)V
    .locals 6

    .line 1757
    array-length v0, p0

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1760
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1761
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v1, v0

    iget-object v4, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int v5, v0, p1

    aget v4, v4, v5

    aget-wide v4, p0, v4

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1758
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

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static divideRowsCols([DILorg/ejml/data/DMatrixSparseCSC;[DI)V
    .locals 10

    .line 663
    array-length v0, p0

    add-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-string v2, "diagA is too small."

    if-lt v0, v1, :cond_3

    .line 665
    array-length v0, p3

    add-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 668
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 669
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 670
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p4

    .line 672
    aget-wide v4, p3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 674
    iget-object v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v0, v1

    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v1

    add-int/2addr v8, p1

    aget-wide v8, p0, v8

    mul-double/2addr v8, v4

    div-double/2addr v6, v8

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 666
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 664
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D
    .locals 0

    .line 1524
    invoke-static/range {p0 .. p5}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static duplicatesAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 1730
    invoke-static {p0, p1}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->duplicatesAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 6

    .line 496
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v1, v0, v3

    .line 502
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v3, v0, :cond_3

    .line 503
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v3

    cmpl-double v0, v4, v1

    if-lez v0, :cond_2

    move-wide v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 6

    .line 452
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 456
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v3, v0, :cond_3

    .line 457
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v0, v4, v1

    if-lez v0, :cond_2

    move-wide v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static elementMin(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 6

    .line 473
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v1, v0, v3

    .line 479
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v3, v0, :cond_3

    .line 480
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v3

    cmpg-double v0, v4, v1

    if-gez v0, :cond_2

    move-wide v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 6

    .line 431
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->isFull()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 435
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v3, v0, :cond_3

    .line 436
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v0, v4, v1

    if-gez v0, :cond_2

    move-wide v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    .line 543
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 545
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    .line 547
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 544
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

.method public static elementSum(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 5

    .line 519
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v3, :cond_1

    .line 524
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v0

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static extract(Lorg/ejml/data/DMatrixSparseCSC;IIIILorg/ejml/data/DMatrixSparseCSC;II)V
    .locals 8

    if-lt p2, p1, :cond_6

    if-ltz p1, :cond_6

    .line 1195
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->getNumRows()I

    move-result v0

    if-gt p2, v0, :cond_6

    if-lt p4, p3, :cond_5

    if-ltz p3, :cond_5

    .line 1197
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->getNumCols()I

    move-result v0

    if-gt p4, v0, :cond_5

    sub-int v0, p4, p3

    sub-int v1, p2, p1

    add-int/2addr v1, p6

    .line 1203
    invoke-virtual {p5}, Lorg/ejml/data/DMatrixSparseCSC;->getNumRows()I

    move-result v2

    const-string v3, " < "

    if-gt v1, v2, :cond_4

    add-int/2addr v0, p7

    .line 1205
    invoke-virtual {p5}, Lorg/ejml/data/DMatrixSparseCSC;->getNumCols()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 1208
    invoke-static {p5, p6, v1, p7, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->zero(Lorg/ejml/data/DMatrixSparseCSC;IIII)V

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_2

    .line 1215
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1216
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1219
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    sub-int/2addr v4, p1

    add-int/2addr v4, p6

    sub-int v5, v0, p3

    add-int/2addr v5, p7

    .line 1221
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    invoke-virtual {p5, v4, v5, v6, v7}, Lorg/ejml/data/DMatrixSparseCSC;->set(IID)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    return-void

    .line 1206
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst is too small in columns. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/ejml/data/DMatrixSparseCSC;->getNumCols()I

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

    .line 1204
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dst is too small in rows. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/ejml/data/DMatrixSparseCSC;->getNumRows()I

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

    .line 1198
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

    .line 1196
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

.method public static extractColumn(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1117
    new-instance p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p2, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 1119
    :cond_0
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p1

    .line 1120
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/2addr p1, v0

    aget p1, v2, p1

    .line 1122
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, v2, v0, p1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 1123
    iput p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 1125
    iget-object p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, p1, v2

    .line 1126
    iget-object p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, p1, v0

    .line 1128
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    iget-object p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 5

    .line 767
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 769
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-eq v1, v2, :cond_1

    .line 770
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 774
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 6

    .line 727
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 729
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isVector(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {p1, v0, v2, v0}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 731
    :cond_0
    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    mul-int/2addr v1, v4

    if-eq v1, v0, :cond_1

    .line 732
    invoke-virtual {p1, v0, v2, v0}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p1, v0, v3}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 737
    :goto_0
    iput v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 738
    iput-boolean v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 740
    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-eq v1, v2, :cond_2

    .line 741
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v3, v1, v3

    .line 742
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v0, v1, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 744
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 745
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 748
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v3, v1, v3

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_3

    .line 750
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 751
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v3, v2, v1

    .line 752
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static extractRows(Lorg/ejml/data/DMatrixSparseCSC;IILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8

    if-nez p3, :cond_0

    .line 1147
    new-instance p3, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v0, 0x1

    invoke-direct {p3, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    :cond_0
    sub-int v0, p2, p1

    .line 1149
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p3, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    .line 1153
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1154
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1155
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1158
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    .line 1160
    iget-object v4, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v5, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    aput-wide v6, v4, v5

    .line 1161
    iget-object v4, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v5, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    sub-int/2addr v3, p1

    aput v3, v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1164
    :cond_2
    iget-object v1, p3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v0

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method public static fill(Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 7

    .line 1239
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1240
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 1241
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    .line 1242
    :cond_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_1

    .line 1243
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 1244
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v4, v2

    aput v4, v3, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    .line 1247
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v6, v3, v2

    aput v6, v5, v3

    .line 1248
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide p1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 p1, 0x1

    .line 1252
    iput-boolean p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public static identity(I)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 0

    .line 325
    invoke-static {p0, p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->identity(II)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static identity(II)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    .line 329
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 330
    new-instance v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v1, p0, p1, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 331
    invoke-static {v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->setIdentity(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-object v1
.end method

.method public static invert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 1658
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_2

    .line 1660
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1663
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1666
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    .line 1669
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    .line 1672
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1675
    :cond_1
    invoke-interface {v0, v1, p1}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0

    .line 1659
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maxAbsCols(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    const/4 v0, 0x1

    .line 559
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 561
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 562
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 563
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const-wide/16 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 567
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static maxCols(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    const/4 v0, 0x1

    .line 1331
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1333
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1334
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1335
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int v4, v2, v1

    .line 1338
    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v4, v5, :cond_0

    const-wide v4, -0x10000000000001L

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1340
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    move-wide v4, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1345
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static maxRows(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    .line 1436
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 1437
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 1439
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-wide v3, -0x10000000000001L

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    move v0, v5

    .line 1441
    :cond_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 1442
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    .line 1443
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1446
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 1447
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v2

    .line 1448
    iget-object v8, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v4

    cmpg-double v8, v8, v6

    if-gez v8, :cond_1

    .line 1449
    iget-object v8, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v6, v8, v4

    .line 1451
    :cond_1
    aget v6, p2, v4

    add-int/2addr v6, v1

    aput v6, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v5, v0, :cond_4

    .line 1457
    aget v0, p2, v5

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_3

    .line 1458
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v5

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 1459
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v2, v0, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static minCols(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    const/4 v0, 0x1

    .line 1299
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1301
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 1302
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1303
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int v4, v2, v1

    .line 1306
    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v4, v5, :cond_0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1308
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    move-wide v4, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1313
    :cond_2
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static minRows(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    .line 1392
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 1393
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 1395
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    move v0, v5

    .line 1397
    :cond_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 1398
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    .line 1399
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1402
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 1403
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v2

    .line 1404
    iget-object v8, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v4

    cmpl-double v8, v8, v6

    if-lez v8, :cond_1

    .line 1405
    iget-object v8, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v6, v8, v4

    .line 1407
    :cond_1
    aget v6, p2, v4

    add-int/2addr v6, v1

    aput v6, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1411
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v5, v0, :cond_4

    .line 1413
    aget v0, p2, v5

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-eq v0, v1, :cond_3

    .line 1414
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v5

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 1415
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v2, v0, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 163
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 165
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 167
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-object p2

    .line 164
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

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, p2, v0, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    .line 146
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 148
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    .line 150
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 147
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

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 176
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 178
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void

    .line 179
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

    .line 177
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

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 3

    .line 211
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 213
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 217
    new-instance p3, Lorg/ejml/data/DGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/DGrowArray;-><init>()V

    .line 219
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V

    return-void

    .line 214
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

    .line 212
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

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 280
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 282
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 285
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void

    .line 283
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

    .line 281
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

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 3

    .line 248
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 250
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 254
    new-instance p3, Lorg/ejml/data/DGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/DGrowArray;-><init>()V

    .line 256
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V

    return-void

    .line 251
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

    .line 249
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

.method public static multColumns(Lorg/ejml/data/DMatrixSparseCSC;[DI)V
    .locals 8

    .line 584
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 587
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 588
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 589
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p2

    .line 591
    aget-wide v4, p1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 593
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v0, v1

    mul-double/2addr v6, v4

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 585
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

    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multRows([DILorg/ejml/data/DMatrixSparseCSC;)V
    .locals 6

    .line 1741
    array-length v0, p0

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1744
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1745
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v1, v0

    iget-object v4, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int v5, v0, p1

    aget v4, v4, v5

    aget-wide v4, p0, v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1742
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

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static multRowsCols([DILorg/ejml/data/DMatrixSparseCSC;[DI)V
    .locals 10

    .line 634
    array-length v0, p0

    add-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-string v2, "diagA is too small."

    if-lt v0, v1, :cond_3

    .line 636
    array-length v0, p3

    add-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 639
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 640
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 641
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v0, p4

    .line 643
    aget-wide v4, p3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 645
    iget-object v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v0, v1

    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v1

    add-int/2addr v8, p1

    aget-wide v8, p0, v8

    mul-double/2addr v8, v4

    mul-double/2addr v6, v8

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 637
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 635
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 193
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 197
    new-instance p3, Lorg/ejml/data/DGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/DGrowArray;-><init>()V

    .line 199
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 201
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 194
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

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 267
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 269
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 271
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-object p2

    .line 268
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

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 231
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 233
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 236
    new-instance p3, Lorg/ejml/data/DGrowArray;

    invoke-direct {p3}, Lorg/ejml/data/DGrowArray;-><init>()V

    .line 238
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 232
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

    .line 846
    aget v1, p0, v0

    aput v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permutationInverse([II)[I
    .locals 1

    .line 851
    new-array v0, p1, [I

    .line 852
    invoke-static {p0, v0, p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permutationInverse([I[II)V

    return-object v0
.end method

.method public static permutationMatrix([IZILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 5

    if-nez p3, :cond_0

    .line 789
    new-instance p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p3, p2, p2, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {p3, p2, p2, p2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    :goto_0
    const/4 v0, 0x1

    .line 792
    iput-boolean v0, p3, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 793
    iput p2, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 798
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v2, 0x1

    aput v3, p1, v3

    .line 799
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, p0, v2

    aput v2, p1, v4

    .line 800
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide v0, p1, v2

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, p2, :cond_2

    .line 804
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v2, 0x1

    aput v3, p1, v3

    .line 805
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, p0, v2

    aput v4, p1, v2

    .line 806
    iget-object p1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide v0, p1, v2

    move v2, v3

    goto :goto_2

    :cond_2
    return-object p3
.end method

.method public static permutationVector(Lorg/ejml/data/DMatrixSparseCSC;[I)V
    .locals 4

    .line 820
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_4

    .line 822
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_3

    .line 824
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    .line 828
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 831
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ne v2, v3, :cond_0

    .line 834
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    aput v1, p1, v2

    move v1, v3

    goto :goto_0

    .line 832
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in a column"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 825
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->xZd:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 823
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected N non-zero elements in permutation matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 821
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Expected a square matrix"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static permute([ILorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DMatrixSparseCSC;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_1

    .line 897
    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    array-length v5, v0

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rowInv permutation vector must have at least as many elements as input has columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 899
    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    array-length v5, v2

    if-gt v4, v5, :cond_2

    goto :goto_1

    .line 900
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permCol permutation vector must have at least as many elements as input has rows"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_3
    :goto_1
    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {v3, v4, v5, v6}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v4, 0x0

    .line 903
    iput-boolean v4, v3, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 904
    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iput v5, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 906
    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move v6, v4

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_7

    if-eqz v2, :cond_4

    .line 911
    aget v8, v2, v6

    goto :goto_3

    :cond_4
    move v8, v6

    .line 912
    :goto_3
    iget-object v9, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v8

    .line 913
    iget-object v10, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    sub-int/2addr v8, v9

    .line 915
    iget-object v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v11, v6, 0x1

    iget-object v12, v3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v12, v6

    add-int/2addr v6, v8

    aput v6, v10, v11

    move v6, v4

    :goto_4
    if-ge v6, v8, :cond_6

    .line 918
    iget-object v10, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v9

    .line 919
    iget-object v12, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    if-eqz v0, :cond_5

    aget v10, v0, v10

    :cond_5
    aput v10, v12, v7

    .line 920
    iget-object v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v12, v7, 0x1

    iget-object v13, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v14, v9, 0x1

    aget-wide v15, v13, v9

    aput-wide v15, v10, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v12

    move v9, v14

    goto :goto_4

    :cond_6
    move v6, v11

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static permute([I[D[DI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 935
    aget v1, p0, v0

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permuteInv([I[D[DI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 949
    aget v1, p0, v0

    aget-wide v2, p1, v0

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static permuteRowInv([ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 5

    .line 865
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 868
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 869
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iput v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 872
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 876
    :goto_0
    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_1

    .line 877
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 880
    iget-object v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

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

    .line 866
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permutation vector must have at least as many elements as input has rows"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static permuteSymmetric(Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 11

    .line 969
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_a

    .line 971
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    array-length v1, p1

    if-ne v0, v1, :cond_9

    .line 974
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 976
    invoke-static {p3, v0}, Lorg/ejml/UtilEjml;->adjustClear(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    const/4 v1, 0x0

    .line 978
    invoke-virtual {p2, v0, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 979
    iput-boolean v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 980
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 984
    aget v3, p1, v2

    .line 985
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    .line 986
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    :goto_1
    if-ge v4, v5, :cond_2

    .line 989
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v4

    if-le v7, v2, :cond_0

    goto :goto_3

    .line 992
    :cond_0
    aget v7, p1, v7

    if-le v7, v3, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    .line 994
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

    .line 999
    :cond_3
    invoke-virtual {p2, p3}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    .line 1000
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v2, v1, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v1, v0, :cond_8

    .line 1004
    aget v2, p1, v1

    .line 1005
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 1006
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    :goto_5
    if-ge v3, v4, :cond_7

    .line 1009
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    if-le v6, v1, :cond_4

    goto :goto_8

    .line 1013
    :cond_4
    aget v6, p1, v6

    if-le v6, v2, :cond_5

    move v7, v6

    goto :goto_6

    :cond_5
    move v7, v2

    .line 1015
    :goto_6
    aget v8, p3, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, p3, v7

    .line 1016
    iget-object v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    if-ge v6, v2, :cond_6

    goto :goto_7

    :cond_6
    move v6, v2

    :goto_7
    aput v6, v7, v8

    .line 1017
    iget-object v6, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v7, v3

    aput-wide v9, v6, v8

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    return-void

    .line 972
    :cond_9
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Number of column in input must match length of permInv"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 970
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

.method public static reduceColumnWise(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/ops/DOperatorBinary;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 1920
    new-instance p4, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {p4, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1922
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p4, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    .line 1925
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1926
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1927
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    move-wide v4, p1

    :goto_2
    if-ge v1, v2, :cond_1

    .line 1931
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    invoke-interface {p3, v4, v5, v6, v7}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1934
    :cond_1
    iget-object v1, p4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v4, v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p4
.end method

.method public static reduceRowWise(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/ops/DOperatorBinary;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 1959
    new-instance p4, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-direct {p4, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1961
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p4, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1964
    :goto_0
    iget-object v0, p4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    const/4 p1, 0x0

    .line 1966
    :cond_1
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge p1, p2, :cond_2

    .line 1967
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget p2, p2, p1

    .line 1968
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget v0, v0, p1

    :goto_1
    if-ge p2, v0, :cond_1

    .line 1971
    iget-object v1, p4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, p2

    iget-object v3, p4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, p2

    aget-wide v3, v3, v4

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, p2

    invoke-interface {p3, v3, v4, v5, v6}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p4
.end method

.method public static reduceScalar(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/ops/DOperatorBinary;)D
    .locals 3

    const/4 v0, 0x0

    .line 1891
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 1892
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v1, v1, v0

    invoke-interface {p3, p1, p2, v1, v2}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public static reduceScalar(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DOperatorBinary;)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 1899
    invoke-static {p0, v0, v1, p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->reduceScalar(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/ops/DOperatorBinary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static removeZeros(Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 0

    .line 1718
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->removeZeros(Lorg/ejml/data/DMatrixSparseCSC;D)V

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 0

    .line 1707
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->removeZeros(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)V

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    .line 359
    invoke-virtual {p3, p2}, Lorg/ejml/data/DMatrixSparseCSC;->copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 361
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v0

    mul-double/2addr v2, p0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    :goto_1
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v1, p3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v1, v0

    mul-double/2addr v2, p0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 5

    .line 336
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 338
    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 340
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v1, v0, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_0

    .line 342
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v1, v2, v1

    .line 343
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v3, v1, -0x1

    aput v3, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 345
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v1, v2, :cond_1

    .line 346
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 1557
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1559
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-le v0, v1, :cond_0

    .line 1560
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;->qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    goto :goto_0

    .line 1562
    :cond_0
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1566
    :goto_0
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    .line 1569
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesB()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1570
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 1573
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 1576
    :cond_3
    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 1610
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(II)V

    .line 1612
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-le v0, v1, :cond_0

    .line 1613
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;->qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    goto :goto_0

    .line 1615
    :cond_0
    sget-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-static {v0}, Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;->lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    move-result-object v0

    .line 1619
    :goto_0
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1620
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    .line 1622
    :cond_1
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesB()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1623
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 1626
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 1629
    :cond_3
    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static sumCols(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1268
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1270
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    .line 1273
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1274
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 1275
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const-wide/16 v4, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    .line 1279
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v1

    add-double/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1281
    :cond_1
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v4, v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static sumRows(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 1363
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 1365
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    .line 1367
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v4, v0, :cond_1

    .line 1368
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v4

    .line 1369
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v4, 0x1

    aget v1, v1, v4

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1372
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v0

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static symmLowerToFull(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->symmLowerToFull(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 8

    .line 1778
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1780
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v3

    .line 1781
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    :goto_1
    if-ge v4, v5, :cond_1

    .line 1784
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v4

    if-ne v7, v3, :cond_0

    .line 1785
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v4

    add-double/2addr v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v3, v6

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public static transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    .line 124
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixSparseCSC;III)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 125
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    return-object p1
.end method

.method public static zero(Lorg/ejml/data/DMatrixSparseCSC;IIII)V
    .locals 9

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_5

    .line 1480
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p4

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, p4, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1482
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    if-lez v3, :cond_1

    .line 1488
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v6, v0, v3

    aput v4, v5, v6

    .line 1489
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v5, v0

    aput-wide v7, v4, v6

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_4

    .line 1498
    :goto_3
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v1, v0, :cond_3

    .line 1499
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v4, v1, v3

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    aput v5, v0, v4

    .line 1500
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v1

    aput-wide v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1502
    :cond_3
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 1504
    :goto_4
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v2, v0, :cond_4

    .line 1505
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

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

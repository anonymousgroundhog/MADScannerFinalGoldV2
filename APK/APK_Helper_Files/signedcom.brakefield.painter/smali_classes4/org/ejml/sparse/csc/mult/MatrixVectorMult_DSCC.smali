.class public Lorg/ejml/sparse/csc/mult/MatrixVectorMult_DSCC;
.super Ljava/lang/Object;
.source "MatrixVectorMult_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([DILorg/ejml/data/DMatrixSparseCSC;[DI)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 113
    array-length v3, v0

    sub-int v3, v3, p1

    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v3, v4, :cond_3

    .line 115
    array-length v3, v2

    sub-int v3, v3, p4

    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v3, v4, :cond_2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    .line 120
    :goto_0
    iget v8, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v8, :cond_1

    .line 121
    iget-object v8, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v8, v8, v5

    .line 122
    iget-object v9, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    move-wide v11, v3

    :goto_1
    if-ge v8, v9, :cond_0

    .line 126
    iget-object v13, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v13, v13, v8

    add-int v13, p1, v13

    aget-wide v13, v0, v13

    iget-object v15, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v15, v15, v8

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int v5, p4, v5

    .line 128
    aget-wide v8, v2, v5

    mul-double/2addr v11, v8

    add-double/2addr v6, v11

    move v5, v10

    goto :goto_0

    :cond_1
    return-wide v6

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'a\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;[DI[DI)V
    .locals 3

    .line 41
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v0, p4

    const-wide/16 v1, 0x0

    invoke-static {p3, p4, v0, v1, v2}, Ljava/util/Arrays;->fill([DIID)V

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/mult/MatrixVectorMult_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;[DI[DI)V

    return-void
.end method

.method public static mult([DILorg/ejml/data/DMatrixSparseCSC;[DI)V
    .locals 10

    .line 84
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_3

    .line 86
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 91
    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const-wide/16 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 95
    iget-object v6, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    add-int/2addr v6, p1

    aget-wide v6, p0, v6

    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, p4

    .line 97
    aput-wide v4, p3, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'a\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;[DI[DI)V
    .locals 11

    .line 57
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_3

    .line 59
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 64
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_0

    .line 67
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    add-int/2addr v4, p4

    aget-wide v5, p3, v4

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v1

    add-int v9, p2, v0

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'b\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

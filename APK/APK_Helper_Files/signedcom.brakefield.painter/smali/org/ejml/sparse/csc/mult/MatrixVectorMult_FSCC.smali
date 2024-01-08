.class public Lorg/ejml/sparse/csc/mult/MatrixVectorMult_FSCC;
.super Ljava/lang/Object;
.source "MatrixVectorMult_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([FILorg/ejml/data/FMatrixSparseCSC;[FI)F
    .locals 9

    .line 115
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_3

    .line 117
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 122
    :goto_0
    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v3, :cond_1

    .line 123
    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    .line 124
    iget-object v4, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    move v6, v0

    :goto_1
    if-ge v3, v4, :cond_0

    .line 128
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v3

    add-int/2addr v7, p1

    aget v7, p0, v7

    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, p4

    .line 130
    aget v1, p3, v1

    mul-float/2addr v6, v1

    add-float/2addr v2, v6

    move v1, v5

    goto :goto_0

    :cond_1
    return v2

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'a\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;[FI[FI)V
    .locals 2

    .line 43
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v0, p4

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/sparse/csc/mult/MatrixVectorMult_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;[FI[FI)V

    return-void
.end method

.method public static mult([FILorg/ejml/data/FMatrixSparseCSC;[FI)V
    .locals 7

    .line 86
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_3

    .line 88
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 93
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 97
    iget-object v5, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    add-int/2addr v5, p1

    aget v5, p0, v5

    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, p4

    .line 99
    aput v4, p3, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'a\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;[FI[FI)V
    .locals 8

    .line 59
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_3

    .line 61
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 66
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_0

    .line 69
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    add-int/2addr v4, p4

    aget v5, p3, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    add-int v7, p2, v0

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'b\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

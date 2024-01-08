.class public Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_FSCC;
.super Ljava/lang/Object;
.source "MatrixVectorMultWithSemiRing_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([FILorg/ejml/data/FMatrixSparseCSC;[FILorg/ejml/ops/FSemiRing;)F
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 130
    array-length v4, v0

    sub-int v4, v4, p1

    iget v5, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_3

    .line 132
    array-length v4, v2

    sub-int v4, v4, p4

    iget v5, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    .line 137
    :goto_0
    iget v7, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v5, v7, :cond_1

    .line 138
    iget-object v7, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v5

    .line 139
    iget-object v8, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    move v10, v4

    :goto_1
    if-ge v7, v8, :cond_0

    .line 143
    iget-object v11, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v11, v11, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v12, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v12, v12, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v13, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v13, v13, v7

    add-int v13, p1, v13

    aget v13, v0, v13

    iget-object v14, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v14, v14, v7

    invoke-interface {v12, v13, v14}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v12

    invoke-interface {v11, v10, v12}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 145
    :cond_0
    iget-object v7, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v7, v7, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v8, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v8, v8, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    add-int v5, p4, v5

    aget v5, v2, v5

    invoke-interface {v8, v10, v5}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v5

    invoke-interface {v7, v6, v5}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v6

    move v5, v9

    goto :goto_0

    :cond_1
    return v6

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'a\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;[FI[FILorg/ejml/ops/FSemiRing;)V
    .locals 2

    .line 45
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v0, p4

    iget-object v1, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget v1, v1, Lorg/ejml/ops/FMonoid;->id:F

    invoke-static {p3, p4, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 46
    invoke-static/range {p0 .. p5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;[FI[FILorg/ejml/ops/FSemiRing;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;[F[FLorg/ejml/ops/FSemiRing;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 50
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;[FI[FILorg/ejml/ops/FSemiRing;)V

    return-void
.end method

.method public static mult([FILorg/ejml/data/FMatrixSparseCSC;[FILorg/ejml/ops/FSemiRing;)V
    .locals 9

    .line 96
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_3

    .line 98
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 103
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 105
    iget-object v4, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget v4, v4, Lorg/ejml/ops/FMonoid;->id:F

    :goto_1
    if-ge v1, v2, :cond_0

    .line 107
    iget-object v5, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v5, v5, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v6, p5, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v6, v6, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v1

    add-int/2addr v7, p1

    aget v7, p0, v7

    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v1

    invoke-interface {v6, v7, v8}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v6

    invoke-interface {v5, v4, v6}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, p4

    .line 109
    aput v4, p3, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'a\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mult([FLorg/ejml/data/FMatrixSparseCSC;[FLorg/ejml/ops/FSemiRing;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 114
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_FSCC;->mult([FILorg/ejml/data/FMatrixSparseCSC;[FILorg/ejml/ops/FSemiRing;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;[FI[FILorg/ejml/ops/FSemiRing;)V
    .locals 10

    .line 66
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_3

    .line 68
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 73
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_0

    .line 76
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    add-int/2addr v4, p4

    iget-object v5, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v5, v5, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    add-int/2addr v6, p4

    aget v6, p3, v6

    iget-object v7, p5, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v7, v7, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v1

    add-int v9, p2, v0

    aget v9, p1, v9

    .line 78
    invoke-interface {v7, v8, v9}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v7

    .line 76
    invoke-interface {v5, v6, v7}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v5

    aput v5, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'b\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

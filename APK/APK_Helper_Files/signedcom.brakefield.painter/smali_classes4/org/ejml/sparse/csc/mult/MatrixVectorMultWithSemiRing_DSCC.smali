.class public Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_DSCC;
.super Ljava/lang/Object;
.source "MatrixVectorMultWithSemiRing_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([DILorg/ejml/data/DMatrixSparseCSC;[DILorg/ejml/ops/DSemiRing;)D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 128
    array-length v4, v0

    sub-int v4, v4, p1

    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_3

    .line 130
    array-length v4, v2

    sub-int v4, v4, p4

    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v4, v5, :cond_2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 135
    :goto_0
    iget v9, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v9, :cond_1

    .line 136
    iget-object v9, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v6

    .line 137
    iget-object v10, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    const-wide/16 v12, 0x0

    :goto_1
    if-ge v9, v10, :cond_0

    .line 141
    iget-object v14, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v14, v14, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v15, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v15, v15, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v9

    add-int v4, p1, v4

    aget-wide v4, v0, v4

    iget-object v0, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v0, v0, v9

    invoke-interface {v15, v4, v5, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    invoke-interface {v14, v12, v13, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_1

    .line 143
    :cond_0
    iget-object v0, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v0, v0, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v1, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v1, v1, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    add-int v4, p4, v6

    aget-wide v4, v2, v4

    invoke-interface {v1, v12, v13, v4, v5}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v4

    invoke-interface {v0, v7, v8, v4, v5}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v6, v11

    goto :goto_0

    :cond_1
    return-wide v7

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'a\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;[DI[DILorg/ejml/ops/DSemiRing;)V
    .locals 3

    .line 43
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v0, p4

    iget-object v1, p5, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-wide v1, v1, Lorg/ejml/ops/DMonoid;->id:D

    invoke-static {p3, p4, v0, v1, v2}, Ljava/util/Arrays;->fill([DIID)V

    .line 44
    invoke-static/range {p0 .. p5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;[DI[DILorg/ejml/ops/DSemiRing;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;[D[DLorg/ejml/ops/DSemiRing;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 48
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;[DI[DILorg/ejml/ops/DSemiRing;)V

    return-void
.end method

.method public static mult([DILorg/ejml/data/DMatrixSparseCSC;[DILorg/ejml/ops/DSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 94
    array-length v4, v0

    sub-int v4, v4, p1

    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_3

    .line 96
    array-length v4, v2

    sub-int v4, v4, p4

    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    .line 99
    :goto_0
    iget v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v4, v5, :cond_1

    .line 100
    iget-object v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v4

    .line 101
    iget-object v6, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    .line 103
    iget-object v8, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-wide v8, v8, Lorg/ejml/ops/DMonoid;->id:D

    :goto_1
    if-ge v5, v6, :cond_0

    .line 105
    iget-object v10, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v10, v10, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v11, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v11, v11, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v12, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v5

    add-int v12, p1, v12

    aget-wide v12, v0, v12

    iget-object v14, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v14, v14, v5

    invoke-interface {v11, v12, v13, v14, v15}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v11

    invoke-interface {v10, v8, v9, v11, v12}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int v4, p4, v4

    .line 107
    aput-wide v8, v2, v4

    move v4, v7

    goto :goto_0

    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'a\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult([DLorg/ejml/data/DMatrixSparseCSC;[DLorg/ejml/ops/DSemiRing;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 112
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/MatrixVectorMultWithSemiRing_DSCC;->mult([DILorg/ejml/data/DMatrixSparseCSC;[DILorg/ejml/ops/DSemiRing;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;[DI[DILorg/ejml/ops/DSemiRing;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 64
    array-length v4, v1

    sub-int v4, v4, p2

    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-lt v4, v5, :cond_3

    .line 66
    array-length v4, v2

    sub-int v4, v4, p4

    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    .line 69
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v4, v5, :cond_1

    .line 70
    iget-object v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v4

    .line 71
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    :goto_1
    if-ge v5, v6, :cond_0

    .line 74
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v5

    add-int v8, p4, v8

    iget-object v9, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v9, v9, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v10, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v5

    add-int v10, p4, v10

    aget-wide v10, v2, v10

    iget-object v12, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v12, v12, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v13, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v5

    add-int v15, p2, v4

    move/from16 v16, v4

    aget-wide v3, v1, v15

    .line 76
    invoke-interface {v12, v13, v14, v3, v4}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v3

    .line 74
    invoke-interface {v9, v10, v11, v3, v4}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v3

    aput-wide v3, v2, v8

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p5

    move/from16 v4, v16

    goto :goto_1

    :cond_0
    move-object/from16 v3, p5

    move v4, v7

    goto :goto_0

    :cond_1
    return-void

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'b\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;
.super Ljava/lang/Object;
.source "ImplMultiplicationWithSemiRing_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 2

    .line 117
    iget-object v0, p3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-wide v0, v0, Lorg/ejml/ops/DMonoid;->id:D

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->fill(D)V

    .line 118
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 46
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v12

    .line 47
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p4

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v13

    .line 49
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 50
    iput-boolean v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 51
    iput v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 54
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v1

    const/4 v1, 0x1

    move v14, v1

    .line 55
    :goto_0
    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v14, v1, :cond_3

    add-int/lit8 v15, v14, -0x1

    .line 57
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v8, v1, v14

    .line 58
    iget-object v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v14

    if-ne v0, v8, :cond_0

    goto :goto_3

    :cond_0
    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 66
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v0, v7

    .line 67
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v0, v7

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v16, v7

    move-object v7, v12

    move/from16 v17, v8

    move-object v8, v13

    .line 69
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/ops/DSemiRing;[D[I)V

    add-int/lit8 v7, v16, 0x1

    move/from16 v8, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    .line 73
    iget-object v0, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v15

    .line 74
    iget-object v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v15, v15, 0x1

    aget v1, v1, v15

    :goto_2
    if-ge v0, v1, :cond_2

    .line 77
    iget-object v2, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v12, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move/from16 v0, v17

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 123
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v4, v5, :cond_2

    .line 124
    iget-object v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v4

    .line 125
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    :goto_1
    if-ge v5, v6, :cond_1

    .line 128
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v5

    .line 129
    iget-object v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v5

    .line 131
    iget v11, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v11, v4

    .line 132
    iget v12, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v12

    .line 133
    iget v12, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v12, v11

    :goto_2
    if-ge v11, v12, :cond_0

    .line 137
    iget-object v13, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v14, v8, 0x1

    iget-object v15, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v15, v15, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    move/from16 v18, v6

    move/from16 v17, v7

    aget-wide v6, v0, v14

    iget-object v0, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v0, v0, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v14, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v19, v11, 0x1

    aget-wide v1, v14, v11

    invoke-interface {v0, v9, v10, v1, v2}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    invoke-interface {v15, v6, v7, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    aput-wide v0, v13, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, v16

    move/from16 v7, v17

    move/from16 v6, v18

    move/from16 v11, v19

    goto :goto_2

    :cond_0
    move/from16 v18, v6

    move/from16 v17, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_1
    move/from16 v17, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, v17

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/ops/DSemiRing;[D[I)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 95
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, p1

    .line 96
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v8, 0x1

    add-int/lit8 v9, p1, 0x1

    aget v7, v7, v9

    :goto_0
    if-ge v6, v7, :cond_2

    .line 99
    iget-object v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v9, v9, v6

    .line 101
    aget v10, p8, v9

    if-ge v10, v4, :cond_1

    .line 102
    iget v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v11, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    array-length v11, v11

    if-lt v10, v11, :cond_0

    .line 103
    iget v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    invoke-virtual {v3, v10, v8}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 106
    :cond_0
    aput v4, p8, v9

    .line 107
    iget-object v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v11, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v9, v10, v11

    .line 108
    iget-object v10, v3, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v11, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v11, v8

    iput v11, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v11, v10, v4

    .line 109
    iget-object v10, v5, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v10, v10, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v11, v11, v6

    invoke-interface {v10, v11, v12, v1, v2}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v10

    aput-wide v10, p7, v9

    goto :goto_1

    .line 111
    :cond_1
    iget-object v10, v5, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v10, v10, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    aget-wide v11, p7, v9

    iget-object v13, v5, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v13, v13, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v14, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v14, v14, v6

    invoke-interface {v13, v14, v15, v1, v2}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v13

    invoke-interface {v10, v11, v12, v13, v14}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v10

    aput-wide v10, p7, v9

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 165
    :goto_0
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    .line 167
    :goto_1
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_1

    .line 168
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 169
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    .line 171
    iget-object v10, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-wide v10, v10, Lorg/ejml/ops/DMonoid;->id:D

    :goto_2
    if-ge v7, v8, :cond_0

    .line 173
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v7

    .line 174
    iget-object v13, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v13, v13, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v14, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v14, v14, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v15, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    move/from16 v16, v5

    aget-wide v4, v15, v7

    iget-object v15, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v0, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v0

    add-int v12, v12, v16

    aget-wide v0, v15, v12

    invoke-interface {v14, v4, v5, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    invoke-interface {v13, v10, v11, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v16

    goto :goto_2

    :cond_0
    move/from16 v16, v5

    .line 177
    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, v6

    add-int v1, v1, v16

    iget-object v4, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v4, v4, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v5, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v7

    add-int v6, v6, v16

    aget-wide v5, v5, v6

    invoke-interface {v4, v5, v6, v10, v11}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v4

    aput-wide v4, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v9

    move/from16 v5, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 215
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_2

    .line 216
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 217
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    :goto_1
    if-ge v6, v7, :cond_1

    const/4 v9, 0x0

    .line 220
    :goto_2
    iget v10, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_0

    .line 221
    iget v10, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v9

    .line 223
    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v6

    .line 225
    iget-object v12, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v13, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v13, v5

    add-int/2addr v13, v9

    iget-object v14, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v14, v14, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v15, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v9

    move/from16 v16, v5

    aget-wide v4, v15, v4

    iget-object v15, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v15, v15, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v2, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v6

    iget-object v0, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/2addr v10, v11

    aget-wide v10, v0, v10

    .line 227
    invoke-interface {v15, v2, v3, v10, v11}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v2

    .line 225
    invoke-interface {v14, v4, v5, v2, v3}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v2

    aput-wide v2, v12, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, v16

    goto :goto_2

    :cond_0
    move/from16 v16, v5

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 190
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_2

    .line 191
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 192
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    :goto_1
    if-ge v6, v7, :cond_1

    const/4 v9, 0x0

    .line 194
    :goto_2
    iget v10, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_0

    .line 195
    iget-object v10, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v6

    .line 196
    iget-object v11, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v12, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    iget-object v13, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v13, v13, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v14, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v15, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v15

    add-int/2addr v10, v9

    aget-wide v14, v14, v10

    iget-object v10, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v10, v10, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v4, v6

    iget-object v4, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v0, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v5

    aget-wide v0, v4, v0

    .line 198
    invoke-interface {v10, v2, v3, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    .line 196
    invoke-interface {v13, v14, v15, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    aput-wide v0, v11, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 146
    :goto_0
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    .line 148
    :goto_1
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_1

    .line 149
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 150
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    .line 152
    iget-object v10, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-wide v10, v10, Lorg/ejml/ops/DMonoid;->id:D

    :goto_2
    if-ge v7, v8, :cond_0

    .line 154
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v7

    .line 155
    iget-object v13, v3, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v13, v13, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v14, v3, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v14, v14, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v15, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    move/from16 v16, v5

    aget-wide v4, v15, v7

    iget-object v15, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v0, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v0

    add-int v12, v12, v16

    aget-wide v0, v15, v12

    invoke-interface {v14, v4, v5, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    invoke-interface {v13, v10, v11, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v16

    goto :goto_2

    :cond_0
    move/from16 v16, v5

    .line 158
    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v1

    add-int v6, v6, v16

    aput-wide v10, v0, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v9

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 0

    .line 209
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 210
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 0

    .line 183
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 184
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void
.end method

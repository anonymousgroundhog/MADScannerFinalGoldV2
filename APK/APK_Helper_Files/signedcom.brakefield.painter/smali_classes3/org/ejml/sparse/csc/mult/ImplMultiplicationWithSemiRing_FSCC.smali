.class public Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;
.super Ljava/lang/Object;
.source "ImplMultiplicationWithSemiRing_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 1

    .line 119
    iget-object v0, p3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget v0, v0, Lorg/ejml/ops/FMonoid;->id:F

    invoke-virtual {p2, v0}, Lorg/ejml/data/FMatrixRMaj;->fill(F)V

    .line 120
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 48
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v11

    .line 49
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p4

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    .line 51
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 52
    iput-boolean v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 53
    iput v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 56
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v1

    const/4 v1, 0x1

    move v13, v1

    .line 57
    :goto_0
    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v13, v1, :cond_3

    add-int/lit8 v14, v13, -0x1

    .line 59
    iget-object v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v15, v1, v13

    .line 60
    iget-object v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v13

    if-ne v0, v15, :cond_0

    goto :goto_3

    :cond_0
    move v7, v0

    :goto_1
    if-ge v7, v15, :cond_1

    .line 68
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v1, v0, v7

    .line 69
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v0, v7

    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move/from16 v16, v7

    move-object v7, v12

    .line 71
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/ops/FSemiRing;[F[I)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v14

    .line 76
    iget-object v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v14, v14, 0x1

    aget v1, v1, v14

    :goto_2
    if-ge v0, v1, :cond_2

    .line 79
    iget-object v2, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, v11, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v15

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 125
    :goto_0
    iget v5, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v4, v5, :cond_2

    .line 126
    iget-object v5, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v4

    .line 127
    iget-object v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    :goto_1
    if-ge v5, v6, :cond_1

    .line 130
    iget-object v8, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v5

    .line 131
    iget-object v9, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v5

    .line 133
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v4

    .line 134
    iget v11, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v8, v11

    .line 135
    iget v11, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v11, v10

    :goto_2
    if-ge v10, v11, :cond_0

    .line 139
    iget-object v12, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v13, v8, 0x1

    iget-object v14, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v14, v14, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v15, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v16, v13, 0x1

    aget v13, v15, v13

    iget-object v15, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v15, v15, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v0, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v17, v10, 0x1

    aget v0, v0, v10

    invoke-interface {v15, v9, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    invoke-interface {v14, v13, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    aput v0, v12, v8

    move-object/from16 v0, p0

    move/from16 v8, v16

    move/from16 v10, v17

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v4, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/ops/FSemiRing;[F[I)V
    .locals 7

    .line 97
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 98
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 101
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    .line 103
    aget v3, p7, v1

    if-ge v3, p4, :cond_1

    .line 104
    iget v3, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 105
    iget v3, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p3, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 108
    :cond_0
    aput p4, p7, v1

    .line 109
    iget-object v3, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v3, v4

    .line 110
    iget-object v3, p3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v4, v2

    iput v4, p3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v4, v3, p4

    .line 111
    iget-object v3, p5, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v3, v3, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v0

    invoke-interface {v3, v4, p2}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v3

    aput v3, p6, v1

    goto :goto_1

    .line 113
    :cond_1
    iget-object v3, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v3, v3, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    aget v4, p6, v1

    iget-object v5, p5, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v5, v5, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v0

    invoke-interface {v5, v6, p2}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v3

    aput v3, p6, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 167
    :goto_0
    iget v6, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    .line 169
    :goto_1
    iget v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_1

    .line 170
    iget-object v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 171
    iget-object v8, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    .line 173
    iget-object v10, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget v10, v10, Lorg/ejml/ops/FMonoid;->id:F

    :goto_2
    if-ge v7, v8, :cond_0

    .line 175
    iget-object v11, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v7

    .line 176
    iget-object v12, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v12, v12, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v13, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v13, v13, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v14, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v14, v14, v7

    iget-object v15, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    aget v4, v15, v11

    invoke-interface {v13, v14, v4}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v4

    invoke-interface {v12, v10, v4}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 179
    :cond_0
    iget-object v4, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    iget-object v8, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v8, v8, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v11, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v12, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v12

    add-int/2addr v6, v5

    aget v6, v11, v6

    invoke-interface {v8, v6, v10}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v6

    aput v6, v4, v7

    move v6, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 217
    :goto_0
    iget v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_2

    .line 218
    iget-object v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 219
    iget-object v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    :goto_1
    if-ge v6, v7, :cond_1

    const/4 v9, 0x0

    .line 222
    :goto_2
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_0

    .line 223
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v9

    .line 225
    iget-object v11, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v6

    .line 227
    iget-object v12, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v13, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v13, v5

    add-int/2addr v13, v9

    iget-object v14, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v14, v14, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v15, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v9

    aget v4, v15, v4

    iget-object v15, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v15, v15, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v2, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v6

    iget-object v0, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/2addr v10, v11

    aget v0, v0, v10

    .line 229
    invoke-interface {v15, v2, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    .line 227
    invoke-interface {v14, v4, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    aput v0, v12, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v5, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 192
    :goto_0
    iget v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_2

    .line 193
    iget-object v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 194
    iget-object v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    :goto_1
    if-ge v6, v7, :cond_1

    const/4 v9, 0x0

    .line 196
    :goto_2
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_0

    .line 197
    iget-object v10, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v6

    .line 198
    iget-object v11, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v12, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    iget-object v13, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v13, v13, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v14, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v15, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v15

    add-int/2addr v10, v9

    aget v10, v14, v10

    iget-object v14, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v14, v14, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v15, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v15, v15, v6

    iget-object v4, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v0, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v5

    aget v0, v4, v0

    .line 200
    invoke-interface {v14, v15, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    .line 198
    invoke-interface {v13, v10, v0}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v0

    aput v0, v11, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v5, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 148
    :goto_0
    iget v6, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    .line 150
    :goto_1
    iget v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_1

    .line 151
    iget-object v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 152
    iget-object v8, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    .line 154
    iget-object v10, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget v10, v10, Lorg/ejml/ops/FMonoid;->id:F

    :goto_2
    if-ge v7, v8, :cond_0

    .line 156
    iget-object v11, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v7

    .line 157
    iget-object v12, v3, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v12, v12, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v13, v3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v13, v13, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v14, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v14, v14, v7

    iget-object v15, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    aget v4, v15, v11

    invoke-interface {v13, v14, v4}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v4

    invoke-interface {v12, v10, v4}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 160
    :cond_0
    iget-object v4, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    aput v10, v4, v6

    move v6, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 0

    .line 211
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 212
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 0

    .line 185
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 186
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void
.end method

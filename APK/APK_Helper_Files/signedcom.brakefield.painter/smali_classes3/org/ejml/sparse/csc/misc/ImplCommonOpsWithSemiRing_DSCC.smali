.class public Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_DSCC;
.super Ljava/lang/Object;
.source "ImplCommonOpsWithSemiRing_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 15

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    .line 50
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v11

    .line 51
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p8

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 54
    iput v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v13, v0

    .line 56
    :goto_0
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v13, v0, :cond_1

    .line 57
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v13

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p2

    move v1, v13

    move-wide v2, p0

    move-object/from16 v4, p6

    move v5, v14

    move-object/from16 v6, p7

    move-object v7, v11

    move-object v8, v12

    .line 59
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/ops/DSemiRing;[D[I)V

    move-object/from16 v0, p5

    move-wide/from16 v2, p3

    .line 60
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/ops/DSemiRing;[D[I)V

    .line 63
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v13

    .line 64
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v14

    :goto_1
    if-ge v0, v1, :cond_0

    .line 67
    iget-object v2, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v11, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v13, v14

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v0, v1

    return-void
.end method

.method public static addColAppend(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;)V
    .locals 9

    .line 87
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p4, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 91
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    .line 92
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p3

    .line 93
    iget-object v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/2addr p3, v2

    aget p3, v3, p3

    .line 95
    iget v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v3, v2

    iput v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p4, v3, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxColumns(IZ)V

    .line 96
    iget v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    add-int/2addr v3, p3

    sub-int/2addr v3, v1

    invoke-virtual {p4, v3, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 98
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p6, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p6

    const/4 v2, 0x0

    .line 99
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v4, -0x1

    invoke-static {p6, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 102
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v0

    .line 103
    iget-object v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v5, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v3, v5

    .line 104
    iget-object v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v5, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v0

    aput-wide v6, v3, v5

    .line 105
    iget v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, p6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p3, :cond_2

    .line 109
    iget-object p0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget p0, p0, v1

    .line 110
    aget p1, p6, p0

    if-eq p1, v4, :cond_1

    .line 111
    iget-object p1, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget v0, p6, p0

    iget-object v2, p5, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    iget-object v2, v2, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    iget-object v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget p0, p6, p0

    aget-wide v5, v3, p0

    iget-object p0, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, p0, v1

    invoke-interface {v2, v5, v6, v7, v8}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v2

    aput-wide v2, p1, v0

    goto :goto_2

    .line 113
    :cond_1
    iget-object p1, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v0, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v2, v1

    aput-wide v2, p1, v0

    .line 114
    iget-object p1, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v0, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput p0, p1, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_2
    iget-object p0, p4, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget p1, p4, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget p2, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows in A, B, and C do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 133
    iget v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v4, p5

    invoke-static {v4, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v3

    .line 134
    iget v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v5, p4

    invoke-static {v5, v4}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v4

    .line 135
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 137
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v6, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5, v7}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 138
    iput-boolean v7, v2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 139
    iput v7, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 141
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v7, v5, :cond_4

    .line 142
    iget-object v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v7

    .line 143
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v8

    .line 144
    iget-object v9, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v7

    .line 145
    iget-object v10, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v10, v10, v8

    sub-int v11, v6, v5

    sub-int v12, v10, v9

    .line 148
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 151
    iget v12, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v12, v11

    iget-object v13, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v13, v13

    if-le v12, v13, :cond_0

    .line 152
    iget-object v12, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v12, v12

    add-int/2addr v12, v11

    const/4 v11, 0x1

    invoke-virtual {v2, v12, v11}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 155
    :cond_0
    iget-object v11, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v12, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v12, v11, v7

    :goto_1
    if-ge v5, v6, :cond_1

    .line 159
    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v5

    .line 160
    aput v7, v4, v11

    .line 161
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v12, v12, v5

    aput-wide v12, v3, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v9, v10, :cond_3

    .line 166
    iget-object v5, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v9

    .line 167
    aget v6, v4, v5

    if-ne v6, v7, :cond_2

    .line 168
    iget-object v6, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v11, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move-object/from16 v12, p3

    iget-object v13, v12, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    iget-object v13, v13, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    aget-wide v14, v3, v5

    iget-object v0, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v0, v0, v9

    invoke-interface {v13, v14, v15, v0, v1}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v0

    aput-wide v0, v6, v11

    .line 169
    iget-object v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v1, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v6, v1, 0x1

    iput v6, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v5, v0, v1

    goto :goto_3

    :cond_2
    move-object/from16 v12, p3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_2

    :cond_3
    move-object/from16 v12, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v8

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v0, v1

    return-void
.end method

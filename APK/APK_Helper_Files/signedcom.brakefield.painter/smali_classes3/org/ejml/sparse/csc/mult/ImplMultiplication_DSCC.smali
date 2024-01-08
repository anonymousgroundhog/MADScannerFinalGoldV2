.class public Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;
.super Ljava/lang/Object;
.source "ImplMultiplication_DSCC.java"


# direct methods
.method public static synthetic $r8$lambda$GDFvzl8wSLkHmMy5AREQhHd0Efc(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->sum(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRowsInAInToC(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;I[I)V
    .locals 6

    .line 132
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 133
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 136
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    .line 138
    aget v3, p4, v1

    if-ge v3, p3, :cond_1

    .line 139
    iget v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v4, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 140
    iget v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 143
    :cond_0
    aput p3, p4, v1

    .line 144
    iget-object v3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v4, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object p0, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/2addr p3, v2

    iget p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput p1, p0, p3

    return-void
.end method

.method public static dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D
    .locals 7

    .line 290
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 293
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p4

    .line 294
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p4, v1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 295
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p5, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object p5

    .line 299
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 300
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v3, p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 302
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    .line 303
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v0

    aput-wide v4, p5, v1

    add-int/lit8 v4, v1, 0x1

    .line 304
    aput v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 309
    :cond_0
    iget-object p0, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget p0, p0, p3

    .line 310
    iget-object p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p3, p3, 0x1

    aget p1, p1, p3

    const-wide/16 v0, 0x0

    :goto_1
    if-ge p0, p1, :cond_2

    .line 312
    iget-object p3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget p3, p3, p0

    .line 313
    aget p3, p4, p3

    if-eq p3, v2, :cond_1

    .line 314
    aget-wide v3, p5, p3

    iget-object p3, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, p3, p0

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-wide v0

    .line 291
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows must match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$multTransA$0(DD)D
    .locals 0

    return-wide p2
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 151
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 152
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 48
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v11

    .line 49
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p3

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    .line 51
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 52
    iput-boolean v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 53
    iput v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 56
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v1

    const/4 v1, 0x1

    move v13, v1

    .line 57
    :goto_0
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v13, v1, :cond_3

    add-int/lit8 v14, v13, -0x1

    .line 59
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v15, v1, v13

    .line 60
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v13

    if-ne v0, v15, :cond_0

    goto :goto_3

    :cond_0
    move v7, v0

    :goto_1
    if-ge v7, v15, :cond_1

    .line 68
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v0, v7

    .line 69
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v0, v7

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object v6, v11

    move/from16 v16, v7

    move-object v7, v12

    .line 71
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v14

    .line 76
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v14, v14, 0x1

    aget v1, v1, v14

    :goto_2
    if-ge v0, v1, :cond_2

    .line 79
    iget-object v2, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v11, v3

    aput-wide v3, v2, v0

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

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 157
    :goto_0
    iget v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v3, v4, :cond_2

    .line 158
    iget-object v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v3

    .line 159
    iget-object v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    :goto_1
    if-ge v4, v5, :cond_1

    .line 162
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v4

    .line 163
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v4

    .line 165
    iget v10, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v3

    .line 166
    iget v11, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v11

    .line 167
    iget v11, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v11, v10

    :goto_2
    if-ge v10, v11, :cond_0

    .line 171
    iget-object v12, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v13, v7, 0x1

    aget-wide v14, v12, v7

    iget-object v0, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v16, v10, 0x1

    aget-wide v17, v0, v10

    mul-double v17, v17, v8

    add-double v14, v14, v17

    aput-wide v14, v12, v7

    move-object/from16 v0, p0

    move v7, v13

    move/from16 v10, v16

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v3, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V
    .locals 7

    .line 95
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 96
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 99
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    .line 101
    aget v3, p7, v1

    if-ge v3, p5, :cond_1

    .line 102
    iget v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v4, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 103
    iget v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p4, v3, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 106
    :cond_0
    aput p5, p7, v1

    .line 107
    iget-object v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v4, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v3, v4

    .line 108
    iget-object v3, p4, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v4, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v4, v2

    iput v4, p4, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v4, v3, p5

    .line 109
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v0

    mul-double/2addr v3, p2

    aput-wide v3, p6, v1

    goto :goto_1

    .line 111
    :cond_1
    aget-wide v3, p6, v1

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v0

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p6, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 1

    .line 182
    new-instance v0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;Lorg/ejml/ops/DOperatorBinary;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    .line 259
    :goto_0
    iget v5, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v4, v5, :cond_2

    move v5, v3

    .line 260
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_1

    .line 261
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 262
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    .line 264
    iget v9, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v9, v4

    const-wide/16 v10, 0x0

    :goto_2
    if-ge v6, v7, :cond_0

    .line 268
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v6

    .line 269
    iget-object v13, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v6

    iget-object v15, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/2addr v12, v9

    aget-wide v15, v15, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 272
    :cond_0
    iget-object v6, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    aget-wide v12, v6, v5

    add-double/2addr v12, v10

    aput-wide v12, v6, v5

    move v5, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 217
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    const/4 v4, 0x0

    move v5, v4

    .line 220
    :cond_0
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_3

    move v6, v4

    .line 222
    :goto_0
    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v6, v7, :cond_1

    .line 223
    iget-object v7, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    aget-wide v7, v7, v8

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 227
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v5, 0x1

    aget v7, v7, v5

    :goto_1
    if-ge v6, v7, :cond_0

    move v8, v4

    .line 229
    :goto_2
    iget v9, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v8, v9, :cond_2

    .line 230
    iget-object v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v9, v9, v6

    .line 231
    iget-object v10, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v9, v11

    add-int/2addr v9, v8

    aget-wide v11, v10, v9

    iget-object v13, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v6

    aget-wide v15, v3, v8

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    aput-wide v11, v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 1

    .line 178
    new-instance v0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;Lorg/ejml/ops/DOperatorBinary;)V

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;Lorg/ejml/ops/DOperatorBinary;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 187
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    const/4 v4, 0x0

    move v5, v4

    .line 190
    :goto_0
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_3

    move v6, v4

    .line 192
    :goto_1
    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v6, v7, :cond_0

    .line 193
    iget-object v7, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    aget-wide v7, v7, v8

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 196
    :goto_2
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_2

    .line 197
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 198
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    const-wide/16 v10, 0x0

    :goto_3
    if-ge v7, v8, :cond_1

    .line 202
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v7

    .line 203
    iget-object v13, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v7

    aget-wide v15, v3, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 206
    :cond_1
    iget-object v7, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    iget-object v12, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v13, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v13

    add-int/2addr v6, v5

    aget-wide v12, v12, v6

    move-object/from16 v6, p4

    invoke-interface {v6, v12, v13, v10, v11}, Lorg/ejml/ops/DOperatorBinary;->apply(DD)D

    move-result-wide v10

    aput-wide v10, v7, v8

    move v6, v9

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    .line 239
    :goto_0
    iget v5, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v4, v5, :cond_2

    move v5, v3

    .line 240
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v5, v6, :cond_1

    .line 241
    iget-object v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    .line 242
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    .line 244
    iget v9, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v9, v4

    const-wide/16 v10, 0x0

    :goto_2
    if-ge v6, v7, :cond_0

    .line 248
    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v6

    .line 249
    iget-object v13, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v6

    iget-object v15, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/2addr v12, v9

    aget-wide v15, v15, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 252
    :cond_0
    iget-object v6, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    aput-wide v10, v6, v5

    move v5, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V
    .locals 0

    .line 212
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 213
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)V

    return-void
.end method

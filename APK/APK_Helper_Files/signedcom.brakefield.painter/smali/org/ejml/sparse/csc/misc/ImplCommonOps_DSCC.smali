.class public Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;
.super Ljava/lang/Object;
.source "ImplCommonOps_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 14

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    .line 90
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v10

    .line 91
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p7

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v11

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 94
    iput v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v12, v0

    .line 96
    :goto_0
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v12, v0, :cond_1

    .line 97
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v12

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p2

    move v1, v12

    move-wide v2, p0

    move-object/from16 v4, p6

    move v5, v13

    move-object v6, v10

    move-object v7, v11

    .line 99
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    move-object/from16 v0, p5

    move-wide/from16 v2, p3

    .line 100
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    .line 103
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v12

    .line 104
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v13

    :goto_1
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v10, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v12, v13

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v0, v1

    return-void
.end method

.method public static addColAppend(DLorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    .line 128
    iget v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v3, v4, :cond_3

    .line 131
    iget-object v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, p3

    .line 132
    iget-object v4, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v5, 0x1

    add-int/lit8 v6, p3, 0x1

    aget v4, v4, v6

    .line 133
    iget-object v6, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, p7

    .line 134
    iget-object v7, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v8, p7, 0x1

    aget v7, v7, v8

    .line 136
    iget v8, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v8, v5

    iput v8, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {v2, v8, v5}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxColumns(IZ)V

    .line 137
    iget v8, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v3

    add-int/2addr v8, v7

    sub-int/2addr v8, v6

    invoke-virtual {v2, v8, v5}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 139
    iget v5, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v8, p9

    invoke-static {v8, v5}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v5

    const/4 v8, 0x0

    .line 140
    iget v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v10, -0x1

    invoke-static {v5, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    if-ge v3, v4, :cond_0

    .line 143
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    .line 144
    iget-object v9, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v11, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v8, v9, v11

    .line 145
    iget-object v9, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v11, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v12, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v12, v12, v3

    mul-double/2addr v12, p0

    aput-wide v12, v9, v11

    .line 146
    iget v9, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v9, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v6, v7, :cond_2

    .line 150
    iget-object v0, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, v6

    .line 151
    aget v3, v5, v0

    if-eq v3, v10, :cond_1

    .line 152
    iget-object v3, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget v0, v5, v0

    aget-wide v8, v3, v0

    iget-object v4, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v11, v4, v6

    mul-double v11, v11, p4

    add-double/2addr v8, v11

    aput-wide v8, v3, v0

    goto :goto_2

    .line 154
    :cond_1
    iget-object v3, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v4, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v8, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v6

    mul-double v8, v8, p4

    aput-wide v8, v3, v4

    .line 155
    iget-object v3, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v4, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v8, v4, 0x1

    iput v8, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v0, v3, v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v0, v1

    return-void

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in A, B, and C do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static duplicatesAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 12

    .line 260
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->adjustFill(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    .line 263
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v3, :cond_5

    .line 264
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v0

    add-int/2addr v3, v2

    .line 265
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 269
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v6

    .line 270
    aget v8, p1, v7

    if-ne v8, v1, :cond_0

    .line 271
    aput v6, p1, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v4, :cond_3

    .line 276
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    .line 279
    aget v7, p1, v6

    if-ne v7, v3, :cond_2

    .line 280
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v8, v3, v2

    aput v6, v7, v8

    .line 281
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v9, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    .line 282
    aput v8, p1, v6

    goto :goto_3

    .line 285
    :cond_2
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget v6, p1, v6

    aget-wide v8, v7, v6

    iget-object v10, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v10, v10, v3

    add-double/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    :cond_3
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v3, v5

    sub-int/2addr v6, v2

    aput v6, v3, v5

    sub-int/2addr v4, v2

    .line 293
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v3, v0

    :goto_4
    if-ge v0, v4, :cond_4

    .line 294
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v5

    goto :goto_0

    .line 297
    :cond_5
    iget p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 11

    .line 173
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object p4

    .line 174
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p3, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    .line 175
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 177
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 178
    iput-boolean v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 179
    iput v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 181
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v2, v0, :cond_4

    .line 182
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v2

    .line 183
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    .line 184
    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    .line 185
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v3

    sub-int v6, v1, v0

    sub-int v7, v5, v4

    .line 188
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 191
    iget v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v7, v6

    iget-object v8, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 192
    iget-object v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v7, v7

    add-int/2addr v7, v6

    const/4 v6, 0x1

    invoke-virtual {p2, v7, v6}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 195
    :cond_0
    iget-object v6, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v7, v6, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 199
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v0

    .line 200
    aput v2, p3, v6

    .line 201
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v0

    aput-wide v7, p4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v5, :cond_3

    .line 206
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, v4

    .line 207
    aget v1, p3, v0

    if-ne v1, v2, :cond_2

    .line 208
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v6, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aget-wide v7, p4, v0

    iget-object v9, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    aput-wide v7, v1, v6

    .line 209
    iget-object v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v6, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v0, v1, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 213
    :cond_4
    iget-object p0, p2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget p1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 241
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    add-int/2addr v2, v1

    .line 242
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 245
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v2

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, p1

    if-lez v6, :cond_0

    .line 247
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v7, v2, v1

    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v2

    aput v8, v6, v7

    .line 248
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide v4, v6, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_1
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v2, v0

    sub-int/2addr v3, v1

    aput v3, v2, v0

    goto :goto_0

    .line 255
    :cond_2
    iget p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 8

    .line 217
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    .line 218
    iput v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 220
    :cond_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 221
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v0

    .line 223
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 224
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 227
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v1

    .line 228
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, p2

    if-lez v5, :cond_1

    .line 229
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v1

    aput v7, v5, v6

    .line 230
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput-wide v3, v5, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_2
    iget-object p0, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget p2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput p1, p0, p2

    return-void
.end method

.method public static symmLowerToFull(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 10

    .line 309
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_6

    .line 312
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 313
    invoke-static {p2, v0, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 314
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 319
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 320
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 323
    aget v6, p2, v2

    sub-int v7, v4, v3

    add-int/2addr v6, v7

    aput v6, p2, v2

    :goto_1
    if-ge v3, v4, :cond_1

    .line 327
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    if-le v6, v2, :cond_0

    .line 329
    aget v7, p2, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    .line 338
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_2
    if-ge v1, v0, :cond_5

    .line 342
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 343
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    sub-int v5, v3, v2

    .line 346
    iget-object v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v4

    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    .line 350
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v8, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v9, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v1

    add-int/2addr v9, v6

    sub-int/2addr v9, v5

    invoke-static {v7, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v8, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v9, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v1

    add-int/2addr v9, v6

    sub-int/2addr v9, v5

    invoke-static {v7, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-ge v2, v3, :cond_4

    .line 355
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v2

    if-le v5, v1, :cond_3

    .line 357
    iget-object v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    aget v7, p2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, p2, v5

    add-int/2addr v6, v7

    .line 358
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v1, v5, v6

    .line 359
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v2

    aput-wide v7, v5, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    return-void

    .line 310
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a lower triangular square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 8

    .line 49
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 50
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    aget v4, p2, v2

    add-int/2addr v4, v3

    aput v4, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    .line 59
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v1, v0

    .line 63
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v3, v1, :cond_2

    add-int/lit8 v1, v3, -0x1

    .line 65
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v3

    :goto_2
    if-ge v0, v2, :cond_1

    .line 67
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    .line 68
    aget v5, p2, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, p2, v4

    .line 69
    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v1, v4, v5

    .line 70
    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v0

    aput-wide v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_1

    :cond_2
    return-void
.end method

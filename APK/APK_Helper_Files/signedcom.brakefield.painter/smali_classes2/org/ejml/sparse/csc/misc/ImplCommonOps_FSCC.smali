.class public Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;
.super Ljava/lang/Object;
.source "ImplCommonOps_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 9

    .line 92
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p6, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p6

    .line 93
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p5, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p5

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 96
    iput v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 98
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v0

    add-int/lit8 v8, v0, 0x1

    move-object v1, p1

    move v2, v0

    move v3, p0

    move-object v4, p4

    move v5, v8

    move-object v6, p6

    move-object v7, p5

    .line 101
    invoke-static/range {v1 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    move-object v1, p3

    move v3, p2

    .line 102
    invoke-static/range {v1 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    .line 105
    iget-object v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v1, v0

    .line 106
    iget-object v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v8

    :goto_1
    if-ge v0, v1, :cond_0

    .line 109
    iget-object v2, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, p6, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v8

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p2, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void
.end method

.method public static addColAppend(FLorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 7

    .line 130
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p6, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 133
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p2

    .line 134
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    aget p2, v1, p2

    .line 135
    iget-object v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p5

    .line 136
    iget-object v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/2addr p5, v2

    aget p5, v3, p5

    .line 138
    iget v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v3, v2

    iput v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p6, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxColumns(IZ)V

    .line 139
    iget v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    add-int/2addr v3, p5

    sub-int/2addr v3, v1

    invoke-virtual {p6, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 141
    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p7, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p7

    const/4 v2, 0x0

    .line 142
    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v4, -0x1

    invoke-static {p7, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    if-ge v0, p2, :cond_0

    .line 145
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v0

    .line 146
    iget-object v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v5, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v3, v5

    .line 147
    iget-object v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v5, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v0

    mul-float/2addr v6, p0

    aput v6, v3, v5

    .line 148
    iget v3, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, p7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p5, :cond_2

    .line 152
    iget-object p0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget p0, p0, v1

    .line 153
    aget p1, p7, p0

    if-eq p1, v4, :cond_1

    .line 154
    iget-object p1, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget p0, p7, p0

    aget p2, p1, p0

    iget-object v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v1

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    aput p2, p1, p0

    goto :goto_2

    .line 156
    :cond_1
    iget-object p1, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget p2, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, v0, v1

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 157
    iget-object p1, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget p2, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p0, p1, p2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_2
    iget-object p0, p6, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p1, p6, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p2, p6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void

    .line 131
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows in A, B, and C do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static duplicatesAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 10

    .line 262
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->adjustFill(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    .line 265
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v3, :cond_5

    .line 266
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v0

    add-int/2addr v3, v2

    .line 267
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 271
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v6

    .line 272
    aget v8, p1, v7

    if-ne v8, v1, :cond_0

    .line 273
    aput v6, p1, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v4, :cond_3

    .line 278
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    .line 281
    aget v7, p1, v6

    if-ne v7, v3, :cond_2

    .line 282
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v8, v3, v2

    aput v6, v7, v8

    .line 283
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v9, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v3

    aput v9, v7, v8

    .line 284
    aput v8, p1, v6

    goto :goto_3

    .line 287
    :cond_2
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, p1, v6

    aget v8, v7, v6

    iget-object v9, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v3

    add-float/2addr v8, v9

    aput v8, v7, v6

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 291
    :cond_3
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v3, v5

    sub-int/2addr v6, v2

    aput v6, v3, v5

    sub-int/2addr v4, v2

    .line 295
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v3, v0

    :goto_4
    if-ge v0, v4, :cond_4

    .line 296
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v5

    goto :goto_0

    .line 299
    :cond_5
    iget p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 9

    .line 175
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p4

    .line 176
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p3, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    .line 177
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 179
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 180
    iput-boolean v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 181
    iput v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 183
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v0, :cond_4

    .line 184
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v2

    .line 185
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    .line 186
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    .line 187
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v3

    sub-int v6, v1, v0

    sub-int v7, v5, v4

    .line 190
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 193
    iget v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v7, v6

    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 194
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v7, v7

    add-int/2addr v7, v6

    const/4 v6, 0x1

    invoke-virtual {p2, v7, v6}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 197
    :cond_0
    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v7, v6, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 201
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v0

    .line 202
    aput v2, p3, v6

    .line 203
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v0

    aput v7, p4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v5, :cond_3

    .line 208
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, v4

    .line 209
    aget v1, p3, v0

    if-ne v1, v2, :cond_2

    .line 210
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aget v7, p4, v0

    iget-object v8, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v4

    mul-float/2addr v7, v8

    aput v7, v1, v6

    .line 211
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v0, v1, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 215
    :cond_4
    iget-object p0, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 242
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v2, :cond_2

    .line 243
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    add-int/2addr v2, v1

    .line 244
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 247
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v2

    .line 248
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    .line 249
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v6, v2, v1

    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v2

    aput v7, v5, v6

    .line 250
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput v4, v5, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    :cond_1
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v2, v0

    sub-int/2addr v3, v1

    aput v3, v2, v0

    goto :goto_0

    .line 257
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    return-void
.end method

.method public static removeZeros(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 7

    .line 219
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    .line 220
    iput v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 222
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v0

    .line 225
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 226
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 229
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v1

    .line 230
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 231
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    aput v6, v4, v5

    .line 232
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    iget-object p0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p1, p0, p2

    return-void
.end method

.method public static symmLowerToFull(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 10

    .line 311
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_6

    .line 314
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 315
    invoke-static {p2, v0, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 316
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v1, 0x0

    .line 317
    iput-boolean v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 321
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 322
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 325
    aget v6, p2, v2

    sub-int v7, v4, v3

    add-int/2addr v6, v7

    aput v6, p2, v2

    :goto_1
    if-ge v3, v4, :cond_1

    .line 329
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    if-le v6, v2, :cond_0

    .line 331
    aget v7, p2, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    .line 340
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_2
    if-ge v1, v0, :cond_5

    .line 344
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 345
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    sub-int v5, v3, v2

    .line 348
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v4

    iget-object v7, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    .line 352
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v8, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v9, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v1

    add-int/2addr v9, v6

    sub-int/2addr v9, v5

    invoke-static {v7, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v8, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v9, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v9, v9, v1

    add-int/2addr v9, v6

    sub-int/2addr v9, v5

    invoke-static {v7, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-ge v2, v3, :cond_4

    .line 357
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v2

    if-le v5, v1, :cond_3

    .line 359
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v5

    aget v7, p2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, p2, v5

    add-int/2addr v6, v7

    .line 360
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v1, v5, v6

    .line 361
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v2

    aput v7, v5, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    return-void

    .line 312
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a lower triangular square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V
    .locals 7

    .line 51
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p2

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v0, 0x0

    move v1, v0

    .line 55
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    aget v4, p2, v2

    add-int/2addr v4, v3

    aput v4, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    .line 61
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v1, v0

    .line 65
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v3, v1, :cond_2

    add-int/lit8 v1, v3, -0x1

    .line 67
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v3

    :goto_2
    if-ge v0, v2, :cond_1

    .line 69
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    .line 70
    aget v5, p2, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, p2, v4

    .line 71
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v1, v4, v5

    .line 72
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_1

    :cond_2
    return-void
.end method

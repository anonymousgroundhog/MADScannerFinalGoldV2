.class public Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;
.super Ljava/lang/Object;
.source "ImplMultiplication_FSCC.java"


# direct methods
.method public static synthetic $r8$lambda$o_Mook6vadOet1o11xDsK05f_tE(FF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->sum(FF)F

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRowsInAInToC(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;I[I)V
    .locals 6

    .line 134
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 135
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 138
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v1, v1, v0

    .line 140
    aget v3, p4, v1

    if-ge v3, p3, :cond_1

    .line 141
    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v4, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 142
    iget v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 145
    :cond_0
    aput p3, p4, v1

    .line 146
    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v4, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    iget-object p0, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/2addr p3, v2

    iget p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p1, p0, p3

    return-void
.end method

.method public static dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F
    .locals 5

    .line 292
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 295
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p4

    .line 296
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p4, v1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 297
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p5, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p5

    .line 301
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 302
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v3, p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 304
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    .line 305
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v0

    aput v4, p5, v1

    add-int/lit8 v4, v1, 0x1

    .line 306
    aput v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 311
    :cond_0
    iget-object p0, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget p0, p0, p3

    .line 312
    iget-object p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p3, p3, 0x1

    aget p1, p1, p3

    const/4 p3, 0x0

    :goto_1
    if-ge p0, p1, :cond_2

    .line 314
    iget-object v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, p0

    .line 315
    aget v0, p4, v0

    if-eq v0, v2, :cond_1

    .line 316
    aget v0, p5, v0

    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, v1, p0

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return p3

    .line 293
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows must match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$multTransA$0(FF)F
    .locals 0

    return p1
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 153
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 154
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 11

    .line 50
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p4

    .line 51
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p3

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 54
    iput-boolean v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 55
    iput v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 58
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v1

    const/4 v1, 0x1

    move v8, v1

    .line 59
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v8, v1, :cond_3

    add-int/lit8 v9, v8, -0x1

    .line 61
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v10, v1, v8

    .line 62
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v8

    if-ne v0, v10, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    if-ge v0, v10, :cond_1

    .line 70
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v1, v0

    .line 71
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v1, v0

    add-int/lit8 v5, v9, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p3

    .line 73
    invoke-static/range {v1 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v9

    .line 78
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v9, 0x1

    aget v1, v1, v9

    :goto_2
    if-ge v0, v1, :cond_2

    .line 81
    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, p4, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v10

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 13

    const/4 v0, 0x0

    .line 159
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 160
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 161
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 164
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v1

    .line 165
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v1

    .line 167
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v0

    .line 168
    iget v7, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v7

    .line 169
    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v7, v6

    :goto_2
    if-ge v6, v7, :cond_0

    .line 173
    iget-object v8, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v9, v4, 0x1

    aget v10, v8, v4

    iget-object v11, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v12, v6, 0x1

    aget v6, v11, v6

    mul-float/2addr v6, v5

    add-float/2addr v10, v6

    aput v10, v8, v4

    move v4, v9

    move v6, v12

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V
    .locals 5

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
    aget v3, p6, v1

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
    aput p4, p6, v1

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
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    aput v3, p5, v1

    goto :goto_1

    .line 113
    :cond_1
    aget v3, p5, v1

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v0

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    aput v3, p5, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 1

    .line 184
    new-instance v0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;Lorg/ejml/ops/FOperatorBinary;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 261
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 262
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_1

    .line 263
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 264
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 266
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    .line 270
    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    .line 271
    iget-object v9, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v3

    iget-object v10, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/2addr v8, v6

    aget v8, v10, v8

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 274
    :cond_0
    iget-object v3, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v1

    aget v4, v3, v2

    add-float/2addr v4, v7

    aput v4, v3, v2

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 10

    .line 219
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/FGrowArray;->data:[F

    const/4 v0, 0x0

    move v1, v0

    .line 222
    :cond_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 224
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    .line 225
    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v3, v3, v4

    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 229
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    :goto_1
    if-ge v2, v3, :cond_0

    move v4, v0

    .line 231
    :goto_2
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v4, v5, :cond_2

    .line 232
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v2

    .line 233
    iget-object v6, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    aget v7, v6, v5

    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v2

    aget v9, p3, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 1

    .line 180
    new-instance v0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;Lorg/ejml/ops/FOperatorBinary;)V

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;Lorg/ejml/ops/FOperatorBinary;)V
    .locals 9

    .line 189
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/FGrowArray;->data:[F

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 194
    :goto_1
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_0

    .line 195
    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v3, v3, v4

    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 198
    :goto_2
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_2

    .line 199
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 200
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v3, v4, :cond_1

    .line 204
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v3

    .line 205
    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v3

    aget v7, p3, v7

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 208
    :cond_1
    iget-object v3, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    iget-object v7, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v1

    aget v2, v7, v2

    invoke-interface {p4, v2, v6}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v2

    aput v2, v3, v4

    move v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 242
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_1

    .line 243
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v2

    .line 244
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 246
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    .line 250
    iget-object v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    .line 251
    iget-object v9, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v3

    iget-object v10, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/2addr v8, v6

    aget v8, v10, v8

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    :cond_0
    iget-object v3, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v1

    aput v7, v3, v2

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V
    .locals 0

    .line 214
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 215
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)V

    return-void
.end method

.class public Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;
.super Ljava/lang/Object;
.source "ImplMultiplication_MT_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$mult$0(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;II)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move/from16 v9, p4

    .line 56
    iget-object v10, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    .line 57
    iget v1, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    sub-int v2, v9, p3

    invoke-virtual {v10, v1, v2, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 58
    iget-object v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 60
    iget-object v1, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget v2, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v11

    .line 61
    iget-object v0, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v1, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    move/from16 v0, p3

    :goto_0
    if-ge v0, v9, :cond_3

    sub-int v13, v0, p3

    .line 66
    iget-object v1, v8, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 67
    iget-object v2, v8, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v14, v0, 0x1

    aget v15, v2, v14

    .line 68
    iget-object v0, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v16, v13, 0x1

    iget v2, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v0, v16

    if-ne v1, v15, :cond_0

    goto :goto_3

    :cond_0
    move v6, v1

    :goto_1
    if-ge v6, v15, :cond_1

    .line 76
    iget-object v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v1, v0, v6

    .line 77
    iget-object v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v0, v6

    move-object/from16 v0, p0

    move-object v3, v10

    move/from16 v4, v16

    move-object v5, v11

    move/from16 v17, v6

    move-object v6, v12

    .line 79
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v13

    .line 84
    iget-object v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v16

    :goto_2
    if-ge v0, v1, :cond_2

    .line 87
    iget-object v2, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, v11, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    move v0, v14

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$mult$1(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;II)V
    .locals 9

    .line 146
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p4

    iget-object p4, p4, Lorg/ejml/data/FGrowArray;->data:[F

    :goto_0
    if-ge p5, p6, :cond_6

    .line 151
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    move v0, v2

    .line 154
    :goto_1
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_0

    .line 155
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v1, v0

    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v0

    add-int/2addr v4, p5

    aget v3, v3, v4

    aput v3, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 160
    :goto_2
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_3

    .line 161
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 162
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_4

    :cond_1
    :goto_3
    if-ge v1, v3, :cond_2

    .line 168
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    .line 169
    aget v6, p4, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v1

    iget v8, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    add-int/2addr v8, v0

    aget v8, p4, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, p4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    move v0, v4

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 176
    :goto_5
    iget v0, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v0, :cond_5

    .line 177
    iget-object v0, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p5

    aget v3, v0, v1

    aget v4, p4, v2

    add-float/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 180
    :cond_4
    :goto_6
    iget v0, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v0, :cond_5

    .line 181
    iget-object v0, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p5

    aget v3, p4, v2

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method static synthetic lambda$multAddTransA$3(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;II)V
    .locals 7

    .line 222
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/FGrowArray;->data:[F

    :goto_0
    if-ge p4, p5, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 225
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 226
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p4

    aget v2, v2, v3

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_0
    :goto_2
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 230
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 231
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v1, v2, :cond_1

    .line 235
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    .line 236
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    aget v5, p3, v5

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 240
    :cond_1
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p4

    aget v2, v1, v0

    add-float/2addr v2, v4

    aput v2, v1, v0

    move v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$multAddTransAB$6(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 9

    const/4 v0, 0x0

    .line 319
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 321
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 323
    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 327
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    .line 328
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v1

    iget-object v8, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/2addr v6, v4

    aget v6, v8, v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_0
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    aget v2, v1, v0

    add-float/2addr v2, v5

    aput v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA$2(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;II)V
    .locals 7

    .line 193
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/FGrowArray;->data:[F

    :goto_0
    if-ge p4, p5, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 196
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 197
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p4

    aget v2, v2, v3

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_0
    :goto_2
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_2

    .line 201
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 202
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v1, v2, :cond_1

    .line 206
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v1

    .line 207
    iget-object v6, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v1

    aget v5, p3, v5

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 211
    :cond_1
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p4

    aput v4, v1, v0

    move v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$multTransAB$5(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 9

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 301
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 303
    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 307
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v1

    .line 308
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v1

    iget-object v8, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/2addr v6, v4

    aget v6, v8, v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :cond_0
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    aput v5, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$4(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 259
    iget v3, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    move/from16 v4, p5

    move/from16 v5, p6

    :goto_0
    if-ge v4, v5, :cond_5

    .line 264
    iget v6, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v7}, Ljava/util/Arrays;->fill([FIIF)V

    move v6, v8

    .line 268
    :goto_1
    iget v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_2

    .line 269
    iget-object v7, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 270
    iget-object v9, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    if-ne v7, v9, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    if-ge v7, v9, :cond_1

    .line 276
    iget-object v11, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v7

    .line 277
    aget v12, v3, v11

    iget-object v13, v0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v13, v13, v7

    iget-object v14, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v15, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v15, v4

    add-int/2addr v15, v6

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v3, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    move v6, v10

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 284
    :goto_4
    iget v6, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v8, v6, :cond_4

    .line 285
    iget-object v6, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    aget v9, v6, v7

    aget v10, v3, v8

    add-float/2addr v9, v10

    aput v9, v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 288
    :cond_3
    :goto_5
    iget v6, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v8, v6, :cond_4

    .line 289
    iget-object v6, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    aget v9, v3, v8

    aput v9, v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Z",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p4, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    .line 93
    iget p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, p1, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->stitchMatrix(Lorg/ejml/data/FMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 318
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda6;-><init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 251
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda3;-><init>(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 298
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;-><init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 247
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Z",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda4;-><init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p4, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static stitchMatrix(Lorg/ejml/data/FMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "II",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(II)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 103
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move v0, p1

    .line 105
    :goto_0
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p3, v0}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;

    iget-object v2, v2, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, p1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 110
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 111
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 112
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput p1, v0, p1

    move v0, p1

    .line 113
    :goto_1
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 114
    invoke-virtual {p3, v0}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;

    .line 116
    iget-object v2, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v5, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v2, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v5, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move v3, v2

    .line 119
    :goto_2
    iget-object v4, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget v4, v4, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v3, v4, :cond_1

    .line 120
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v7, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 123
    :cond_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v1, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->assertEq(II)V

    .line 128
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget p1, p1, p2

    iget p0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->assertEq(II)V

    return-void
.end method

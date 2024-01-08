.class public Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;
.super Ljava/lang/Object;
.source "ImplMultiplication_MT_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$mult$0(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;II)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move/from16 v10, p4

    .line 54
    iget-object v11, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    .line 55
    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    sub-int v2, v10, p3

    invoke-virtual {v11, v1, v2, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 56
    iget-object v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 58
    iget-object v1, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget v2, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v12

    .line 59
    iget-object v0, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v13

    move/from16 v0, p3

    :goto_0
    if-ge v0, v10, :cond_3

    sub-int v14, v0, p3

    .line 64
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 65
    iget-object v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v15, v0, 0x1

    aget v7, v2, v15

    .line 66
    iget-object v0, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v16, v14, 0x1

    iget v2, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v0, v16

    if-ne v1, v7, :cond_0

    goto :goto_3

    :cond_0
    move v6, v1

    :goto_1
    if-ge v6, v7, :cond_1

    .line 74
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v1, v0, v6

    .line 75
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v2, v0, v6

    move-object/from16 v0, p0

    move-object v4, v11

    move/from16 v5, v16

    move/from16 v17, v6

    move-object v6, v12

    move/from16 v18, v7

    move-object v7, v13

    .line 77
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v18

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v14

    .line 82
    iget-object v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v16

    :goto_2
    if-ge v0, v1, :cond_2

    .line 85
    iget-object v2, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v12, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    move v0, v15

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$mult$1(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 144
    iget v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    add-int/2addr v3, v4

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    move/from16 v4, p5

    move/from16 v5, p6

    :goto_0
    if-ge v4, v5, :cond_6

    .line 149
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v9, v6, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    move v6, v9

    .line 152
    :goto_1
    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v6, v7, :cond_0

    .line 153
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v7, v6

    iget-object v8, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v4

    aget-wide v10, v8, v10

    aput-wide v10, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v9

    .line 158
    :goto_2
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_3

    .line 159
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 160
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v10, v6, 0x1

    aget v8, v8, v10

    if-ne v7, v8, :cond_1

    goto :goto_4

    :cond_1
    :goto_3
    if-ge v7, v8, :cond_2

    .line 166
    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v7

    .line 167
    aget-wide v12, v3, v11

    iget-object v14, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v14, v14, v7

    iget v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    add-int/2addr v9, v6

    aget-wide v16, v3, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v3, v11

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    :goto_4
    move v6, v10

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    const/4 v9, 0x0

    .line 174
    :goto_5
    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v6, :cond_5

    .line 175
    iget-object v6, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v9

    add-int/2addr v7, v4

    aget-wide v10, v6, v7

    aget-wide v12, v3, v9

    add-double/2addr v10, v12

    aput-wide v10, v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    .line 178
    :goto_6
    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v6, :cond_5

    .line 179
    iget-object v6, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v9

    add-int/2addr v7, v4

    aget-wide v10, v3, v9

    aput-wide v10, v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method static synthetic lambda$multAddTransA$3(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 220
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    if-ge v4, v5, :cond_3

    const/4 v6, 0x0

    move v7, v6

    .line 223
    :goto_1
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v7, v8, :cond_0

    .line 224
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v4

    aget-wide v8, v8, v9

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    :cond_0
    :goto_2
    iget v7, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_2

    .line 228
    iget-object v7, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 229
    iget-object v8, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    const-wide/16 v10, 0x0

    :goto_3
    if-ge v7, v8, :cond_1

    .line 233
    iget-object v12, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v7

    .line 234
    iget-object v13, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v7

    aget-wide v15, v3, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 238
    :cond_1
    iget-object v7, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v8

    add-int/2addr v6, v4

    aget-wide v12, v7, v6

    add-double/2addr v12, v10

    aput-wide v12, v7, v6

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$multAddTransAB$6(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 12

    const/4 v0, 0x0

    .line 317
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 318
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 319
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 321
    iget v4, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, p3

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 325
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v1

    .line 326
    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v1

    iget-object v10, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/2addr v7, v4

    aget-wide v10, v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_0
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    aget-wide v7, v1, v0

    add-double/2addr v7, v5

    aput-wide v7, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA$2(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 191
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    if-ge v4, v5, :cond_3

    const/4 v6, 0x0

    move v7, v6

    .line 194
    :goto_1
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v7, v8, :cond_0

    .line 195
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v4

    aget-wide v8, v8, v9

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 198
    :cond_0
    :goto_2
    iget v7, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_2

    .line 199
    iget-object v7, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 200
    iget-object v8, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    const-wide/16 v10, 0x0

    :goto_3
    if-ge v7, v8, :cond_1

    .line 204
    iget-object v12, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v7

    .line 205
    iget-object v13, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v13, v13, v7

    aget-wide v15, v3, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 209
    :cond_1
    iget-object v7, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v8

    add-int/2addr v6, v4

    aput-wide v10, v7, v6

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$multTransAB$5(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 12

    const/4 v0, 0x0

    .line 297
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 299
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 301
    iget v4, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, p3

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 305
    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v1

    .line 306
    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v8, v8, v1

    iget-object v10, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/2addr v7, v4

    aget-wide v10, v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_0
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    aput-wide v5, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$4(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 257
    iget v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    move/from16 v4, p5

    move/from16 v5, p6

    :goto_0
    if-ge v4, v5, :cond_5

    .line 262
    iget v6, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v9, v6, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    move v6, v9

    .line 266
    :goto_1
    iget v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v6, v7, :cond_2

    .line 267
    iget-object v7, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v6

    .line 268
    iget-object v8, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v10, v6, 0x1

    aget v8, v8, v10

    if-ne v7, v8, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    if-ge v7, v8, :cond_1

    .line 274
    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v7

    .line 275
    aget-wide v12, v3, v11

    iget-object v14, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v14, v14, v7

    iget-object v9, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v0, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v6

    aget-wide v16, v9, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v3, v11

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_1
    :goto_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v6, v10

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 v9, 0x0

    .line 282
    :goto_4
    iget v0, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v0, :cond_4

    .line 283
    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v4

    aget-wide v7, v0, v6

    aget-wide v10, v3, v9

    add-double/2addr v7, v10

    aput-wide v7, v0, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    .line 286
    :goto_5
    iget v0, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v0, :cond_4

    .line 287
    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v4

    aget-wide v7, v3, v9

    aput-wide v7, v0, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Z",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p4, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;-><init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    .line 91
    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, p1, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->stitchMatrix(Lorg/ejml/data/DMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;-><init>(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 316
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda6;-><init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 249
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p3, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 296
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-static {p0, p1, p2, v0, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;ZLpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Z",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-instance v1, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda5;-><init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p4, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method

.method public static stitchMatrix(Lorg/ejml/data/DMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "II",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(II)V

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 101
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v0, p1

    .line 103
    :goto_0
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p3, v0}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;

    iget-object v2, v2, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, p1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 108
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 109
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 110
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput p1, v0, p1

    move v0, p1

    .line 111
    :goto_1
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 112
    invoke-virtual {p3, v0}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;

    .line 114
    iget-object v2, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v5, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v2, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v5, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move v3, v2

    .line 117
    :goto_2
    iget-object v4, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget v4, v4, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v3, v4, :cond_1

    .line 118
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v7, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    :cond_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v1, v1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    iget p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->assertEq(II)V

    .line 126
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget p1, p1, p2

    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->assertEq(II)V

    return-void
.end method

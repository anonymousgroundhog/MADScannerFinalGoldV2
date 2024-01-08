.class public Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeTauAndDivide(II[DD)D
    .locals 7

    const-wide/16 v0, 0x0

    move v2, p0

    move-wide v3, v0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 180
    aget-wide v5, p2, v2

    div-double/2addr v5, p3

    aput-wide v5, p2, v2

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    .line 191
    aget-wide p0, p2, p0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    neg-double p3, p3

    :cond_1
    return-wide p3
.end method

.method public static computeTauAndDivide(II[DID)D
    .locals 8

    const-wide/16 v0, 0x0

    move v2, p0

    move-wide v3, v0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int v5, p3, v2

    .line 135
    aget-wide v6, p2, v5

    div-double/2addr v6, p4

    aput-wide v6, p2, v5

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    add-int/2addr p3, p0

    .line 147
    aget-wide p0, p2, p3

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    neg-double p4, p4

    :cond_1
    return-wide p4
.end method

.method public static divideElements(II[DD)V
    .locals 2

    :goto_0
    if-ge p0, p1, :cond_0

    .line 69
    aget-wide v0, p2, p0

    div-double/2addr v0, p3

    aput-wide v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements(II[DID)V
    .locals 3

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p3

    .line 83
    aget-wide v1, p2, v0

    div-double/2addr v1, p4

    aput-wide v1, p2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Bcol(III[D[DID)V
    .locals 3

    mul-int v0, p0, p2

    add-int/2addr v0, p5

    :goto_0
    if-ge p0, p1, :cond_0

    .line 117
    aget-wide v1, p3, p0

    div-double/2addr v1, p6

    aput-wide v1, p3, p0

    aput-wide v1, p4, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Brow(II[D[DID)V
    .locals 3

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p4

    .line 99
    aget-wide v1, p3, v0

    div-double/2addr v1, p5

    aput-wide v1, p3, v0

    aput-wide v1, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findMax([DII)D
    .locals 6

    add-int/2addr p2, p1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 54
    aget-wide v2, p0, p1

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    neg-double v2, v2

    :cond_0
    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p4

    .line 376
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_2

    .line 377
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p5

    const-wide/16 v4, 0x0

    move/from16 v6, p5

    move v7, v3

    :goto_1
    if-ge v6, v1, :cond_0

    .line 381
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v9, v7, 0x1

    aget-wide v7, v8, v7

    aget-wide v10, p1, v6

    mul-double/2addr v7, v10

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_1

    :cond_0
    move-wide/from16 v6, p2

    neg-double v8, v6

    mul-double/2addr v8, v4

    move/from16 v4, p5

    :goto_2
    if-ge v4, v1, :cond_1

    .line 387
    iget-object v5, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v10, v3, 0x1

    aget-wide v11, v5, v3

    aget-wide v13, p1, v4

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    aput-wide v11, v5, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p4

    .line 228
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_0

    .line 229
    aget-wide v3, p1, p5

    iget-object v5, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v6, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v6, v6, p5

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    aput-wide v3, p7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 233
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p4

    .line 234
    aget-wide v4, p1, v2

    move/from16 v6, p4

    .line 235
    :goto_2
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    .line 236
    aget-wide v7, p7, v6

    iget-object v9, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v10, v3, 0x1

    aget-wide v11, v9, v3

    mul-double/2addr v11, v4

    add-double/2addr v7, v11

    aput-wide v7, p7, v6

    add-int/lit8 v6, v6, 0x1

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, p4

    .line 240
    :goto_3
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_3

    .line 241
    aget-wide v3, p7, v2

    mul-double/2addr v3, p2

    aput-wide v3, p7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move/from16 v2, p5

    :goto_4
    if-ge v2, v1, :cond_5

    .line 248
    aget-wide v3, p1, v2

    .line 250
    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v2

    add-int v5, v5, p4

    move/from16 v6, p4

    .line 251
    :goto_5
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_4

    .line 252
    iget-object v7, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v8, v5, 0x1

    aget-wide v9, v7, v5

    aget-wide v11, p7, v6

    mul-double/2addr v11, v3

    sub-double/2addr v9, v11

    aput-wide v9, v7, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DIDIII[D)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p7

    move/from16 v2, p5

    .line 326
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_0

    add-int v3, p6, p2

    .line 327
    aget-wide v3, p1, v3

    iget-object v5, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v6, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v6, v6, p6

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    aput-wide v3, p8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p6, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 331
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p5

    add-int v4, v2, p2

    .line 332
    aget-wide v4, p1, v4

    move/from16 v6, p5

    .line 333
    :goto_2
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    .line 334
    aget-wide v7, p8, v6

    iget-object v9, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v10, v3, 0x1

    aget-wide v11, v9, v3

    mul-double/2addr v11, v4

    add-double/2addr v7, v11

    aput-wide v7, p8, v6

    add-int/lit8 v6, v6, 0x1

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, p5

    .line 337
    :goto_3
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_3

    .line 338
    aget-wide v3, p8, v2

    mul-double v3, v3, p3

    aput-wide v3, p8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move/from16 v2, p6

    :goto_4
    if-ge v2, v1, :cond_5

    add-int v3, v2, p2

    .line 345
    aget-wide v3, p1, v3

    .line 347
    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v2

    add-int v5, v5, p5

    move/from16 v6, p5

    .line 348
    :goto_5
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_4

    .line 349
    iget-object v7, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v8, v5, 0x1

    aget-wide v9, v7, v5

    aget-wide v11, p8, v6

    mul-double/2addr v11, v3

    sub-double/2addr v9, v11

    aput-wide v9, v7, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p6

    .line 274
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_0

    .line 275
    iget-object v3, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v4, v4, p7

    add-int/2addr v4, v2

    aget-wide v3, v3, v4

    mul-double v3, v3, p2

    aput-wide v3, p9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p7, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 279
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, v3

    add-int v4, v4, p6

    .line 280
    aget-wide v5, p1, v3

    move/from16 v7, p6

    .line 281
    :goto_2
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v7, v8, :cond_1

    .line 282
    aget-wide v8, p9, v7

    iget-object v10, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v11, v4, 0x1

    aget-wide v12, v10, v4

    mul-double/2addr v12, v5

    add-double/2addr v8, v12

    aput-wide v8, p9, v7

    add-int/lit8 v7, v7, 0x1

    move v4, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move/from16 v3, p6

    .line 286
    :goto_3
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_3

    .line 287
    aget-wide v4, p9, v3

    mul-double v4, v4, p4

    aput-wide v4, p9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 292
    :cond_3
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v3, v3, p7

    add-int v3, v3, p6

    move/from16 v4, p6

    .line 293
    :goto_4
    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_4

    .line 294
    iget-object v5, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v5, v3

    aget-wide v9, p9, v4

    mul-double v9, v9, p2

    sub-double/2addr v7, v9

    aput-wide v7, v5, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v2, v1, :cond_6

    .line 300
    aget-wide v3, p1, v2

    .line 302
    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v2

    add-int v5, v5, p6

    move/from16 v6, p6

    .line 303
    :goto_6
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_5

    .line 304
    iget-object v7, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v8, v5, 0x1

    aget-wide v9, v7, v5

    aget-wide v11, p9, v6

    mul-double/2addr v11, v3

    sub-double/2addr v9, v11

    aput-wide v9, v7, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

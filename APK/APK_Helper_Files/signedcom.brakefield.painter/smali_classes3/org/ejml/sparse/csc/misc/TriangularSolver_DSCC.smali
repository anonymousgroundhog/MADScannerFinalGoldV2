.class public Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;
.super Ljava/lang/Object;
.source "TriangularSolver_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eliminationTree(Lorg/ejml/data/DMatrixSparseCSC;Z[ILorg/ejml/data/IGrowArray;)V
    .locals 10

    .line 428
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 429
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 431
    array-length v2, p2

    if-lt v2, v1, :cond_8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v1

    .line 434
    invoke-static {p3, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    add-int v5, v1, v4

    .line 441
    aput v3, p3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v1, :cond_7

    .line 447
    aput v3, p2, v2

    add-int/lit8 v0, v2, 0x0

    .line 448
    aput v3, p3, v0

    .line 450
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v2

    .line 451
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    :goto_3
    if-ge v0, v4, :cond_6

    .line 455
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v0

    if-eqz p1, :cond_2

    add-int v7, v1, v6

    .line 457
    aget v7, p3, v7

    goto :goto_4

    :cond_2
    move v7, v6

    :goto_4
    if-eq v7, v3, :cond_4

    if-ge v7, v2, :cond_4

    add-int/lit8 v8, v7, 0x0

    .line 461
    aget v9, p3, v8

    .line 462
    aput v2, p3, v8

    if-ne v9, v3, :cond_3

    .line 464
    aput v2, p2, v7

    goto :goto_5

    :cond_3
    move v7, v9

    goto :goto_4

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    add-int/2addr v6, v1

    .line 472
    aput v2, p3, v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    return-void

    .line 432
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parent must be of length N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static postorder([II[ILorg/ejml/data/IGrowArray;)V
    .locals 5

    .line 492
    array-length v0, p0

    if-lt v0, p1, :cond_6

    .line 494
    array-length v0, p2

    if-lt v0, p1, :cond_5

    mul-int/lit8 v0, p1, 0x3

    .line 497
    invoke-static {p3, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p1, :cond_0

    .line 506
    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 511
    aget v3, p0, v1

    if-ne v3, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int v4, p1, v1

    .line 514
    aget v3, p3, v3

    aput v3, p3, v4

    .line 515
    aget v3, p0, v1

    aput v1, p3, v3

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_3
    if-ge v0, p1, :cond_4

    .line 521
    aget v3, p0, v0

    if-eq v3, v2, :cond_3

    goto :goto_4

    .line 524
    :cond_3
    invoke-static {v0, v1, p3, p2, p1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->postorder_dfs(II[I[II)I

    move-result v1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 495
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "post must be at least of length N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 493
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parent must be at least of length N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static postorder_dfs(II[I[II)I
    .locals 4

    mul-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, v0, 0x0

    .line 535
    aput p0, p2, v1

    const/4 p0, 0x0

    :goto_0
    if-ltz p0, :cond_1

    add-int v1, v0, p0

    .line 537
    aget v1, p2, v1

    .line 538
    aget v2, p2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v2, p1, 0x1

    .line 543
    aput v1, p3, p1

    move p1, v2

    goto :goto_0

    :cond_0
    add-int v3, p4, v2

    .line 545
    aget v3, p2, v3

    aput v3, p2, v1

    add-int/lit8 p0, p0, 0x1

    add-int v1, v0, p0

    .line 547
    aput v2, p2, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static qualityTriangular(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 8

    .line 609
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 611
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v2

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 613
    invoke-virtual {p0, v4, v4}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    return-wide v4

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 621
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide v6

    div-double/2addr v6, v2

    mul-double/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static searchNzRowsElim(Lorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I
    .locals 6

    .line 567
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 570
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    .line 572
    aget v3, p4, p1

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x2

    aput v3, p4, p1

    :goto_0
    if-ge v1, v2, :cond_3

    .line 574
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    if-le v3, p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 581
    :goto_1
    aget v5, p4, v3

    if-ltz v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 582
    aput v3, p3, v4

    .line 583
    aget v4, p4, v3

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x2

    aput v4, p4, v3

    .line 581
    aget v3, p2, v3

    move v4, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, -0x1

    .line 586
    aget v3, p3, v4

    aput v3, p3, v0

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p2, v0

    .line 591
    :goto_4
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge p2, v1, :cond_4

    .line 592
    aget v1, p3, p2

    aget v2, p4, v1

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    aput v2, p4, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 594
    :cond_4
    aget p0, p4, p1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x2

    aput p0, p4, p1

    return v0
.end method

.method public static searchNzRowsInX(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I
    .locals 8

    .line 325
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 326
    array-length v1, p4

    if-lt v1, v0, :cond_4

    .line 328
    array-length v1, p5

    mul-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_3

    .line 339
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p2

    .line 340
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p2, p2, 0x1

    aget p2, v2, p2

    move v4, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 344
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    if-ge v2, v0, :cond_0

    .line 346
    aget v3, p5, v2

    if-nez v3, :cond_0

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 347
    invoke-static/range {v2 .. v7}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->searchNzRowsInX_DFS(ILorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I

    move-result v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p0, v4

    :goto_1
    if-ge p0, v0, :cond_2

    .line 353
    aget p1, p4, p0

    const/4 p2, 0x0

    aput p2, p5, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return v4

    .line 329
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "w must be at least 2*G.numCols in length (2*number of rows in X) and first N elements must be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "xi must be at least G.numCols="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static searchNzRowsInX_DFS(ILorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I
    .locals 9

    .line 370
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v1, 0x0

    .line 372
    aput p0, p4, v1

    move p0, v1

    :cond_0
    :goto_0
    if-ltz p0, :cond_9

    .line 376
    aget v2, p4, p0

    if-eqz p3, :cond_1

    .line 377
    aget v3, p3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 378
    :goto_1
    aget v4, p5, v2

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 379
    aput v5, p5, v2

    add-int v4, v0, p0

    if-ltz v3, :cond_3

    if-lt v3, v0, :cond_2

    goto :goto_2

    .line 381
    :cond_2
    iget-object v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v6, v6, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v1

    :goto_3
    aput v6, p5, v4

    :cond_4
    add-int v4, v0, p0

    .line 388
    aget v6, p5, v4

    if-ltz v3, :cond_6

    if-lt v3, v0, :cond_5

    goto :goto_4

    .line 389
    :cond_5
    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v7, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v1

    :goto_5
    if-ge v6, v3, :cond_8

    .line 392
    iget-object v7, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v7, v7, v6

    if-ge v7, v0, :cond_7

    .line 393
    aget v8, p5, v7

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 394
    aput v6, p5, v4

    add-int/lit8 p0, p0, 0x1

    .line 395
    aput v7, p4, p0

    move v5, v1

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz v5, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p2, p2, -0x1

    .line 403
    aput v2, p4, p2

    goto :goto_0

    :cond_9
    return p2
.end method

.method public static solve(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 216
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v10

    if-nez p6, :cond_0

    .line 217
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p6

    .line 218
    :goto_0
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v11, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v12

    .line 219
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v2, p7

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v13

    const/4 v0, 0x0

    .line 221
    iput v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 222
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v0, v1, v0

    .line 223
    iput-boolean v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    move-object/from16 v15, p2

    move v14, v0

    .line 225
    :goto_1
    iget v0, v15, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v14, v0, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move-object v4, v10

    move-object/from16 v5, p4

    move-object v6, v11

    move-object v7, v13

    .line 226
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveColB(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;I[D[ILorg/ejml/data/IGrowArray;[I)I

    move-result v0

    .line 228
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    sub-int/2addr v1, v0

    .line 229
    iget-object v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v2

    iget v3, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 230
    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    invoke-virtual {v9, v2, v4}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 233
    :cond_1
    :goto_2
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v0, v1, :cond_2

    .line 234
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aget v3, v12, v0

    aput v3, v1, v2

    .line 235
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aget v3, v12, v0

    aget-wide v5, v10, v3

    aput-wide v5, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 233
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v4

    iput v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    goto :goto_2

    .line 237
    :cond_2
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v14, v14, 0x1

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v14

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static solveColB(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;I[D[ILorg/ejml/data/IGrowArray;[I)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 263
    iget v8, v6, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v0, p6

    .line 264
    invoke-static {v0, v8}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object v4, v9

    move-object/from16 v5, p7

    .line 265
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->searchNzRowsInX(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_0

    .line 269
    aget v2, v9, v1

    const-wide/16 v3, 0x0

    aput-wide v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, v7, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p3

    .line 273
    iget-object v2, v7, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, p3, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 275
    iget-object v3, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    iget-object v4, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v1

    aput-wide v4, p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v8, :cond_6

    .line 279
    aget v2, v9, v1

    if-eqz p5, :cond_2

    .line 280
    aget v3, p5, v2

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-gez v3, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 285
    aget-wide v4, p4, v2

    iget-object v7, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v10, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v10, v10, v3

    aget-wide v10, v7, v10

    div-double/2addr v4, v10

    aput-wide v4, p4, v2

    .line 286
    iget-object v4, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    .line 287
    iget-object v5, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    goto :goto_4

    .line 289
    :cond_4
    aget-wide v4, p4, v2

    iget-object v7, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v10, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v11, v3, 0x1

    aget v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    aget-wide v12, v7, v10

    div-double/2addr v4, v12

    aput-wide v4, p4, v2

    .line 290
    iget-object v4, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v3

    .line 291
    iget-object v3, v6, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v11

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ge v4, v3, :cond_5

    .line 297
    iget-object v5, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v5, v5, v4

    aget-wide v10, p4, v5

    iget-object v7, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v12, v7, v4

    aget-wide v14, p4, v2

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, p4, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method public static solveL(Lorg/ejml/data/DMatrixSparseCSC;[D)V
    .locals 11

    .line 40
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 42
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    .line 46
    aget-wide v5, p1, v2

    iget-object v7, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v7, v7, v1

    div-double/2addr v5, v7

    aput-wide v5, p1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_0

    .line 49
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v1

    .line 50
    aget-wide v7, p1, v2

    iget-object v9, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v1

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    aput-wide v7, p1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveTran(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 118
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v10

    .line 120
    invoke-virtual/range {p3 .. p3}, Lorg/ejml/data/DMatrixSparseCSC;->zero()V

    const/4 v11, 0x0

    .line 121
    iput-boolean v11, v9, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 124
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v12

    .line 126
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, v7, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v2, p7

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v13

    move v0, v11

    .line 128
    :goto_0
    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_6

    .line 129
    iget-object v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 130
    iget-object v2, v8, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v14, v0, 0x1

    aget v0, v2, v14

    move v2, v11

    :goto_1
    const/4 v15, 0x1

    if-ge v1, v0, :cond_0

    .line 135
    iget-object v3, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    .line 136
    iget-object v4, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v1

    aput-wide v4, v10, v3

    .line 137
    aput v15, v13, v3

    add-int/lit8 v4, v2, 0x1

    .line 138
    aput v3, v12, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    sub-int/2addr v0, v15

    move/from16 v16, v0

    move v5, v2

    :goto_2
    if-ltz v16, :cond_2

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p4

    move/from16 v6, v16

    .line 143
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveTranColumn(Lorg/ejml/data/DMatrixSparseCSC;[D[I[I[III)I

    move-result v5

    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    :cond_1
    move v5, v2

    move v6, v11

    .line 146
    :goto_3
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v6, v0, :cond_2

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p4

    move/from16 v16, v6

    .line 147
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveTranColumn(Lorg/ejml/data/DMatrixSparseCSC;[D[I[I[III)I

    move-result v5

    add-int/lit8 v6, v16, 0x1

    goto :goto_3

    .line 152
    :cond_2
    iget v0, v8, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v14, v0, :cond_3

    move v0, v11

    :goto_4
    if-ge v0, v5, :cond_3

    .line 154
    aget v1, v12, v0

    aput v11, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 159
    :cond_3
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v0, v0

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_4

    .line 160
    iget v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {v9, v0, v15}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    :cond_4
    move v0, v11

    :goto_5
    if-ge v0, v5, :cond_5

    .line 163
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aget v3, v12, v0

    aput v3, v1, v2

    .line 164
    iget-object v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aget v3, v12, v0

    aget-wide v3, v10, v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 162
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v15

    iput v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    goto :goto_5

    .line 166
    :cond_5
    iget-object v0, v9, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v14

    move v0, v14

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static solveTranColumn(Lorg/ejml/data/DMatrixSparseCSC;[D[I[I[III)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p6

    .line 172
    iget-object v2, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    .line 173
    iget-object v3, v0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    const/4 v9, 0x1

    if-ge v2, v3, :cond_3

    if-eqz p4, :cond_0

    .line 178
    aget v10, p4, v2

    goto :goto_1

    :cond_0
    move v10, v2

    .line 179
    :goto_1
    iget-object v11, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v10

    if-ne v11, v1, :cond_1

    move v4, v2

    goto :goto_2

    .line 184
    :cond_1
    aget v12, p3, v11

    if-ne v12, v9, :cond_2

    .line 186
    iget-object v9, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v10

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_3
    aget v2, p3, v1

    if-ne v2, v9, :cond_4

    .line 190
    aget-wide v2, p1, v1

    sub-double/2addr v2, v7

    iget-object v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v4

    div-double/2addr v2, v4

    aput-wide v2, p1, v1

    goto :goto_3

    :cond_4
    cmpl-double v2, v7, v5

    if-eqz v2, :cond_5

    .line 193
    aput v9, p3, v1

    neg-double v2, v7

    .line 194
    iget-object v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v0, v4

    div-double/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v0, p5, 0x1

    .line 195
    aput v1, p2, p5

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v0, p5

    :goto_4
    return v0
.end method

.method public static solveTranL(Lorg/ejml/data/DMatrixSparseCSC;[D)V
    .locals 10

    .line 64
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 67
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 68
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/lit8 v3, v1, 0x1

    :goto_1
    if-ge v3, v2, :cond_0

    .line 71
    aget-wide v4, p1, v0

    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v3

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_0
    aget-wide v2, p1, v0

    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v1

    div-double/2addr v2, v4

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU(Lorg/ejml/data/DMatrixSparseCSC;[D)V
    .locals 11

    .line 84
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 86
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 88
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v0

    .line 89
    aget-wide v3, p1, v0

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v1, v1, -0x1

    aget-wide v5, v5, v1

    div-double/2addr v3, v5

    aput-wide v3, p1, v0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_0

    .line 92
    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v5

    .line 93
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v5

    mul-double/2addr v9, v3

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

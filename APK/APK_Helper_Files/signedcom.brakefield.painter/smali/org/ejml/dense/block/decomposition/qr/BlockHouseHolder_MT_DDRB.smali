.class public Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;
.super Ljava/lang/Object;
.source "BlockHouseHolder_MT_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V
    .locals 13

    move-object/from16 v9, p9

    add-int v0, p2, p11

    .line 458
    iget v1, v9, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iget v2, v9, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 461
    invoke-virtual {v5, v6, v0}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v1

    mul-double v1, v1, p7

    add-double v1, p3, v1

    move/from16 v10, p10

    invoke-virtual {v9, v10, v0, v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    add-int/lit8 v11, v0, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v12, p12

    .line 463
    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    return-void
.end method

.method public static computeHouseHolderCol(ILorg/ejml/data/DSubmatrixD1;[DI)Z
    .locals 6

    .line 91
    invoke-static {p0, p1, p3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->findMaxCol(ILorg/ejml/data/DSubmatrixD1;I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    invoke-static {p0, p1, p3, v0, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->computeTauAndDivideCol(ILorg/ejml/data/DSubmatrixD1;ID)D

    move-result-wide v2

    .line 100
    invoke-virtual {p1, p3, p3}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 101
    invoke-static {p0, p1, p3, v4, v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->divideElementsCol(ILorg/ejml/data/DSubmatrixD1;ID)V

    .line 103
    iget p0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr p0, p3

    div-double/2addr v4, v2

    aput-wide v4, p2, p0

    mul-double/2addr v2, v0

    neg-double v0, v2

    .line 107
    invoke-virtual {p1, p3, p3, v0, v1}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    const/4 p0, 0x1

    return p0
.end method

.method public static computeHouseHolderRow(ILorg/ejml/data/DSubmatrixD1;[DI)Z
    .locals 18

    move-object/from16 v9, p1

    move/from16 v10, p3

    add-int/lit8 v11, v10, 0x1

    move/from16 v6, p0

    .line 130
    invoke-static {v6, v9, v10, v11}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->findMaxRow(ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmpl-double v0, v12, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move v3, v11

    move-wide v4, v12

    .line 136
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->computeTauAndDivideRow(ILorg/ejml/data/DSubmatrixD1;IID)D

    move-result-wide v14

    .line 139
    invoke-virtual {v9, v10, v11}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v0

    add-double v16, v0, v14

    .line 140
    iget v0, v9, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v9, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v8, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v16

    move-object/from16 v5, p1

    move/from16 v6, p3

    move v7, v11

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->div_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    .line 142
    iget v0, v9, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v0, v10

    div-double v16, v16, v14

    aput-wide v16, p2, v0

    neg-double v0, v14

    mul-double/2addr v0, v12

    .line 145
    invoke-virtual {v9, v10, v11, v0, v1}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    const/4 v0, 0x1

    return v0
.end method

.method public static computeTauAndDivideCol(ILorg/ejml/data/DSubmatrixD1;ID)D
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 544
    iget v2, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 546
    iget-object v3, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget-object v3, v3, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 551
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v11, :cond_2

    .line 552
    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v11, v4

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 554
    iget-object v12, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/DMatrixD1;

    iget v12, v12, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v12, v4

    iget v13, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    add-int v12, v12, p2

    .line 556
    iget v13, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v4, v13, :cond_0

    mul-int v9, v2, p2

    add-int/2addr v12, v9

    .line 559
    aget-wide v9, v3, v12

    div-double v9, v9, p3

    aput-wide v9, v3, v12

    mul-double v13, v9, v9

    add-double/2addr v7, v13

    add-int/2addr v12, v2

    add-int/lit8 v13, p2, 0x1

    :goto_1
    if-ge v13, v11, :cond_1

    .line 564
    aget-wide v14, v3, v12

    div-double v14, v14, p3

    aput-wide v14, v3, v12

    mul-double/2addr v14, v14

    add-double/2addr v7, v14

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v2

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_1

    .line 569
    aget-wide v14, v3, v12

    div-double v14, v14, p3

    aput-wide v14, v3, v12

    mul-double/2addr v14, v14

    add-double/2addr v7, v14

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v2

    goto :goto_2

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    .line 575
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v2, v9, v5

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    return-wide v0
.end method

.method public static computeTauAndDivideRow(ILorg/ejml/data/DSubmatrixD1;IID)D
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 606
    iget v2, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 608
    iget-object v3, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget-object v3, v3, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 613
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v4, v4, p3

    rem-int v5, p3, v0

    sub-int/2addr v4, v5

    const-wide/16 v6, 0x0

    move v8, v4

    move-wide v9, v6

    move-wide v11, v9

    .line 616
    :goto_0
    iget v13, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v8, v13, :cond_2

    .line 617
    iget v13, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v13, v8

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 619
    iget v14, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v15, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v15, Lorg/ejml/data/DMatrixD1;

    iget v15, v15, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v14, v15

    mul-int v15, v2, v8

    add-int/2addr v14, v15

    mul-int v15, p2, v13

    add-int/2addr v14, v15

    if-ne v8, v4, :cond_0

    add-int/2addr v14, v5

    .line 624
    aget-wide v11, v3, v14

    div-double v11, v11, p4

    aput-wide v11, v3, v14

    mul-double v15, v11, v11

    add-double/2addr v9, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v5, 0x1

    :goto_1
    if-ge v15, v13, :cond_1

    add-int/lit8 v16, v14, 0x1

    .line 629
    aget-wide v17, v3, v14

    div-double v17, v17, p4

    aput-wide v17, v3, v14

    mul-double v17, v17, v17

    add-double v9, v9, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_1

    add-int/lit8 v16, v14, 0x1

    .line 634
    aget-wide v17, v3, v14

    div-double v17, v17, p4

    aput-wide v17, v3, v14

    mul-double v17, v17, v17

    add-double v9, v9, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_2

    :cond_1
    add-int/2addr v8, v0

    goto :goto_0

    .line 640
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v2, v11, v6

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    return-wide v0
.end method

.method public static computeW_Column(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;[DI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ejml/data/DSubmatrixD1;",
            "Lorg/ejml/data/DSubmatrixD1;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;[DI)V"
        }
    .end annotation

    .line 758
    invoke-static {p3}, Lorg/ejml/UtilEjml;->checkDeclare_F64(Lpabeles/concurrency/GrowArray;)Lpabeles/concurrency/GrowArray;

    move-result-object p3

    .line 759
    iget v0, p2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 762
    aget-wide v6, p4, p5

    move v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, v0

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->initializeW(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V

    .line 764
    iget v1, p2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, p2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 766
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->grow()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DGrowArray;

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/DGrowArray;->data:[D

    const/4 v1, 0x1

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_0

    .line 771
    invoke-static {p0, p1, v8, p3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->computeY_t_V(ILorg/ejml/data/DSubmatrixD1;I[D)V

    add-int v1, p5, v8

    .line 772
    aget-wide v6, p4, v1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v8

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->computeZ(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I[DD)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeY_t_V(ILorg/ejml/data/DSubmatrixD1;I[D)V
    .locals 8

    .line 898
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    .line 900
    new-instance v0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;

    move-object v2, v0

    move-object v3, p3

    move v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;-><init>([DILorg/ejml/data/DSubmatrixD1;II)V

    const/4 p0, 0x0

    invoke-static {p0, p2, v0}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static computeZ(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I[DD)V
    .locals 17

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 831
    iget v0, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v0, v1

    .line 833
    iget-object v0, v4, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 834
    iget-object v0, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v13, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 836
    iget-object v0, v4, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v3, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    move-wide/from16 v9, p5

    neg-double v11, v9

    .line 840
    iget v14, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;

    move-object v0, v8

    move/from16 v1, p0

    move/from16 v5, p3

    move-object/from16 v16, v8

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v13}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;-><init>(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II[D[DDD[D)V

    move/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v14, v15, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static decomposeQR_block_col(ILorg/ejml/data/DSubmatrixD1;[D)Z
    .locals 5

    .line 56
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 57
    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-static {p0, p1, p2, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->computeHouseHolderCol(ILorg/ejml/data/DSubmatrixD1;[DI)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 66
    :cond_0
    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    aget-wide v3, p2, v3

    invoke-static {p0, p1, v2, v3, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->rank1UpdateMultR_Col(ILorg/ejml/data/DSubmatrixD1;ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static divideElementsCol(ILorg/ejml/data/DSubmatrixD1;ID)V
    .locals 11

    .line 472
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 474
    iget-object v0, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 476
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v9, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v10, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;

    move-object v1, v10

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;-><init>(ILorg/ejml/data/DSubmatrixD1;II[DD)V

    invoke-static {v0, v9, p0, v10}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static findMaxCol(ILorg/ejml/data/DSubmatrixD1;I)D
    .locals 11

    .line 653
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 655
    iget-object v1, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 659
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    const-wide/16 v3, 0x0

    :goto_0
    iget v5, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v2, v5, :cond_4

    .line 660
    iget v5, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v2

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 662
    iget-object v6, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v2

    iget v7, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 664
    iget v7, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v2, v7, :cond_1

    mul-int v7, v0, p2

    add-int/2addr v6, v7

    move v7, p2

    :goto_1
    if-ge v7, v5, :cond_3

    .line 667
    aget-wide v8, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v3

    if-lez v10, :cond_0

    move-wide v3, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 674
    aget-wide v8, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v3

    if-lez v10, :cond_2

    move-wide v3, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v0

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method public static findMaxRow(ILorg/ejml/data/DSubmatrixD1;II)D
    .locals 11

    .line 692
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 694
    iget-object v1, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 698
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    const-wide/16 v3, 0x0

    :goto_0
    iget v5, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v2, v5, :cond_4

    .line 699
    iget v5, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v2

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 701
    iget v6, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v7, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v0, v2

    add-int/2addr v6, v7

    mul-int v7, p2, v5

    add-int/2addr v6, v7

    .line 703
    iget v7, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v2, v7, :cond_1

    add-int/2addr v6, p3

    move v7, p3

    :goto_1
    if-ge v7, v5, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 707
    aget-wide v9, v1, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v6, v9, v3

    if-lez v6, :cond_0

    move-wide v3, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 714
    aget-wide v9, v1, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v6, v9, v3

    if-lez v6, :cond_2

    move-wide v3, v9

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method public static initializeW(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V
    .locals 12

    move-object v2, p1

    .line 795
    iget-object v0, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v4, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    move-object v3, p2

    .line 796
    iget-object v0, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 798
    iget v9, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v11, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;

    move-object v0, v11

    move v1, p0

    move-wide/from16 v5, p4

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DDI[D)V

    move v0, p0

    invoke-static {v9, v10, p0, v11}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static innerProdCol(ILorg/ejml/data/DSubmatrixD1;IIII)D
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 375
    iget-object v2, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget-object v2, v2, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 377
    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v3, v3, p2

    rem-int v4, p2, v0

    sub-int/2addr v3, v4

    .line 378
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v5, v5, p4

    rem-int v6, p4, v0

    sub-int/2addr v5, v6

    .line 383
    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    const-wide/16 v8, 0x0

    :goto_0
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v7, v10, :cond_2

    .line 385
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v10, v7

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 387
    iget-object v11, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v11, Lorg/ejml/data/DMatrixD1;

    iget v11, v11, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v11, v7

    mul-int v12, v10, v3

    add-int/2addr v11, v12

    add-int/2addr v11, v4

    .line 388
    iget-object v12, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/DMatrixD1;

    iget v12, v12, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v12, v7

    mul-int v13, v10, v5

    add-int/2addr v12, v13

    add-int/2addr v12, v6

    .line 390
    iget v13, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v7, v13, :cond_0

    add-int/lit8 v8, v4, 0x1

    mul-int v8, v8, p3

    add-int/2addr v11, v8

    mul-int v8, p5, v4

    add-int/2addr v12, v8

    .line 396
    aget-wide v8, v2, v12

    add-int v12, v12, p5

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    mul-int v10, v10, p3

    add-int/2addr v10, v11

    :goto_1
    if-eq v11, v10, :cond_1

    .line 404
    aget-wide v13, v2, v11

    aget-wide v15, v2, v12

    mul-double/2addr v13, v15

    add-double/2addr v8, v13

    add-int v11, v11, p3

    add-int v12, v12, p5

    goto :goto_1

    :cond_0
    mul-int v10, v10, p3

    add-int/2addr v10, v11

    :goto_2
    if-eq v11, v10, :cond_1

    .line 411
    aget-wide v13, v2, v11

    aget-wide v15, v2, v12

    mul-double/2addr v13, v15

    add-double/2addr v8, v13

    add-int v11, v11, p3

    add-int v12, v12, p5

    goto :goto_2

    :cond_1
    add-int/2addr v7, v0

    goto :goto_0

    :cond_2
    return-wide v8
.end method

.method public static innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D
    .locals 9

    add-int/2addr p5, p2

    .line 440
    iget v0, p3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, p5

    iget v1, p3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-lt v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 444
    :cond_0
    invoke-virtual {p3, p4, p5}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v0

    add-int/lit8 v7, p5, 0x1

    .line 446
    iget p5, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v8, p5, v2

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->dot_row(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method static synthetic lambda$computeY_t_V$4([DILorg/ejml/data/DSubmatrixD1;III)V
    .locals 6

    move v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p4

    .line 901
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->innerProdCol(ILorg/ejml/data/DSubmatrixD1;IIII)D

    move-result-wide p1

    aput-wide p1, p0, p5

    return-void
.end method

.method static synthetic lambda$computeZ$3(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II[D[DDD[DI)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p13

    .line 841
    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v4, v3

    move/from16 v5, p0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v3, p2

    .line 843
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 844
    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v1, v4

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    .line 845
    iget-object v1, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, v3

    iget v7, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v7, v4

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 847
    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-ne v3, v0, :cond_3

    move v0, v9

    :goto_0
    if-ge v0, v4, :cond_5

    move-wide v10, v7

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_0

    add-int v12, v6, v3

    .line 854
    aget-wide v12, p6, v12

    aget-wide v14, p7, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_1

    move-wide/from16 v12, p8

    neg-double v14, v12

    mul-double/2addr v14, v10

    .line 859
    aput-wide v14, p6, v5

    goto :goto_2

    :cond_1
    move-wide/from16 v12, p8

    if-ne v0, v2, :cond_2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v14

    mul-double v10, v10, p10

    .line 861
    aput-wide v10, p6, v5

    goto :goto_2

    .line 863
    :cond_2
    aget-wide v14, p12, v1

    add-double/2addr v14, v10

    mul-double v10, p10, v14

    aput-wide v10, p6, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v5, v5, p5

    add-int v6, v6, p5

    add-int v1, v1, p5

    goto :goto_0

    :cond_3
    mul-int v0, p5, v4

    add-int/2addr v0, v5

    :goto_3
    if-eq v5, v0, :cond_5

    move-wide v10, v7

    move v3, v9

    :goto_4
    if-ge v3, v2, :cond_4

    add-int v4, v6, v3

    .line 874
    aget-wide v12, p6, v4

    aget-wide v14, p7, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 878
    :cond_4
    aget-wide v3, p12, v1

    add-double/2addr v3, v10

    mul-double v3, v3, p10

    aput-wide v3, p6, v5

    add-int v5, v5, p5

    add-int v6, v6, p5

    add-int v1, v1, p5

    goto :goto_3

    :cond_5
    return-void
.end method

.method static synthetic lambda$divideElementsCol$1(ILorg/ejml/data/DSubmatrixD1;II[DDI)V
    .locals 3

    .line 477
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v0, p7

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 479
    iget-object v0, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v0, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, p7

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 481
    iget p1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne p7, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    mul-int p1, p3, p2

    add-int/2addr v0, p1

    :goto_0
    if-ge p2, p0, :cond_1

    .line 485
    aget-wide v1, p4, v0

    div-double/2addr v1, p5

    aput-wide v1, p4, v0

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    mul-int/2addr p0, p3

    add-int/2addr p0, v0

    :goto_1
    if-eq v0, p0, :cond_1

    .line 491
    aget-wide p1, p4, v0

    div-double/2addr p1, p5

    aput-wide p1, p4, v0

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$initializeW$2(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DDI[DI)V
    .locals 6

    .line 799
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v0, p8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 801
    iget-object v0, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v0, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, p8

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 802
    iget-object v1, p2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, p8

    iget p2, p2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    .line 805
    iget p1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne p8, p1, :cond_0

    neg-double p1, p4

    .line 806
    aput-wide p1, p3, v0

    add-int/2addr v0, p6

    add-int/2addr v1, p6

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p0, :cond_1

    .line 810
    aget-wide v2, p7, v1

    mul-double/2addr v2, p1

    aput-wide v2, p3, v0

    add-int/lit8 p4, p4, 0x1

    add-int/2addr v0, p6

    add-int/2addr v1, p6

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_1

    neg-double v2, p4

    .line 814
    aget-wide v4, p7, v1

    mul-double/2addr v2, v4

    aput-wide v2, p3, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p6

    add-int/2addr v1, p6

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_zeros$5(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;II)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 915
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 917
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_0
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 918
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 920
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v4, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v7, v15, v7

    iget v8, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    add-int v17, v6, v7

    .line 922
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v6

    :goto_1
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 923
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 924
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, p4

    add-int v10, v6, v7

    .line 926
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v4, v6, :cond_0

    .line 927
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v8, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v11, v17

    move v12, v5

    move/from16 v13, p4

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->multBlockAdd_zerosone([D[D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v14

    .line 930
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v8, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v11, v17

    move v12, v5

    move/from16 v13, p4

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlus([D[D[DIIIIII)V

    :goto_2
    add-int v14, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v15, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_vecCol$6(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;I)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 987
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int v4, v4, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 989
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, p5, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, p3

    add-int v14, v5, v6

    .line 991
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v15, v5

    :goto_0
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v15, v5, :cond_1

    .line 992
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 994
    iget-object v5, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v6, v11

    add-int v8, v5, v6

    .line 995
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, v15, v5

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, p5, v11

    add-int v9, v5, v6

    .line 997
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v15, v5, :cond_0

    .line 998
    iget-object v5, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move v10, v14

    move/from16 v12, p3

    move v13, v4

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->multTransABlockSet_lowerTriag([D[D[DIIIIII)V

    goto :goto_1

    .line 1001
    :cond_0
    iget-object v5, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move v10, v14

    move/from16 v12, p3

    move v13, v4

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    :goto_1
    add-int/2addr v15, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR_Col$0(ILorg/ejml/data/DSubmatrixD1;IID[DI)V
    .locals 13

    move v6, p0

    move-object v7, p1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p3

    .line 170
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->innerProdCol(ILorg/ejml/data/DSubmatrixD1;IIII)D

    move-result-wide v0

    mul-double v0, v0, p4

    .line 175
    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v2, v3, :cond_2

    .line 176
    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 178
    iget-object v4, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v4, v2

    iget v5, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    .line 179
    iget-object v5, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v2

    iget v8, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v8, v3

    add-int/2addr v5, v8

    add-int v5, v5, p7

    .line 181
    iget v8, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v2, v8, :cond_0

    add-int/lit8 v8, p2, 0x1

    mul-int v9, p3, v8

    add-int/2addr v4, v9

    mul-int v9, p3, p2

    add-int/2addr v5, v9

    .line 185
    aget-wide v9, p6, v5

    sub-double/2addr v9, v0

    aput-wide v9, p6, v5

    :goto_1
    add-int v5, v5, p3

    if-ge v8, v3, :cond_1

    .line 190
    aget-wide v9, p6, v5

    aget-wide v11, p6, v4

    mul-double/2addr v11, v0

    sub-double/2addr v9, v11

    aput-wide v9, p6, v5

    add-int/lit8 v8, v8, 0x1

    add-int v4, v4, p3

    goto :goto_1

    :cond_0
    mul-int v3, v3, p3

    add-int/2addr v3, v4

    :goto_2
    if-eq v4, v3, :cond_1

    .line 196
    aget-wide v8, p6, v5

    aget-wide v10, p6, v4

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    aput-wide v8, p6, v5

    add-int v4, v4, p3

    add-int v5, v5, p3

    goto :goto_2

    :cond_1
    add-int/2addr v2, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAdd_zeros(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 9

    .line 912
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    .line 914
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda5;

    move-object v2, v8

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda5;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V

    invoke-static {v0, v1, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multBlockAdd_zerosone([D[D[DIIIIII)V
    .locals 16

    move/from16 v0, p7

    move/from16 v1, p8

    const/4 v2, 0x0

    move/from16 v3, p6

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_2

    if-ge v4, v0, :cond_0

    mul-int v6, v4, v1

    add-int/2addr v6, v5

    add-int v6, v6, p4

    .line 953
    aget-wide v6, p1, v6

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    .line 955
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v9, v4, v0

    add-int v9, v9, p3

    add-int v10, v5, p4

    add-int/2addr v8, v9

    :goto_3
    if-eq v9, v8, :cond_1

    add-int/lit8 v11, v9, 0x1

    .line 962
    aget-wide v12, p0, v9

    aget-wide v14, p1, v10

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    add-int/2addr v10, v1

    move v9, v11

    goto :goto_3

    :cond_1
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p5

    .line 966
    aget-wide v9, p2, v8

    add-double/2addr v9, v6

    aput-wide v9, p2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static multTransABlockSet_lowerTriag([D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    if-ge v4, v0, :cond_0

    mul-int v6, v4, v2

    add-int/2addr v6, v5

    add-int v6, v6, p4

    .line 1018
    aget-wide v6, p1, v6

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    :goto_2
    add-int/lit8 v8, v4, 0x1

    :goto_3
    if-ge v8, v0, :cond_1

    mul-int v9, v8, v1

    add-int/2addr v9, v4

    add-int v9, v9, p3

    .line 1021
    aget-wide v9, p0, v9

    mul-int v11, v8, v2

    add-int/2addr v11, v5

    add-int v11, v11, p4

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    mul-int v8, v4, v2

    add-int/2addr v8, v5

    add-int v8, v8, p5

    .line 1024
    aput-wide v6, p2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multTransA_vecCol(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 9

    .line 982
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v0, v1

    if-gt v6, p0, :cond_0

    .line 986
    iget v0, p2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v1, p2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda6;

    move-object v2, v8

    move v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda6;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void

    .line 984
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A is expected to be at most one block wide."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank1UpdateMultL_LeftCol(ILorg/ejml/data/DSubmatrixD1;IDI)V
    .locals 19

    move/from16 v6, p0

    move-object/from16 v7, p1

    .line 318
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 319
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 321
    iget-object v0, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v10, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 323
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    move v11, v0

    :goto_0
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v11, v0, :cond_2

    .line 324
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v0, v11

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_1

    .line 329
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v0, v11, v0

    add-int v4, v13, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v0

    mul-double v0, v0, p3

    .line 336
    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v3, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v2, v3

    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    mul-int v3, p2, v9

    add-int/2addr v2, v3

    .line 337
    iget-object v3, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v11

    iget v4, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    mul-int v4, v13, v9

    add-int/2addr v3, v4

    add-int/lit8 v4, p5, 0x1

    add-int/2addr v2, v4

    add-int v3, v3, p5

    add-int/lit8 v5, v3, 0x1

    .line 343
    aget-wide v14, v10, v3

    sub-double/2addr v14, v0

    aput-wide v14, v10, v3

    :goto_2
    if-ge v4, v9, :cond_0

    add-int/lit8 v3, v5, 0x1

    .line 346
    aget-wide v14, v10, v5

    add-int/lit8 v16, v2, 0x1

    aget-wide v17, v10, v2

    mul-double v17, v17, v0

    sub-double v14, v14, v17

    aput-wide v14, v10, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move/from16 v2, v16

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v11, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultL_Row(ILorg/ejml/data/DSubmatrixD1;IID)V
    .locals 19

    move/from16 v6, p0

    move-object/from16 v7, p1

    .line 266
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 268
    iget-object v0, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v9, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    sub-int v10, p3, p2

    add-int/lit8 v0, p2, 0x1

    move v11, v0

    :goto_0
    if-ge v11, v8, :cond_3

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move v4, v11

    move v5, v10

    .line 274
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v0

    mul-double v0, v0, p4

    .line 279
    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_1
    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v2, v3, :cond_2

    .line 280
    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v3, v2

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 282
    iget v4, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v5, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v4, v5

    mul-int v5, v8, v2

    add-int/2addr v4, v5

    mul-int v12, p2, v3

    add-int/2addr v4, v12

    .line 283
    iget v12, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v13, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v13, Lorg/ejml/data/DMatrixD1;

    iget v13, v13, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v5

    mul-int v5, v11, v3

    add-int/2addr v12, v5

    .line 285
    iget v5, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v2, v5, :cond_0

    add-int/lit8 v5, p3, 0x1

    add-int/2addr v4, v5

    add-int v12, v12, p3

    add-int/lit8 v13, v12, 0x1

    .line 289
    aget-wide v14, v9, v12

    sub-double/2addr v14, v0

    aput-wide v14, v9, v12

    :goto_2
    if-ge v5, v3, :cond_1

    add-int/lit8 v12, v13, 0x1

    .line 292
    aget-wide v14, v9, v13

    add-int/lit8 v16, v4, 0x1

    aget-wide v17, v9, v4

    mul-double v17, v17, v0

    sub-double v14, v14, v17

    aput-wide v14, v9, v13

    add-int/lit8 v5, v5, 0x1

    move v13, v12

    move/from16 v4, v16

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_1

    add-int/lit8 v13, v12, 0x1

    .line 296
    aget-wide v14, v9, v12

    add-int/lit8 v16, v4, 0x1

    aget-wide v17, v9, v4

    mul-double v17, v17, v0

    sub-double v14, v14, v17

    aput-wide v14, v9, v12

    add-int/lit8 v5, v5, 0x1

    move v12, v13

    move/from16 v4, v16

    goto :goto_3

    :cond_1
    add-int/2addr v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultR_Col(ILorg/ejml/data/DSubmatrixD1;ID)V
    .locals 11

    .line 163
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    iget-object v1, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v1, Lorg/ejml/data/DMatrixD1;->data:[D

    add-int/lit8 v9, p2, 0x1

    .line 167
    new-instance v10, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda0;

    move-object v1, v10

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v0

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda0;-><init>(ILorg/ejml/data/DSubmatrixD1;IID[D)V

    invoke-static {v9, v0, v10}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR_TopRow(ILorg/ejml/data/DSubmatrixD1;ID)V
    .locals 17

    move/from16 v6, p0

    move-object/from16 v7, p1

    .line 216
    iget-object v0, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 218
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int v0, v0, p2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 221
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    move v10, v0

    :goto_0
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v10, v0, :cond_2

    .line 222
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v0, v10

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    if-ge v12, v11, :cond_1

    .line 226
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v0, v10, v0

    add-int v4, v0, v12

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v9

    move v5, v11

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->innerProdCol(ILorg/ejml/data/DSubmatrixD1;IIII)D

    move-result-wide v0

    mul-double v0, v0, p3

    .line 230
    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 231
    iget v3, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v3, v2

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 233
    iget-object v4, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v4, v2

    iget v5, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int v4, v4, p2

    .line 234
    iget-object v5, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v2, v5

    mul-int v5, v3, v10

    add-int/2addr v2, v5

    add-int/2addr v2, v12

    add-int/lit8 v5, p2, 0x1

    mul-int v13, v9, v5

    add-int/2addr v4, v13

    mul-int v13, v11, p2

    add-int/2addr v2, v13

    .line 240
    aget-wide v13, v8, v2

    sub-double/2addr v13, v0

    aput-wide v13, v8, v2

    :goto_2
    add-int/2addr v2, v11

    if-ge v5, v3, :cond_0

    .line 245
    aget-wide v13, v8, v2

    aget-wide v15, v8, v4

    mul-double/2addr v15, v0

    sub-double/2addr v13, v15

    aput-wide v13, v8, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v9

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v10, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static scale_row(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;IID)V
    .locals 9

    add-int v0, p3, p4

    .line 515
    iget v2, p2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, p2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p2, p3, v0, p5, p6}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    add-int/lit8 v7, v0, 0x1

    .line 522
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v8, v0, v2

    move v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v3, p5

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->scale_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    return-void
.end method

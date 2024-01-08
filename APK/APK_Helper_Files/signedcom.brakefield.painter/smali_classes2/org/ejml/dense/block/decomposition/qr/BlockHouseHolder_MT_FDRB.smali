.class public Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;
.super Ljava/lang/Object;
.source "BlockHouseHolder_MT_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V
    .locals 11

    move-object/from16 v7, p7

    add-int v0, p2, p9

    .line 458
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move-object v4, p4

    move/from16 v5, p5

    .line 461
    invoke-virtual {p4, v5, v0}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v1

    mul-float v1, v1, p6

    add-float/2addr v1, p3

    move/from16 v8, p8

    invoke-virtual {v7, v8, v0, v1}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v9, v0, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p10

    .line 463
    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    return-void
.end method

.method public static computeHouseHolderCol(ILorg/ejml/data/FSubmatrixD1;[FI)Z
    .locals 3

    .line 91
    invoke-static {p0, p1, p3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->findMaxCol(ILorg/ejml/data/FSubmatrixD1;I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    invoke-static {p0, p1, p3, v0}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeTauAndDivideCol(ILorg/ejml/data/FSubmatrixD1;IF)F

    move-result v1

    .line 100
    invoke-virtual {p1, p3, p3}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v2

    add-float/2addr v2, v1

    .line 101
    invoke-static {p0, p1, p3, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->divideElementsCol(ILorg/ejml/data/FSubmatrixD1;IF)V

    .line 103
    iget p0, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr p0, p3

    div-float/2addr v2, v1

    aput v2, p2, p0

    mul-float/2addr v1, v0

    neg-float p0, v1

    .line 107
    invoke-virtual {p1, p3, p3, p0}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    const/4 p0, 0x1

    return p0
.end method

.method public static computeHouseHolderRow(ILorg/ejml/data/FSubmatrixD1;[FI)Z
    .locals 12

    add-int/lit8 v8, p3, 0x1

    .line 130
    invoke-static {p0, p1, p3, v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->findMaxRow(ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v9

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    invoke-static {p0, p1, p3, v8, v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeTauAndDivideRow(ILorg/ejml/data/FSubmatrixD1;IIF)F

    move-result v10

    .line 139
    invoke-virtual {p1, p3, v8}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v0

    add-float v11, v0, v10

    .line 140
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    move v0, p0

    move-object v1, p1

    move v2, p3

    move v3, v11

    move-object v4, p1

    move v5, p3

    move v6, v8

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/block/VectorOps_FDRB;->div_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    .line 142
    iget p0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr p0, p3

    div-float/2addr v11, v10

    aput v11, p2, p0

    neg-float p0, v10

    mul-float/2addr p0, v9

    .line 145
    invoke-virtual {p1, p3, v8, p0}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    const/4 p0, 0x1

    return p0
.end method

.method public static computeTauAndDivideCol(ILorg/ejml/data/FSubmatrixD1;IF)F
    .locals 10

    .line 544
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 546
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 551
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v6, :cond_2

    .line 552
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v2

    invoke-static {p0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 554
    iget-object v7, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v2

    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    add-int/2addr v7, p2

    .line 556
    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v8, :cond_0

    mul-int v5, v0, p2

    add-int/2addr v7, v5

    .line 559
    aget v5, v1, v7

    div-float/2addr v5, p3

    aput v5, v1, v7

    mul-float v8, v5, v5

    add-float/2addr v4, v8

    add-int/2addr v7, v0

    add-int/lit8 v8, p2, 0x1

    :goto_1
    if-ge v8, v6, :cond_1

    .line 564
    aget v9, v1, v7

    div-float/2addr v9, p3

    aput v9, v1, v7

    mul-float/2addr v9, v9

    add-float/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    .line 569
    aget v9, v1, v7

    div-float/2addr v9, p3

    aput v9, v1, v7

    mul-float/2addr v9, v9

    add-float/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v0

    goto :goto_2

    :cond_1
    add-int/2addr v2, p0

    goto :goto_0

    :cond_2
    float-to-double p0, v4

    .line 575
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    cmpg-float p1, v5, v3

    if-gez p1, :cond_3

    neg-float p0, p0

    :cond_3
    return p0
.end method

.method public static computeTauAndDivideRow(ILorg/ejml/data/FSubmatrixD1;IIF)F
    .locals 15

    move v0, p0

    move-object/from16 v1, p1

    .line 606
    iget v2, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 608
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget-object v3, v3, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 613
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int v4, v4, p3

    rem-int v5, p3, v0

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v4

    move v8, v6

    move v9, v8

    .line 616
    :goto_0
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v7, v10, :cond_2

    .line 617
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v10, v7

    invoke-static {p0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 619
    iget v11, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v12, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/FMatrixD1;

    iget v12, v12, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v11, v12

    mul-int v12, v2, v7

    add-int/2addr v11, v12

    mul-int v12, p2, v10

    add-int/2addr v11, v12

    if-ne v7, v4, :cond_0

    add-int/2addr v11, v5

    .line 624
    aget v9, v3, v11

    div-float v9, v9, p4

    aput v9, v3, v11

    mul-float v12, v9, v9

    add-float/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v5, 0x1

    :goto_1
    if-ge v12, v10, :cond_1

    add-int/lit8 v13, v11, 0x1

    .line 629
    aget v14, v3, v11

    div-float v14, v14, p4

    aput v14, v3, v11

    mul-float/2addr v14, v14

    add-float/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    move v11, v13

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_1

    add-int/lit8 v13, v11, 0x1

    .line 634
    aget v14, v3, v11

    div-float v14, v14, p4

    aput v14, v3, v11

    mul-float/2addr v14, v14

    add-float/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    move v11, v13

    goto :goto_2

    :cond_1
    add-int/2addr v7, v0

    goto :goto_0

    :cond_2
    float-to-double v0, v8

    .line 640
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpg-float v1, v9, v6

    if-gez v1, :cond_3

    neg-float v0, v0

    :cond_3
    return v0
.end method

.method public static computeW_Column(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;[FI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ejml/data/FSubmatrixD1;",
            "Lorg/ejml/data/FSubmatrixD1;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;[FI)V"
        }
    .end annotation

    .line 758
    invoke-static {p3}, Lorg/ejml/UtilEjml;->checkDeclare_F32(Lpabeles/concurrency/GrowArray;)Lpabeles/concurrency/GrowArray;

    move-result-object p3

    .line 759
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 762
    aget v1, p4, p5

    invoke-static {p0, p2, p1, v0, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->initializeW(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    .line 764
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 766
    invoke-virtual {p3}, Lpabeles/concurrency/GrowArray;->grow()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FGrowArray;

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object p3

    iget-object p3, p3, Lorg/ejml/data/FGrowArray;->data:[F

    const/4 v1, 0x1

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_0

    .line 771
    invoke-static {p0, p1, v7, p3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeY_t_V(ILorg/ejml/data/FSubmatrixD1;I[F)V

    add-int v1, p5, v7

    .line 772
    aget v6, p4, v1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v7

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeZ(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I[FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeY_t_V(ILorg/ejml/data/FSubmatrixD1;I[F)V
    .locals 8

    .line 898
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    .line 900
    new-instance v0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p3

    move v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;-><init>([FILorg/ejml/data/FSubmatrixD1;II)V

    const/4 p0, 0x0

    invoke-static {p0, p2, v0}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static computeZ(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I[FF)V
    .locals 15

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 831
    iget v0, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v0, v1

    .line 833
    iget-object v0, v4, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 834
    iget-object v0, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v11, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 836
    iget-object v0, v4, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v3, v0, Lorg/ejml/data/FMatrixD1;->numCols:I

    move/from16 v9, p5

    neg-float v10, v9

    .line 840
    iget v12, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v14, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;

    move-object v0, v14

    move v1, p0

    move/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;-><init>(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II[F[FFF[F)V

    move v0, p0

    invoke-static {v12, v13, p0, v14}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static decomposeQR_block_col(ILorg/ejml/data/FSubmatrixD1;[F)Z
    .locals 4

    .line 56
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 57
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-static {p0, p1, p2, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeHouseHolderCol(ILorg/ejml/data/FSubmatrixD1;[FI)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 66
    :cond_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    aget v3, p2, v3

    invoke-static {p0, p1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->rank1UpdateMultR_Col(ILorg/ejml/data/FSubmatrixD1;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static divideElementsCol(ILorg/ejml/data/FSubmatrixD1;IF)V
    .locals 10

    .line 472
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 474
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 476
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v9, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda4;

    move-object v1, v9

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda4;-><init>(ILorg/ejml/data/FSubmatrixD1;II[FF)V

    invoke-static {v0, v8, p0, v9}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static findMaxCol(ILorg/ejml/data/FSubmatrixD1;I)F
    .locals 9

    .line 653
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 655
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 659
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v4, :cond_4

    .line 660
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v2

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 662
    iget-object v5, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v2

    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 664
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v6, :cond_1

    mul-int v6, v0, p2

    add-int/2addr v5, v6

    move v6, p2

    :goto_1
    if-ge v6, v4, :cond_3

    .line 667
    aget v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v8, v7, v3

    if-lez v8, :cond_0

    move v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    .line 674
    aget v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v8, v7, v3

    if-lez v8, :cond_2

    move v3, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v0

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static findMaxRow(ILorg/ejml/data/FSubmatrixD1;II)F
    .locals 9

    .line 692
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 694
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 698
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v2, v4, :cond_4

    .line 699
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v4, v2

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 701
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v0, v2

    add-int/2addr v5, v6

    mul-int v6, p2, v4

    add-int/2addr v5, v6

    .line 703
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v2, v6, :cond_1

    add-int/2addr v5, p3

    move v6, p3

    :goto_1
    if-ge v6, v4, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 707
    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v8, v5, v3

    if-lez v8, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 714
    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v8, v5, v3

    if-lez v8, :cond_2

    move v3, v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static initializeW(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V
    .locals 11

    .line 795
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 796
    iget-object v0, p2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 798
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v9, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v10, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;

    move-object v1, v10

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;-><init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FFI[F)V

    invoke-static {v0, v9, p0, v10}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F
    .locals 10

    .line 375
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 377
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, p2

    rem-int/2addr p2, p0

    sub-int/2addr v1, p2

    .line 378
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, p4

    rem-int/2addr p4, p0

    sub-int/2addr v2, p4

    .line 383
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v4, 0x0

    :goto_0
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v3, v5, :cond_2

    .line 385
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v3

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 387
    iget-object v6, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v3

    mul-int v7, v5, v1

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 388
    iget-object v7, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v3

    mul-int v8, v5, v2

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    .line 390
    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v3, v8, :cond_0

    add-int/lit8 v4, p2, 0x1

    mul-int/2addr v4, p3

    add-int/2addr v6, v4

    mul-int v4, p5, p2

    add-int/2addr v7, v4

    .line 396
    aget v4, v0, v7

    add-int/2addr v7, p5

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v5, v6

    :goto_1
    if-eq v6, v5, :cond_1

    .line 404
    aget v8, v0, v6

    aget v9, v0, v7

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    add-int/2addr v6, p3

    add-int/2addr v7, p5

    goto :goto_1

    :cond_0
    mul-int/2addr v5, p3

    add-int/2addr v5, v6

    :goto_2
    if-eq v6, v5, :cond_1

    .line 411
    aget v8, v0, v6

    aget v9, v0, v7

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    add-int/2addr v6, p3

    add-int/2addr v7, p5

    goto :goto_2

    :cond_1
    add-int/2addr v3, p0

    goto :goto_0

    :cond_2
    return v4
.end method

.method public static innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F
    .locals 8

    add-int/2addr p5, p2

    .line 440
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, p5

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 444
    :cond_0
    invoke-virtual {p3, p4, p5}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v0

    add-int/lit8 v6, p5, 0x1

    .line 446
    iget p5, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, p5, v1

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/block/VectorOps_FDRB;->dot_row(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic lambda$computeY_t_V$4([FILorg/ejml/data/FSubmatrixD1;III)V
    .locals 6

    move v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p4

    .line 901
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result p1

    aput p1, p0, p5

    return-void
.end method

.method static synthetic lambda$computeZ$3(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II[F[FFF[FI)V
    .locals 12

    move-object v0, p1

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p11

    .line 841
    iget v4, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v3

    move v5, p0

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v3, p2

    .line 843
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 844
    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v1, v4

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    .line 845
    iget-object v1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget v1, v1, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v3

    iget v7, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v7, v4

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 847
    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne v3, v0, :cond_3

    move v0, v8

    :goto_0
    if-ge v0, v4, :cond_5

    move v9, v7

    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_0

    add-int v10, v6, v3

    .line 854
    aget v10, p6, v10

    aget v11, p7, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_1

    move/from16 v3, p8

    neg-float v10, v3

    mul-float/2addr v10, v9

    .line 859
    aput v10, p6, v5

    goto :goto_2

    :cond_1
    move/from16 v3, p8

    if-ne v0, v2, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    mul-float v9, v9, p9

    .line 861
    aput v9, p6, v5

    goto :goto_2

    .line 863
    :cond_2
    aget v10, p10, v1

    add-float/2addr v10, v9

    mul-float v9, p9, v10

    aput v9, p6, v5

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

    move v4, v7

    move v3, v8

    :goto_4
    if-ge v3, v2, :cond_4

    add-int v9, v6, v3

    .line 874
    aget v9, p6, v9

    aget v10, p7, v3

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 878
    :cond_4
    aget v3, p10, v1

    add-float/2addr v3, v4

    mul-float v3, v3, p9

    aput v3, p6, v5

    add-int v5, v5, p5

    add-int v6, v6, p5

    add-int v1, v1, p5

    goto :goto_3

    :cond_5
    return-void
.end method

.method static synthetic lambda$divideElementsCol$1(ILorg/ejml/data/FSubmatrixD1;II[FFI)V
    .locals 2

    .line 477
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v0, p6

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 479
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v0, v0, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v0, p6

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 481
    iget p1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne p6, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    mul-int p1, p3, p2

    add-int/2addr v0, p1

    :goto_0
    if-ge p2, p0, :cond_1

    .line 485
    aget p1, p4, v0

    div-float/2addr p1, p5

    aput p1, p4, v0

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    mul-int/2addr p0, p3

    add-int/2addr p0, v0

    :goto_1
    if-eq v0, p0, :cond_1

    .line 491
    aget p1, p4, v0

    div-float/2addr p1, p5

    aput p1, p4, v0

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$initializeW$2(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FFI[FI)V
    .locals 2

    .line 799
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v0, p7

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 801
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v0, v0, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v0, p7

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 802
    iget-object v1, p2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget v1, v1, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, p7

    iget p2, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    .line 805
    iget p1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne p7, p1, :cond_0

    neg-float p1, p4

    .line 806
    aput p1, p3, v0

    add-int/2addr v0, p5

    add-int/2addr v1, p5

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p0, :cond_1

    .line 810
    aget p4, p6, v1

    mul-float/2addr p4, p1

    aput p4, p3, v0

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p5

    add-int/2addr v1, p5

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_1

    neg-float p2, p4

    .line 814
    aget p7, p6, v1

    mul-float/2addr p2, p7

    aput p2, p3, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p5

    add-int/2addr v1, p5

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_zeros$5(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;II)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 915
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 917
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_0
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 918
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 920
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v4, v6

    iget v7, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v15, v7

    iget v8, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    add-int v17, v6, v7

    .line 922
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_1
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 923
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 924
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, p4

    add-int v10, v6, v7

    .line 926
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v4, v6, :cond_0

    .line 927
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v8, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v11, v17

    move v12, v5

    move/from16 v13, p4

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->multBlockAdd_zerosone([F[F[FIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v14

    .line 930
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v8, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v11, v17

    move v12, v5

    move/from16 v13, p4

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlus([F[F[FIIIIII)V

    :goto_2
    add-int v14, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v15, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_vecCol$6(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;I)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 987
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int v4, v4, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 989
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, p5, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, p3

    add-int v14, v5, v6

    .line 991
    iget v5, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v15, v5

    :goto_0
    iget v5, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v15, v5, :cond_1

    .line 992
    iget v5, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 994
    iget-object v5, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v11

    add-int v8, v5, v6

    .line 995
    iget v5, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v5, v15, v5

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, p5, v11

    add-int v9, v5, v6

    .line 997
    iget v5, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v15, v5, :cond_0

    .line 998
    iget-object v5, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    move v10, v14

    move/from16 v12, p3

    move v13, v4

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->multTransABlockSet_lowerTriag([F[F[FIIIIII)V

    goto :goto_1

    .line 1001
    :cond_0
    iget-object v5, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    move v10, v14

    move/from16 v12, p3

    move v13, v4

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA([F[F[FIIIIII)V

    :goto_1
    add-int/2addr v15, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR_Col$0(ILorg/ejml/data/FSubmatrixD1;IIF[FI)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p3

    .line 170
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result v0

    mul-float/2addr v0, p4

    .line 175
    iget p4, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge p4, v1, :cond_2

    .line 176
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v1, p4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 178
    iget-object v2, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v2, p4

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 179
    iget-object v3, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, p4

    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    add-int/2addr v3, p6

    .line 181
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne p4, v4, :cond_0

    add-int/lit8 v4, p2, 0x1

    mul-int v5, p3, v4

    add-int/2addr v2, v5

    mul-int v5, p3, p2

    add-int/2addr v3, v5

    .line 185
    aget v5, p5, v3

    sub-float/2addr v5, v0

    aput v5, p5, v3

    :goto_1
    add-int/2addr v3, p3

    if-ge v4, v1, :cond_1

    .line 190
    aget v5, p5, v3

    aget v6, p5, v2

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    aput v5, p5, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, p3

    goto :goto_1

    :cond_0
    mul-int/2addr v1, p3

    add-int/2addr v1, v2

    :goto_2
    if-eq v2, v1, :cond_1

    .line 196
    aget v4, p5, v3

    aget v5, p5, v2

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    aput v4, p5, v3

    add-int/2addr v2, p3

    add-int/2addr v3, p3

    goto :goto_2

    :cond_1
    add-int/2addr p4, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multAdd_zeros(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 9

    .line 912
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    .line 914
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda5;

    move-object v2, v8

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda5;-><init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V

    invoke-static {v0, v1, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multBlockAdd_zerosone([F[F[FIIIIII)V
    .locals 12

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
    aget v6, p1, v6

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    .line 955
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v8, v4, v0

    add-int/2addr v8, p3

    add-int v9, v5, p4

    add-int/2addr v7, v8

    :goto_3
    if-eq v8, v7, :cond_1

    add-int/lit8 v10, v8, 0x1

    .line 962
    aget v8, p0, v8

    aget v11, p1, v9

    mul-float/2addr v8, v11

    add-float/2addr v6, v8

    add-int/2addr v9, v1

    move v8, v10

    goto :goto_3

    :cond_1
    mul-int v7, v4, v1

    add-int/2addr v7, v5

    add-int v7, v7, p5

    .line 966
    aget v8, p2, v7

    add-float/2addr v8, v6

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static multTransABlockSet_lowerTriag([F[F[FIIIIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p7, :cond_3

    move v2, v0

    :goto_1
    if-ge v2, p8, :cond_2

    if-ge v1, p6, :cond_0

    mul-int v3, v1, p8

    add-int/2addr v3, v2

    add-int/2addr v3, p4

    .line 1018
    aget v3, p1, v3

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v1, 0x1

    :goto_3
    if-ge v4, p6, :cond_1

    mul-int v5, v4, p7

    add-int/2addr v5, v1

    add-int/2addr v5, p3

    .line 1021
    aget v5, p0, v5

    mul-int v6, v4, p8

    add-int/2addr v6, v2

    add-int/2addr v6, p4

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    mul-int v4, v1, p8

    add-int/2addr v4, v2

    add-int/2addr v4, p5

    .line 1024
    aput v3, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multTransA_vecCol(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 9

    .line 982
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v0, v1

    if-gt v6, p0, :cond_0

    .line 986
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda3;

    move-object v2, v8

    move v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda3;-><init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;)V

    invoke-static {v0, v1, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void

    .line 984
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A is expected to be at most one block wide."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank1UpdateMultL_LeftCol(ILorg/ejml/data/FSubmatrixD1;IFI)V
    .locals 15

    move v6, p0

    move-object/from16 v7, p1

    .line 318
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 319
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 321
    iget-object v0, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v10, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 323
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    move v11, v0

    :goto_0
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v11, v0, :cond_2

    .line 324
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_1

    .line 329
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v0, v11, v0

    add-int v4, v13, v0

    move v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    mul-float v0, v0, p3

    .line 336
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    mul-int v2, p2, v9

    add-int/2addr v1, v2

    .line 337
    iget-object v2, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v2, v11

    iget v3, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v3, v12

    add-int/2addr v2, v3

    mul-int v3, v13, v9

    add-int/2addr v2, v3

    add-int/lit8 v3, p4, 0x1

    add-int/2addr v1, v3

    add-int v2, v2, p4

    add-int/lit8 v4, v2, 0x1

    .line 343
    aget v5, v10, v2

    sub-float/2addr v5, v0

    aput v5, v10, v2

    :goto_2
    if-ge v3, v9, :cond_0

    add-int/lit8 v2, v4, 0x1

    .line 346
    aget v5, v10, v4

    add-int/lit8 v14, v1, 0x1

    aget v1, v10, v1

    mul-float/2addr v1, v0

    sub-float/2addr v5, v1

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v1, v14

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

.method public static rank1UpdateMultL_Row(ILorg/ejml/data/FSubmatrixD1;IIF)V
    .locals 15

    move v6, p0

    move-object/from16 v7, p1

    .line 266
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 268
    iget-object v0, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v9, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    sub-int v10, p3, p2

    add-int/lit8 v0, p2, 0x1

    move v11, v0

    :goto_0
    if-ge v11, v8, :cond_3

    move v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move v4, v11

    move v5, v10

    .line 274
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    mul-float v0, v0, p4

    .line 279
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_1
    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v1, v2, :cond_2

    .line 280
    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 282
    iget v3, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    mul-int v4, v8, v1

    add-int/2addr v3, v4

    mul-int v5, p2, v2

    add-int/2addr v3, v5

    .line 283
    iget v5, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v12, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/FMatrixD1;

    iget v12, v12, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v12

    add-int/2addr v5, v4

    mul-int v4, v11, v2

    add-int/2addr v5, v4

    .line 285
    iget v4, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v1, v4, :cond_0

    add-int/lit8 v4, p3, 0x1

    add-int/2addr v3, v4

    add-int v5, v5, p3

    add-int/lit8 v12, v5, 0x1

    .line 289
    aget v13, v9, v5

    sub-float/2addr v13, v0

    aput v13, v9, v5

    :goto_2
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v12, 0x1

    .line 292
    aget v13, v9, v12

    add-int/lit8 v14, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v0

    sub-float/2addr v13, v3

    aput v13, v9, v12

    add-int/lit8 v4, v4, 0x1

    move v12, v5

    move v3, v14

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_1

    add-int/lit8 v12, v5, 0x1

    .line 296
    aget v13, v9, v5

    add-int/lit8 v14, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v0

    sub-float/2addr v13, v3

    aput v13, v9, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v12

    move v3, v14

    goto :goto_3

    :cond_1
    add-int/2addr v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultR_Col(ILorg/ejml/data/FSubmatrixD1;IF)V
    .locals 10

    .line 163
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    add-int/lit8 v8, p2, 0x1

    .line 167
    new-instance v9, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;

    move-object v1, v9

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;-><init>(ILorg/ejml/data/FSubmatrixD1;IIF[F)V

    invoke-static {v8, v0, v9}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR_TopRow(ILorg/ejml/data/FSubmatrixD1;IF)V
    .locals 12

    .line 216
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 218
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v1, p2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 221
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, p0

    move v8, v2

    :goto_0
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v8, v2, :cond_2

    .line 222
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v2, v8

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_1

    .line 226
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v2, v8, v2

    add-int v6, v2, v10

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v1

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result v2

    mul-float/2addr v2, p3

    .line 230
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 231
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v3

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 233
    iget-object v5, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v3

    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 234
    iget-object v6, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v6

    mul-int v6, v4, v8

    add-int/2addr v3, v6

    add-int/2addr v3, v10

    add-int/lit8 v6, p2, 0x1

    mul-int v7, v1, v6

    add-int/2addr v5, v7

    mul-int v7, v9, p2

    add-int/2addr v3, v7

    .line 240
    aget v7, v0, v3

    sub-float/2addr v7, v2

    aput v7, v0, v3

    :goto_2
    add-int/2addr v3, v9

    if-ge v6, v4, :cond_0

    .line 245
    aget v7, v0, v3

    aget v11, v0, v5

    mul-float/2addr v11, v2

    sub-float/2addr v7, v11

    aput v7, v0, v3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v8, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static scale_row(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IIF)V
    .locals 9

    add-int/2addr p4, p3

    .line 515
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    if-lt p4, v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p2, p3, p4, p5}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v7, p4, 0x1

    .line 522
    iget p4, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v8, p4, v0

    move v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/block/VectorOps_FDRB;->scale_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    return-void
.end method

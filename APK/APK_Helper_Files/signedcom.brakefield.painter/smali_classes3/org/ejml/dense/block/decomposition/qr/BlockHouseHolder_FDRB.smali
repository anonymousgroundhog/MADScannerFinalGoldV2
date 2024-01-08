.class public Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;
.super Ljava/lang/Object;
.source "BlockHouseHolder_FDRB.java"


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

    .line 460
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move-object v4, p4

    move/from16 v5, p5

    .line 463
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

    .line 465
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
    invoke-static {p0, p1, p3, v0}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeTauAndDivideCol(ILorg/ejml/data/FSubmatrixD1;IF)F

    move-result v1

    .line 100
    invoke-virtual {p1, p3, p3}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v2

    add-float/2addr v2, v1

    .line 101
    invoke-static {p0, p1, p3, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->divideElementsCol(ILorg/ejml/data/FSubmatrixD1;IF)V

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
    invoke-static {p0, p1, p3, v8, v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeTauAndDivideRow(ILorg/ejml/data/FSubmatrixD1;IIF)F

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

    .line 548
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 550
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 555
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v6, :cond_2

    .line 556
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v2

    invoke-static {p0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 558
    iget-object v7, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v2

    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    add-int/2addr v7, p2

    .line 560
    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v8, :cond_0

    mul-int v5, v0, p2

    add-int/2addr v7, v5

    .line 563
    aget v5, v1, v7

    div-float/2addr v5, p3

    aput v5, v1, v7

    mul-float v8, v5, v5

    add-float/2addr v4, v8

    add-int/2addr v7, v0

    add-int/lit8 v8, p2, 0x1

    :goto_1
    if-ge v8, v6, :cond_1

    .line 568
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

    .line 573
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

    .line 579
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

    .line 610
    iget v2, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 612
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget-object v3, v3, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 617
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int v4, v4, p3

    rem-int v5, p3, v0

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v4

    move v8, v6

    move v9, v8

    .line 620
    :goto_0
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v7, v10, :cond_2

    .line 621
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v10, v7

    invoke-static {p0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 623
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

    .line 628
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

    .line 633
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

    .line 638
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

    .line 644
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

    .line 762
    invoke-static {p3}, Lorg/ejml/UtilEjml;->checkDeclare_F32(Lpabeles/concurrency/GrowArray;)Lpabeles/concurrency/GrowArray;

    move-result-object p3

    .line 763
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 766
    aget v1, p4, p5

    invoke-static {p0, p2, p1, v0, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->initializeW(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    .line 768
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 770
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

    .line 775
    invoke-static {p0, p1, v7, p3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeY_t_V(ILorg/ejml/data/FSubmatrixD1;I[F)V

    add-int v1, p5, v7

    .line 776
    aget v6, p4, v1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v7

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeZ(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I[FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeY_t_V(ILorg/ejml/data/FSubmatrixD1;I[F)V
    .locals 8

    .line 906
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v0

    move v6, v1

    move v7, v0

    .line 910
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeZ(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I[FF)V
    .locals 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 837
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 839
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 840
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 842
    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    move/from16 v8, p5

    neg-float v8, v8

    .line 847
    iget v9, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v9, v10, :cond_6

    .line 848
    iget v10, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v10, v9

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int v11, v9, v7

    .line 850
    iget v12, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v11

    .line 851
    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v13, v10

    add-int/2addr v11, v13

    add-int/2addr v11, v3

    .line 852
    iget-object v13, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v13, Lorg/ejml/data/FMatrixD1;

    iget v13, v13, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v13, v9

    iget v14, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v14, v10

    add-int/2addr v13, v14

    add-int/2addr v13, v3

    .line 854
    iget v14, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/16 v16, 0x0

    if-ne v9, v14, :cond_3

    move/from16 v14, v16

    :goto_1
    if-ge v14, v10, :cond_5

    move/from16 v15, v16

    const/16 v17, 0x0

    :goto_2
    if-ge v15, v3, :cond_0

    add-int v18, v12, v15

    .line 861
    aget v18, v5, v18

    aget v19, p4, v15

    mul-float v18, v18, v19

    add-float v17, v17, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    if-ge v14, v3, :cond_1

    mul-float v17, v17, v8

    .line 866
    aput v17, v5, v11

    goto :goto_3

    :cond_1
    if-ne v14, v3, :cond_2

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v17, v17, v15

    mul-float v17, v17, v8

    .line 868
    aput v17, v5, v11

    goto :goto_3

    .line 870
    :cond_2
    aget v15, v6, v13

    add-float v15, v15, v17

    mul-float/2addr v15, v8

    aput v15, v5, v11

    :goto_3
    add-int/lit8 v14, v14, 0x1

    add-int/2addr v11, v4

    add-int/2addr v12, v4

    add-int/2addr v13, v4

    goto :goto_1

    :cond_3
    mul-int/2addr v10, v4

    add-int/2addr v10, v11

    :goto_4
    if-eq v11, v10, :cond_5

    move/from16 v14, v16

    const/4 v15, 0x0

    :goto_5
    if-ge v14, v3, :cond_4

    add-int v17, v12, v14

    .line 881
    aget v17, v5, v17

    aget v18, p4, v14

    mul-float v17, v17, v18

    add-float v15, v15, v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 885
    :cond_4
    aget v14, v6, v13

    add-float/2addr v14, v15

    mul-float/2addr v14, v8

    aput v14, v5, v11

    add-int/2addr v11, v4

    add-int/2addr v12, v4

    add-int/2addr v13, v4

    goto :goto_4

    :cond_5
    add-int/2addr v9, v0

    goto :goto_0

    :cond_6
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
    invoke-static {p0, p1, p2, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeHouseHolderCol(ILorg/ejml/data/FSubmatrixD1;[FI)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 66
    :cond_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    aget v3, p2, v3

    invoke-static {p0, p1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->rank1UpdateMultR_Col(ILorg/ejml/data/FSubmatrixD1;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static divideElementsCol(ILorg/ejml/data/FSubmatrixD1;IF)V
    .locals 7

    .line 474
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 476
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 479
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v3, :cond_2

    .line 480
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 482
    iget-object v4, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v4, v2

    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    .line 484
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v5, :cond_0

    add-int/lit8 v5, p2, 0x1

    mul-int v6, v0, v5

    add-int/2addr v4, v6

    :goto_1
    if-ge v5, v3, :cond_1

    .line 488
    aget v6, v1, v4

    div-float/2addr v6, p3

    aput v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_0
    mul-int/2addr v3, v0

    add-int/2addr v3, v4

    :goto_2
    if-eq v4, v3, :cond_1

    .line 494
    aget v5, v1, v4

    div-float/2addr v5, p3

    aput v5, v1, v4

    add-int/2addr v4, v0

    goto :goto_2

    :cond_1
    add-int/2addr v2, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static findMaxCol(ILorg/ejml/data/FSubmatrixD1;I)F
    .locals 9

    .line 657
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 659
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 663
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v4, :cond_4

    .line 664
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v2

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 666
    iget-object v5, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v2

    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 668
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v6, :cond_1

    mul-int v6, v0, p2

    add-int/2addr v5, v6

    move v6, p2

    :goto_1
    if-ge v6, v4, :cond_3

    .line 671
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

    .line 678
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

    .line 696
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 698
    iget-object v1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 702
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v2, v4, :cond_4

    .line 703
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v4, v2

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 705
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v0, v2

    add-int/2addr v5, v6

    mul-int v6, p2, v4

    add-int/2addr v5, v6

    .line 707
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v2, v6, :cond_1

    add-int/2addr v5, p3

    move v6, p3

    :goto_1
    if-ge v6, v4, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 711
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

    .line 718
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
    .locals 9

    .line 799
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 800
    iget-object v1, p2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 803
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v3, :cond_2

    .line 804
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 806
    iget-object v4, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v4, v2

    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 807
    iget-object v5, p2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v2

    iget v6, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 810
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v6, :cond_0

    neg-float v6, p4

    .line 811
    aput v6, v0, v4

    add-int/2addr v4, p3

    add-int/2addr v5, p3

    const/4 v7, 0x1

    :goto_1
    if-ge v7, v3, :cond_1

    .line 815
    aget v8, v1, v5

    mul-float/2addr v8, v6

    aput v8, v0, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, p3

    add-int/2addr v5, p3

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    neg-float v7, p4

    .line 819
    aget v8, v1, v5

    mul-float/2addr v7, v8

    aput v7, v0, v4

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, p3

    add-int/2addr v5, p3

    goto :goto_2

    :cond_1
    add-int/2addr v2, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F
    .locals 10

    .line 377
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 379
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, p2

    rem-int/2addr p2, p0

    sub-int/2addr v1, p2

    .line 380
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, p4

    rem-int/2addr p4, p0

    sub-int/2addr v2, p4

    .line 385
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    const/4 v4, 0x0

    :goto_0
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v3, v5, :cond_2

    .line 387
    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v3

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 389
    iget-object v6, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v3

    mul-int v7, v5, v1

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 390
    iget-object v7, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v3

    mul-int v8, v5, v2

    add-int/2addr v7, v8

    add-int/2addr v7, p4

    .line 392
    iget v8, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v3, v8, :cond_0

    add-int/lit8 v4, p2, 0x1

    mul-int/2addr v4, p3

    add-int/2addr v6, v4

    mul-int v4, p5, p2

    add-int/2addr v7, v4

    .line 398
    aget v4, v0, v7

    add-int/2addr v7, p5

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v5, v6

    :goto_1
    if-eq v6, v5, :cond_1

    .line 406
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

    .line 413
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

    .line 442
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, p5

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 446
    :cond_0
    invoke-virtual {p3, p4, p5}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v0

    add-int/lit8 v6, p5, 0x1

    .line 448
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

.method public static multAdd_zeros(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 922
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 925
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v5, v6, :cond_3

    .line 926
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 928
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_2

    .line 929
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 931
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v5, v6

    iget v7, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v14, v7

    iget v8, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v15

    add-int v17, v6, v7

    .line 933
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v13, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v13, v6, :cond_1

    .line 934
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v5

    mul-int v7, v13, v15

    add-int v9, v6, v7

    .line 935
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v13, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v14, v4

    add-int v10, v6, v7

    .line 937
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v5, v6, :cond_0

    .line 938
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

    move v12, v15

    move/from16 v18, v13

    move v13, v4

    move/from16 v19, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->multBlockAdd_zerosone([F[F[FIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v13

    move/from16 v19, v14

    .line 941
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

    move v12, v15

    move v13, v4

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlus([F[F[FIIIIII)V

    :goto_3
    add-int v13, v18, v0

    move/from16 v14, v19

    goto :goto_2

    :cond_1
    move/from16 v19, v14

    add-int v14, v19, v0

    goto/16 :goto_1

    :cond_2
    add-int/2addr v5, v0

    goto/16 :goto_0

    :cond_3
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

    .line 965
    aget v6, p1, v6

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    .line 967
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

    .line 974
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

    .line 978
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

    .line 1032
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

    .line 1035
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

    .line 1038
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
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 994
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    if-gt v4, v0, :cond_3

    .line 999
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v5, v6, :cond_2

    .line 1000
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1002
    iget v6, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v7, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v5, v7

    iget v8, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v4

    add-int v16, v6, v7

    .line 1004
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v14, v6

    :goto_1
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_1

    .line 1005
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1007
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    iget v7, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v7, v12

    add-int v9, v6, v7

    .line 1008
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v5, v12

    add-int v10, v6, v7

    .line 1010
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v14, v6, :cond_0

    .line 1011
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v8, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v11, v16

    move v13, v4

    move/from16 v17, v14

    move v14, v15

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->multTransABlockSet_lowerTriag([F[F[FIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v17, v14

    .line 1014
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v8, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v8, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v11, v16

    move v13, v4

    move v14, v15

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA([F[F[FIIIIII)V

    :goto_2
    add-int v14, v17, v0

    goto :goto_1

    :cond_1
    add-int/2addr v5, v0

    goto/16 :goto_0

    :cond_2
    return-void

    .line 996
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A is expected to be at most one block wide."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rank1UpdateMultL_LeftCol(ILorg/ejml/data/FSubmatrixD1;IFI)V
    .locals 15

    move v6, p0

    move-object/from16 v7, p1

    .line 320
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 321
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 323
    iget-object v0, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v10, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 325
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    move v11, v0

    :goto_0
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v11, v0, :cond_2

    .line 326
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_1

    .line 331
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v0, v11, v0

    add-int v4, v13, v0

    move v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    mul-float v0, v0, p3

    .line 338
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

    .line 339
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

    .line 345
    aget v5, v10, v2

    sub-float/2addr v5, v0

    aput v5, v10, v2

    :goto_2
    if-ge v3, v9, :cond_0

    add-int/lit8 v2, v4, 0x1

    .line 348
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

    .line 268
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 270
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

    .line 276
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    mul-float v0, v0, p4

    .line 281
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_1
    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v1, v2, :cond_2

    .line 282
    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 284
    iget v3, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    mul-int v4, v8, v1

    add-int/2addr v3, v4

    mul-int v5, p2, v2

    add-int/2addr v3, v5

    .line 285
    iget v5, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v12, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/FMatrixD1;

    iget v12, v12, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v12

    add-int/2addr v5, v4

    mul-int v4, v11, v2

    add-int/2addr v5, v4

    .line 287
    iget v4, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v1, v4, :cond_0

    add-int/lit8 v4, p3, 0x1

    add-int/2addr v3, v4

    add-int v5, v5, p3

    add-int/lit8 v12, v5, 0x1

    .line 291
    aget v13, v9, v5

    sub-float/2addr v13, v0

    aput v13, v9, v5

    :goto_2
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v12, 0x1

    .line 294
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

    .line 298
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
    .locals 12

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

    move v9, v8

    :goto_0
    if-ge v9, v0, :cond_3

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, v9

    move v6, v0

    .line 171
    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result v1

    mul-float/2addr v1, p3

    .line 176
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_1
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v2, v3, :cond_2

    .line 177
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 179
    iget-object v4, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v4, v2

    iget v5, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    .line 180
    iget-object v5, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v2

    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    .line 182
    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v2, v6, :cond_0

    mul-int v6, v0, v8

    add-int/2addr v4, v6

    mul-int v6, v0, p2

    add-int/2addr v5, v6

    .line 186
    aget v6, v7, v5

    sub-float/2addr v6, v1

    aput v6, v7, v5

    add-int/2addr v5, v0

    move v6, v8

    :goto_2
    if-ge v6, v3, :cond_1

    .line 191
    aget v10, v7, v5

    aget v11, v7, v4

    mul-float/2addr v11, v1

    sub-float/2addr v10, v11

    aput v10, v7, v5

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v0

    add-int/2addr v5, v0

    goto :goto_2

    :cond_0
    mul-int/2addr v3, v0

    add-int/2addr v3, v4

    :goto_3
    if-eq v4, v3, :cond_1

    .line 197
    aget v6, v7, v5

    aget v10, v7, v4

    mul-float/2addr v10, v1

    sub-float/2addr v6, v10

    aput v6, v7, v5

    add-int/2addr v4, v0

    add-int/2addr v5, v0

    goto :goto_3

    :cond_1
    add-int/2addr v2, p0

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultR_TopRow(ILorg/ejml/data/FSubmatrixD1;IF)V
    .locals 12

    .line 218
    iget-object v0, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 220
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v1, p2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 223
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, p0

    move v8, v2

    :goto_0
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v8, v2, :cond_2

    .line 224
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v2, v8

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_1

    .line 228
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v2, v8, v2

    add-int v6, v2, v10

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v1

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdCol(ILorg/ejml/data/FSubmatrixD1;IIII)F

    move-result v2

    mul-float/2addr v2, p3

    .line 232
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 233
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v3

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 235
    iget-object v5, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v3

    iget v6, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 236
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

    .line 242
    aget v7, v0, v3

    sub-float/2addr v7, v2

    aput v7, v0, v3

    :goto_2
    add-int/2addr v3, v9

    if-ge v6, v4, :cond_0

    .line 247
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

    .line 519
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    if-lt p4, v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p2, p3, p4, p5}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v7, p4, 0x1

    .line 526
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

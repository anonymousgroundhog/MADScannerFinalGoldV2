.class public Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;
.super Ljava/lang/Object;
.source "MatrixMatrixMult_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$multAddTransAB$10(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 395
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v2, v2, p3

    const/4 v3, 0x0

    move v4, v3

    .line 397
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v5, :cond_1

    .line 399
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    move/from16 v8, p3

    :goto_1
    if-ge v4, v5, :cond_0

    .line 404
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, v11, v4

    mul-double/2addr v9, v13

    add-double/2addr v6, v9

    .line 405
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v4

    move v4, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    move-object/from16 v8, p2

    .line 408
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransAB$22(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 771
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v2, v2, p5

    const/4 v3, 0x0

    move v4, v3

    .line 773
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v5, :cond_1

    .line 775
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    move/from16 v8, p5

    :goto_1
    if-ge v4, v5, :cond_0

    .line 780
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, v11, v4

    mul-double/2addr v9, v13

    add-double/2addr v6, v9

    .line 781
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v4

    move v4, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    mul-double v6, v6, p3

    move-object/from16 v8, p2

    .line 784
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransA_reorder$20(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 711
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v3

    .line 714
    iget-object v5, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v5, v5, v3

    mul-double v5, v5, p1

    .line 716
    iget v7, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v8, 0x0

    add-int/2addr v7, v8

    move v9, v4

    :goto_0
    if-ge v8, v7, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 719
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v11, v8

    mul-double/2addr v13, v5

    invoke-virtual {v0, v9, v13, v14}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v9, v10

    move v8, v12

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 722
    :goto_1
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_2

    .line 723
    invoke-virtual {v1, v5, v3}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v6

    mul-double v6, v6, p1

    .line 724
    iget v9, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v10, v4

    :goto_2
    if-ge v8, v9, :cond_1

    .line 728
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, v15, v8

    mul-double v17, v17, v6

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v8, v16

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAddTransA_reorder$8(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 335
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v3

    .line 338
    iget-object v5, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v5, v5, v3

    .line 340
    iget v7, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v8, 0x0

    add-int/2addr v7, v8

    move v9, v4

    :goto_0
    if-ge v8, v7, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 343
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v11, v8

    mul-double/2addr v13, v5

    invoke-virtual {v0, v9, v13, v14}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v9, v10

    move v8, v12

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 346
    :goto_1
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_2

    .line 347
    invoke-virtual {v1, v5, v3}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v6

    .line 348
    iget v9, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v10, v4

    :goto_2
    if-ge v8, v9, :cond_1

    .line 352
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, v15, v8

    mul-double v17, v17, v6

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v8, v16

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAddTransA_small$21(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 743
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    const/4 v3, 0x0

    .line 744
    :goto_0
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_1

    .line 747
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    const-wide/16 v5, 0x0

    move/from16 v8, p5

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_0

    .line 752
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 753
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v9

    .line 751
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    mul-double v5, v5, p3

    move-object v7, p2

    .line 756
    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransA_small$9(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 11

    .line 367
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    .line 368
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 371
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const-wide/16 v3, 0x0

    move v6, p3

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_0

    .line 376
    iget-object v7, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v6

    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 377
    iget v7, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v6, v7

    .line 375
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 380
    invoke-virtual {p2, v0, v3, v4}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransB$11(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 423
    iget v1, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v1, v1, p3

    .line 424
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p3

    .line 425
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    .line 427
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_0

    move-object/from16 v9, p1

    .line 432
    iget-object v10, v9, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v5, 0x1

    aget-wide v14, v8, v5

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v5, v10

    move v8, v11

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    add-int/lit8 v8, v1, 0x1

    move-object/from16 v10, p2

    .line 435
    invoke-virtual {v10, v1, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v4, v4, 0x1

    move v1, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransB$23(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 16

    move-object/from16 v0, p0

    .line 799
    iget v1, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v1, v1, p5

    .line 800
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    .line 801
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    .line 803
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_0

    move-object/from16 v9, p1

    .line 808
    iget-object v10, v9, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v5, 0x1

    aget-wide v14, v8, v5

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v5, v10

    move v8, v11

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    add-int/lit8 v8, v1, 0x1

    mul-double v6, v6, p3

    move-object/from16 v10, p2

    .line 811
    invoke-virtual {v10, v1, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v4, v4, 0x1

    move v1, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_reorder$18(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 643
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p6

    .line 644
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v4, v4, p6

    .line 649
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v6, 0x0

    add-int/2addr v5, v6

    .line 651
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v4

    mul-double v9, v9, p3

    move v4, v3

    :goto_0
    if-ge v6, v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 654
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    mul-double/2addr v13, v9

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v4, v7

    move v6, v12

    goto :goto_0

    :cond_0
    move/from16 v4, p5

    :goto_1
    if-eq v6, v4, :cond_2

    .line 660
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 662
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v8, 0x1

    aget-wide v7, v7, v8

    mul-double v7, v7, p3

    move v10, v3

    :goto_2
    if-ge v6, v5, :cond_1

    .line 665
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v6, 0x1

    aget-wide v17, v15, v6

    mul-double v17, v17, v7

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v6, v16

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAdd_reorder$6(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 267
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p4

    .line 268
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v4, v4, p4

    .line 273
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v6, 0x0

    add-int/2addr v5, v6

    .line 275
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v4

    move v4, v3

    :goto_0
    if-ge v6, v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 278
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    mul-double/2addr v13, v9

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v4, v7

    move v6, v12

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    :goto_1
    if-eq v6, v4, :cond_2

    .line 284
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 286
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v8, 0x1

    aget-wide v7, v7, v8

    move v10, v3

    :goto_2
    if-ge v6, v5, :cond_1

    .line 289
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v6, 0x1

    aget-wide v17, v15, v6

    mul-double v17, v17, v7

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v6, v16

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAdd_small$19(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 680
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    .line 681
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p5

    const/4 v4, 0x0

    .line 682
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_1

    .line 687
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v5, v3

    const-wide/16 v6, 0x0

    move v8, v3

    move v9, v4

    :goto_1
    if-ge v8, v5, :cond_0

    .line 689
    iget-object v10, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v8, v9

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 690
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    mul-double v6, v6, p3

    move-object/from16 v8, p2

    .line 693
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_small$7(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 304
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p3

    .line 305
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p3

    const/4 v4, 0x0

    .line 306
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_1

    .line 311
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v5, v3

    const-wide/16 v6, 0x0

    move v8, v3

    move v9, v4

    :goto_1
    if-ge v8, v5, :cond_0

    .line 313
    iget-object v10, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v8, v9

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 314
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    move-object/from16 v8, p2

    .line 317
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransAB$16(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 584
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v2, v2, p5

    const/4 v3, 0x0

    move v4, v3

    .line 586
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v5, :cond_1

    .line 588
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    move/from16 v8, p5

    :goto_1
    if-ge v4, v5, :cond_0

    .line 593
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, v11, v4

    mul-double/2addr v9, v13

    add-double/2addr v6, v9

    .line 594
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v4

    move v4, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    mul-double v6, v6, p3

    move-object/from16 v8, p2

    .line 597
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransAB$4(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 208
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v2, v2, p3

    const/4 v3, 0x0

    move v4, v3

    .line 210
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v5, :cond_1

    .line 212
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    move/from16 v8, p3

    :goto_1
    if-ge v4, v5, :cond_0

    .line 217
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, v11, v4

    mul-double/2addr v9, v13

    add-double/2addr v6, v9

    .line 218
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v4

    move v4, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    move-object/from16 v8, p2

    .line 221
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA_reorder$14(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 524
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v3

    .line 527
    iget-object v5, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v5, v5, v3

    mul-double v5, v5, p1

    .line 529
    iget v7, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v8, 0x0

    add-int/2addr v7, v8

    move v9, v4

    :goto_0
    if-ge v8, v7, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 532
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v11, v8

    mul-double/2addr v13, v5

    invoke-virtual {v0, v9, v13, v14}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v9, v10

    move v8, v12

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 535
    :goto_1
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_2

    .line 536
    invoke-virtual {v1, v5, v3}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v6

    mul-double v6, v6, p1

    .line 537
    iget v9, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v10, v4

    :goto_2
    if-ge v8, v9, :cond_1

    .line 541
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, v15, v8

    mul-double v17, v17, v6

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v8, v16

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_reorder$2(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 148
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v3

    .line 151
    iget-object v5, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v5, v5, v3

    .line 153
    iget v7, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v8, 0x0

    add-int/2addr v7, v8

    move v9, v4

    :goto_0
    if-ge v8, v7, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 156
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v11, v8

    mul-double/2addr v13, v5

    invoke-virtual {v0, v9, v13, v14}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v9, v10

    move v8, v12

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 159
    :goto_1
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_2

    .line 160
    invoke-virtual {v1, v5, v3}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v6

    .line 161
    iget v9, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v10, v4

    :goto_2
    if-ge v8, v9, :cond_1

    .line 165
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, v15, v8

    mul-double v17, v17, v6

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v8, v16

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_small$15(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 556
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    const/4 v3, 0x0

    .line 557
    :goto_0
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_1

    .line 560
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    const-wide/16 v5, 0x0

    move/from16 v8, p5

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_0

    .line 565
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 566
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v9

    .line 564
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    mul-double v5, v5, p3

    move-object v7, p2

    .line 569
    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA_small$3(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 11

    .line 180
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    .line 181
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 184
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const-wide/16 v3, 0x0

    move v6, p3

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_0

    .line 189
    iget-object v7, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v6

    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 190
    iget v7, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v6, v7

    .line 188
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 193
    invoke-virtual {p2, v0, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$17(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 16

    move-object/from16 v0, p0

    .line 612
    iget v1, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v1, v1, p5

    .line 613
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    .line 614
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    .line 616
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_0

    move-object/from16 v9, p1

    .line 621
    iget-object v10, v9, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v5, 0x1

    aget-wide v14, v8, v5

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v5, v10

    move v8, v11

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    add-int/lit8 v8, v1, 0x1

    mul-double v6, v6, p3

    move-object/from16 v10, p2

    .line 624
    invoke-virtual {v10, v1, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v4, v4, 0x1

    move v1, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$5(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 236
    iget v1, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int v1, v1, p3

    .line 237
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p3

    .line 238
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    .line 240
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_0

    move-object/from16 v9, p1

    .line 245
    iget-object v10, v9, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v5, 0x1

    aget-wide v14, v8, v5

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v5, v10

    move v8, v11

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    add-int/lit8 v8, v1, 0x1

    move-object/from16 v10, p2

    .line 248
    invoke-virtual {v10, v1, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v4, v4, 0x1

    move v1, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$mult_reorder$0(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 79
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p4

    .line 80
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v4, v4, p4

    .line 85
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v6, 0x0

    add-int/2addr v5, v6

    .line 87
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v4

    move v4, v3

    :goto_0
    if-ge v6, v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 90
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    mul-double/2addr v13, v9

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v4, v7

    move v6, v12

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    :goto_1
    if-eq v6, v4, :cond_2

    .line 96
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 98
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v8, 0x1

    aget-wide v7, v7, v8

    move v10, v3

    :goto_2
    if-ge v6, v5, :cond_1

    .line 101
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v6, 0x1

    aget-wide v17, v15, v6

    mul-double v17, v17, v7

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v6, v16

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$mult_reorder$12(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 455
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p6

    .line 456
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v4, v4, p6

    .line 461
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v6, 0x0

    add-int/2addr v5, v6

    .line 463
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v4

    mul-double v9, v9, p3

    move v4, v3

    :goto_0
    if-ge v6, v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 466
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    mul-double/2addr v13, v9

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v4, v7

    move v6, v12

    goto :goto_0

    :cond_0
    move/from16 v4, p5

    :goto_1
    if-eq v6, v4, :cond_2

    .line 472
    iget v5, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 474
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v8, 0x1

    aget-wide v7, v7, v8

    mul-double v7, v7, p3

    move v10, v3

    :goto_2
    if-ge v6, v5, :cond_1

    .line 477
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    iget-object v15, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v6, 0x1

    aget-wide v17, v15, v6

    mul-double v17, v17, v7

    add-double v13, v13, v17

    aput-wide v13, v11, v10

    move v10, v12

    move/from16 v6, v16

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$mult_small$1(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p3

    .line 117
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p3

    const/4 v4, 0x0

    .line 118
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_1

    .line 123
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v5, v3

    const-wide/16 v6, 0x0

    move v8, v3

    move v9, v4

    :goto_1
    if-ge v8, v5, :cond_0

    .line 125
    iget-object v10, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v8, v9

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 126
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    move-object/from16 v8, p2

    .line 129
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$mult_small$13(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 492
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v2, v2, p5

    .line 493
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v3, v3, p5

    const/4 v4, 0x0

    .line 494
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_1

    .line 499
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v5, v3

    const-wide/16 v6, 0x0

    move v8, v3

    move v9, v4

    :goto_1
    if-ge v8, v5, :cond_0

    .line 501
    iget-object v10, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v10, v8

    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v8, v9

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 502
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, 0x1

    mul-double v6, v6, p3

    move-object/from16 v8, p2

    .line 505
    invoke-virtual {v8, v2, v6, v7}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 765
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 766
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 767
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 770
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda14;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda14;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v1, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 389
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 390
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 391
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 394
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 703
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 704
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 705
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 707
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 710
    :cond_2
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda22;

    move-object v2, v8

    move-object v3, p4

    move-wide v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda22;-><init>(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 327
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 328
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 329
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 331
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 334
    :cond_2
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p0, p1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda4;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAddTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 738
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 739
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 740
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 742
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda7;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda7;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v1, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 362
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 363
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const/4 v4, 0x0

    sget-object v4, Lorg/ejml/sparse/csc/factory/IRj/pUMrurWM;->PMcM:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 364
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 366
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda5;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 794
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 795
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 796
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 798
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda16;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda16;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v1, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 418
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 419
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 420
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 422
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda9;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAdd_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 633
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 634
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 635
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 637
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 640
    :cond_2
    iget v0, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v9, v0, v2

    .line 642
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda1;

    move-object v3, v2

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p0

    invoke-direct/range {v3 .. v9}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAdd_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 257
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 258
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 259
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 261
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 264
    :cond_2
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v0, v2

    .line 266
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v3, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda17;

    invoke-direct {v3, p2, p0, p1, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda17;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V

    invoke-static {v1, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAdd_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 675
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 676
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 677
    iget v2, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p4, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 679
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v1, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAdd_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 299
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 300
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 301
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 303
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 578
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 579
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 580
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 583
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda10;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda10;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v0, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 202
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 203
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 204
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 207
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda20;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 515
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 516
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 517
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 519
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 523
    :cond_1
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;

    move-object v2, v8

    move-object v3, p4

    move-wide v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;-><init>(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const-wide/16 p0, 0x0

    .line 520
    invoke-static {p4, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 139
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 140
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 141
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 143
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda23;

    invoke-direct {v2, p2, p0, p1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda23;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const-wide/16 p0, 0x0

    .line 144
    invoke-static {p2, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 551
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 552
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 553
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 555
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda3;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda3;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v0, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 175
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 176
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 177
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 179
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda19;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 607
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 608
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 609
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 611
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda11;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda11;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v0, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 231
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 232
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 233
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 235
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda6;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static mult_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 10

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 444
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 445
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 446
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 448
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 452
    :cond_1
    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int v9, v1, v2

    .line 454
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;

    move-object v3, v2

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p0

    invoke-direct/range {v3 .. v9}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const-wide/16 p0, 0x0

    .line 449
    invoke-static {p4, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static mult_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 68
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 69
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 70
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 72
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v1, v2

    .line 78
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v3, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda15;

    invoke-direct {v3, p2, p0, p1, v1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda15;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V

    invoke-static {v0, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const-wide/16 p0, 0x0

    .line 73
    invoke-static {p2, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static mult_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 487
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 488
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 489
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 491
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda13;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-wide v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda13;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    invoke-static {v0, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static mult_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 111
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 112
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 113
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 115
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda12;-><init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

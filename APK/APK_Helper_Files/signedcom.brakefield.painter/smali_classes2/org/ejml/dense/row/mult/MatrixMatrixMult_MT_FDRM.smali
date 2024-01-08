.class public Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;
.super Ljava/lang/Object;
.source "MatrixMatrixMult_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$multAddTransAB$10(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 9

    .line 395
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    move v2, v1

    .line 397
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_1

    .line 399
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-ge v2, v3, :cond_0

    .line 404
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 405
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v2

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 408
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransAB$22(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 9

    .line 771
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p4

    const/4 v1, 0x0

    move v2, v1

    .line 773
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_1

    .line 775
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, p4

    :goto_1
    if-ge v2, v3, :cond_0

    .line 780
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 781
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v2

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    mul-float/2addr v4, p3

    .line 784
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransA_reorder$20(Lorg/ejml/data/FMatrix1Row;FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 11

    .line 711
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 714
    iget-object v1, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v1, v1, p4

    mul-float/2addr v1, p1

    .line 716
    iget v2, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 719
    iget-object v6, p3, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v3, v1

    invoke-virtual {p0, v4, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    move v4, v5

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 722
    :goto_1
    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 723
    invoke-virtual {p2, v1, p4}, Lorg/ejml/data/FMatrix1Row;->unsafe_get(II)F

    move-result v2

    mul-float/2addr v2, p1

    .line 724
    iget v4, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v3

    move v5, v0

    :goto_2
    if-ge v3, v4, :cond_1

    .line 728
    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v5

    iget-object v9, p3, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    aput v8, v6, v5

    move v5, v7

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAddTransA_reorder$8(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 11

    .line 335
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    .line 338
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v1, v1, p3

    .line 340
    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 343
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v3, v1

    invoke-virtual {p0, v4, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    move v4, v5

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 346
    :goto_1
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 347
    invoke-virtual {p1, v1, p3}, Lorg/ejml/data/FMatrix1Row;->unsafe_get(II)F

    move-result v2

    .line 348
    iget v4, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v3

    move v5, v0

    :goto_2
    if-ge v3, v4, :cond_1

    .line 352
    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v5

    iget-object v9, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    aput v8, v6, v5

    move v5, v7

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAddTransA_small$21(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 8

    .line 743
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    const/4 v1, 0x0

    .line 744
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 747
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v5, p4

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 752
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 753
    iget v6, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 751
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    mul-float/2addr v3, p3

    .line 756
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransA_small$9(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 8

    .line 367
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    .line 368
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 371
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v5, p3

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 376
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 377
    iget v6, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 375
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 380
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransB$11(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 9

    .line 423
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p3

    .line 424
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p3, v1

    .line 425
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, p3

    const/4 v2, 0x0

    move v3, v2

    .line 427
    :goto_0
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 432
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move v5, v7

    move v3, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 435
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAddTransB$23(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 9

    .line 799
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p4

    .line 800
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    .line 801
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, p4

    const/4 v2, 0x0

    move v3, v2

    .line 803
    :goto_0
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    move v5, p4

    :goto_1
    if-ge v5, v1, :cond_0

    .line 808
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move v5, v7

    move v3, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, 0x1

    mul-float/2addr v4, p3

    .line 811
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_reorder$18(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FII)V
    .locals 10

    .line 643
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p5

    .line 644
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p5, v1

    .line 649
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 651
    iget-object v3, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v4, p5, 0x1

    aget p5, v3, p5

    mul-float/2addr p5, p3

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 654
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    mul-float/2addr v2, p5

    invoke-virtual {p0, v3, v2}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    move v3, v5

    move v2, v7

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v2, p4, :cond_2

    .line 660
    iget p5, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p5, v2

    .line 662
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v3, v4, 0x1

    aget v1, v1, v4

    mul-float/2addr v1, p3

    move v4, v0

    :goto_2
    if-ge v2, p5, :cond_1

    .line 665
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v4, 0x1

    aget v7, v5, v4

    iget-object v8, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    mul-float/2addr v2, v1

    add-float/2addr v7, v2

    aput v7, v5, v4

    move v4, v6

    move v2, v9

    goto :goto_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAdd_reorder$6(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;II)V
    .locals 10

    .line 267
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 268
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    .line 273
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 275
    iget-object v3, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v4, p4, 0x1

    aget p4, v3, p4

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 278
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    mul-float/2addr v2, p4

    invoke-virtual {p0, v3, v2}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    move v3, v5

    move v2, v7

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v2, p3, :cond_2

    .line 284
    iget p4, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p4, v2

    .line 286
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v3, v4, 0x1

    aget v1, v1, v4

    move v4, v0

    :goto_2
    if-ge v2, p4, :cond_1

    .line 289
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v4, 0x1

    aget v7, v5, v4

    iget-object v8, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    mul-float/2addr v2, v1

    add-float/2addr v7, v2

    aput v7, v5, v4

    move v4, v6

    move v2, v9

    goto :goto_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multAdd_small$19(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 8

    .line 680
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 681
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    const/4 v1, 0x0

    .line 682
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 687
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    add-int/2addr v2, p4

    const/4 v3, 0x0

    move v4, p4

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 689
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v4, 0x1

    aget v4, v6, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 690
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    mul-float/2addr v3, p3

    .line 693
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multAdd_small$7(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 8

    .line 304
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    .line 305
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p3, v1

    const/4 v1, 0x0

    .line 306
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 311
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    add-int/2addr v2, p3

    const/4 v3, 0x0

    move v4, p3

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 313
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v4, 0x1

    aget v4, v6, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 314
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 317
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransAB$16(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 9

    .line 584
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p4

    const/4 v1, 0x0

    move v2, v1

    .line 586
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_1

    .line 588
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, p4

    :goto_1
    if-ge v2, v3, :cond_0

    .line 593
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 594
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v2

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    mul-float/2addr v4, p3

    .line 597
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransAB$4(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 9

    .line 208
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    move v2, v1

    .line 210
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_1

    .line 212
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-ge v2, v3, :cond_0

    .line 217
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 218
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v2

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 221
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA_reorder$14(Lorg/ejml/data/FMatrix1Row;FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 11

    .line 524
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 527
    iget-object v1, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v1, v1, p4

    mul-float/2addr v1, p1

    .line 529
    iget v2, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 532
    iget-object v6, p3, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v3, v1

    invoke-virtual {p0, v4, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    move v4, v5

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 535
    :goto_1
    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 536
    invoke-virtual {p2, v1, p4}, Lorg/ejml/data/FMatrix1Row;->unsafe_get(II)F

    move-result v2

    mul-float/2addr v2, p1

    .line 537
    iget v4, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v3

    move v5, v0

    :goto_2
    if-ge v3, v4, :cond_1

    .line 541
    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v5

    iget-object v9, p3, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    aput v8, v6, v5

    move v5, v7

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_reorder$2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 11

    .line 148
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    .line 151
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v1, v1, p3

    .line 153
    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 156
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v3, v1

    invoke-virtual {p0, v4, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    move v4, v5

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 159
    :goto_1
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 160
    invoke-virtual {p1, v1, p3}, Lorg/ejml/data/FMatrix1Row;->unsafe_get(II)F

    move-result v2

    .line 161
    iget v4, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v3

    move v5, v0

    :goto_2
    if-ge v3, v4, :cond_1

    .line 165
    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v5

    iget-object v9, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    aput v8, v6, v5

    move v5, v7

    move v3, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransA_small$15(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 8

    .line 556
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    const/4 v1, 0x0

    .line 557
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 560
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v5, p4

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 565
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 566
    iget v6, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 564
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    mul-float/2addr v3, p3

    .line 569
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA_small$3(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 8

    .line 180
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    .line 181
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 184
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v5, p3

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 189
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 190
    iget v6, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    .line 188
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 193
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$17(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 9

    .line 612
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p4

    .line 613
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    .line 614
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, p4

    const/4 v2, 0x0

    move v3, v2

    .line 616
    :goto_0
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    move v5, p4

    :goto_1
    if-ge v5, v1, :cond_0

    .line 621
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move v5, v7

    move v3, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, 0x1

    mul-float/2addr v4, p3

    .line 624
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransB$5(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 9

    .line 236
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    mul-int/2addr v0, p3

    .line 237
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p3, v1

    .line 238
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, p3

    const/4 v2, 0x0

    move v3, v2

    .line 240
    :goto_0
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 245
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move v5, v7

    move v3, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 248
    invoke-virtual {p2, v0, v4}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v2, v2, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$mult_reorder$0(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;II)V
    .locals 10

    .line 79
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 80
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    .line 85
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 87
    iget-object v3, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v4, p4, 0x1

    aget p4, v3, p4

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 90
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    mul-float/2addr v2, p4

    invoke-virtual {p0, v3, v2}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    move v3, v5

    move v2, v7

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v2, p3, :cond_2

    .line 96
    iget p4, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p4, v2

    .line 98
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v3, v4, 0x1

    aget v1, v1, v4

    move v4, v0

    :goto_2
    if-ge v2, p4, :cond_1

    .line 101
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v4, 0x1

    aget v7, v5, v4

    iget-object v8, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    mul-float/2addr v2, v1

    add-float/2addr v7, v2

    aput v7, v5, v4

    move v4, v6

    move v2, v9

    goto :goto_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$mult_reorder$12(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FII)V
    .locals 10

    .line 455
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p5

    .line 456
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p5, v1

    .line 461
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 463
    iget-object v3, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v4, p5, 0x1

    aget p5, v3, p5

    mul-float/2addr p5, p3

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 466
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    mul-float/2addr v2, p5

    invoke-virtual {p0, v3, v2}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    move v3, v5

    move v2, v7

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v2, p4, :cond_2

    .line 472
    iget p5, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p5, v2

    .line 474
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v3, v4, 0x1

    aget v1, v1, v4

    mul-float/2addr v1, p3

    move v4, v0

    :goto_2
    if-ge v2, p5, :cond_1

    .line 477
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v4, 0x1

    aget v7, v5, v4

    iget-object v8, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    mul-float/2addr v2, v1

    add-float/2addr v7, v2

    aput v7, v5, v4

    move v4, v6

    move v2, v9

    goto :goto_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$mult_small$1(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 8

    .line 116
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    .line 117
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p3, v1

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 123
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    add-int/2addr v2, p3

    const/4 v3, 0x0

    move v4, p3

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 125
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v4, 0x1

    aget v4, v6, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 126
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 129
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$mult_small$13(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V
    .locals 8

    .line 492
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p4

    .line 493
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr p4, v1

    const/4 v1, 0x0

    .line 494
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 499
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    add-int/2addr v2, p4

    const/4 v3, 0x0

    move v4, p4

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 501
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v4, 0x1

    aget v4, v6, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 502
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    mul-float/2addr v3, p3

    .line 505
    invoke-virtual {p2, v0, v3}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 765
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 766
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 767
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 770
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda8;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 391
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 394
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda16;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 703
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 704
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 705
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 707
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 710
    :cond_2
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda7;

    invoke-direct {v2, p3, p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda7;-><init>(Lorg/ejml/data/FMatrix1Row;FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 329
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 331
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 334
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2, p0, p1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda9;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAddTransA_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 738
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 739
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 740
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 742
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda14;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 364
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 366
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda18;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda18;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 794
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 795
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 796
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 798
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda23;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda23;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v4, 0x0

    sget-object v4, Lorg/ejml/dense/row/decompose/EB/JlKLR;->QFJELnCc:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 420
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 422
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda6;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAdd_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 633
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 634
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 635
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 637
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 640
    :cond_2
    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int v8, v0, v2

    .line 642
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda19;

    move-object v3, v2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p0

    invoke-direct/range {v3 .. v8}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda19;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAdd_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 259
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 261
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    goto :goto_2

    .line 264
    :cond_2
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, v2

    .line 266
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v3, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda13;

    invoke-direct {v3, p2, p0, p1, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda13;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V

    invoke-static {v1, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static multAdd_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 675
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 676
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 677
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 679
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multAdd_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 301
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 303
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda17;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda17;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v1, v0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 578
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 579
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 580
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 583
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda4;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 204
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 207
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 515
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 516
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 517
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 519
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 523
    :cond_1
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda3;-><init>(Lorg/ejml/data/FMatrix1Row;FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 520
    invoke-static {p3, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public static multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 141
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 143
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p0, p1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 144
    invoke-static {p2, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public static multTransA_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 551
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 552
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 553
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 555
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda10;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/material/navigation/PjId/DFPED;->efduWW:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 177
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 179
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda15;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 607
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 608
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 609
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 611
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda21;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda21;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 233
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 235
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda22;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda22;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static mult_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 444
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 445
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 446
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 448
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 452
    :cond_1
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int v8, v1, v2

    .line 454
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda5;

    move-object v3, v2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p0

    invoke-direct/range {v3 .. v8}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda5;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 449
    invoke-static {p3, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public static mult_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    sget-object v2, Lkotlin/text/jdk8/Qq/kCWfCxpUPBTL;->NTeuzhRvZV:Ljava/lang/String;

    .line 68
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 69
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 70
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 72
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v2

    .line 78
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v3, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda20;

    invoke-direct {v3, p2, p0, p1, v1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda20;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V

    invoke-static {v0, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 73
    invoke-static {p2, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public static mult_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 487
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 488
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 489
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 491
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2, p1, p3, p0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static mult_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
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
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 113
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 115
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v2, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, p0, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda11;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    invoke-static {v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

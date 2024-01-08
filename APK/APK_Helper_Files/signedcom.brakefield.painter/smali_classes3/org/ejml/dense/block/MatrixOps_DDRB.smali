.class public Lorg/ejml/dense/block/MatrixOps_DDRB;
.super Ljava/lang/Object;
.source "MatrixOps_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAligned(ILorg/ejml/data/DSubmatrixD1;)Z
    .locals 3

    .line 633
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    rem-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 635
    :cond_0
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_1

    return v1

    .line 638
    :cond_1
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget-object v2, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-eq v0, v2, :cond_2

    return v1

    .line 642
    :cond_2
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_3

    iget p0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget-object p1, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    iget p1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIdenticalShape(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 2

    .line 576
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v1, :cond_2

    .line 578
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 580
    iget p0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne p0, p1, :cond_0

    return-void

    .line 581
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NUmber of columns is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 579
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 577
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Block size is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkShapeMult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 6

    .line 653
    invoke-virtual {p1}, Lorg/ejml/data/DSubmatrixD1;->getRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DSubmatrixD1;->getCols()I

    move-result v1

    .line 654
    invoke-virtual {p2}, Lorg/ejml/data/DSubmatrixD1;->getRows()I

    move-result v2

    invoke-virtual {p2}, Lorg/ejml/data/DSubmatrixD1;->getCols()I

    move-result v3

    .line 655
    invoke-virtual {p3}, Lorg/ejml/data/DSubmatrixD1;->getRows()I

    move-result v4

    invoke-virtual {p3}, Lorg/ejml/data/DSubmatrixD1;->getCols()I

    move-result v5

    if-ne v0, v4, :cond_5

    if-ne v3, v5, :cond_4

    if-ne v1, v2, :cond_3

    .line 665
    invoke-static {p0, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->blockAligned(ILorg/ejml/data/DSubmatrixD1;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 668
    invoke-static {p0, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->blockAligned(ILorg/ejml/data/DSubmatrixD1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 671
    invoke-static {p0, p3}, Lorg/ejml/dense/block/MatrixOps_DDRB;->blockAligned(ILorg/ejml/data/DSubmatrixD1;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 672
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix C is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 669
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix B is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix A is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 663
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch A columns and B rows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch B and C columns"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch A and C rows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRBlock;
    .locals 3

    .line 346
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    .line 347
    invoke-static {p0, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;I)Lorg/ejml/data/DMatrixRBlock;
    .locals 3

    .line 340
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2, p1}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    .line 341
    invoke-static {p0, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 0

    .line 121
    invoke-static {p0, p1}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    return-void
.end method

.method public static convertBlockToRow(III[DLorg/ejml/data/DGrowArray;)V
    .locals 9

    .line 157
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    .line 158
    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    sub-int v2, p0, v1

    .line 161
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v1, p1

    mul-int v4, v2, p1

    .line 163
    invoke-static {p3, v3, p4, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_1

    sub-int v5, p1, v4

    .line 166
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v6, v2, v4

    add-int v7, v3, v4

    move v8, v0

    :goto_2
    if-ge v8, v2, :cond_0

    .line 172
    invoke-static {p4, v6, p3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v5

    add-int/2addr v7, p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/2addr v4, p2

    goto :goto_1

    :cond_1
    add-int/2addr v1, p2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static convertInplace(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixRBlock;
    .locals 3

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {p1}, Lorg/ejml/data/DMatrixRBlock;-><init>()V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v0, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 69
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    iput v0, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 70
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 71
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 72
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v0, v1, v2, p0, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convertRowToBlock(III[DLorg/ejml/data/DGrowArray;)V

    return-object p1
.end method

.method public static convertInplace(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    if-nez p1, :cond_0

    .line 134
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1}, Lorg/ejml/data/DMatrixRMaj;-><init>()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    iput-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 137
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 138
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 139
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object p0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-static {v0, v1, v2, p0, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convertBlockToRow(III[DLorg/ejml/data/DGrowArray;)V

    return-object p1
.end method

.method public static convertRowToBlock(III[DLorg/ejml/data/DGrowArray;)V
    .locals 9

    .line 90
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    .line 91
    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    sub-int v2, p0, v1

    .line 94
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v1, p1

    mul-int v4, v2, p1

    .line 96
    invoke-static {p3, v3, p4, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_1

    sub-int v5, p1, v4

    .line 100
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v6, v2, v4

    add-int/2addr v6, v3

    move v7, v0

    move v8, v4

    :goto_2
    if-ge v7, v2, :cond_0

    .line 106
    invoke-static {p4, v8, p3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v5

    add-int/2addr v8, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/2addr v4, p2

    goto :goto_1

    :cond_1
    add-int/2addr v1, p2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static convertTranSrc(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 187
    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v2, v3, :cond_4

    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 190
    :goto_0
    iget v4, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v3, v4, :cond_3

    .line 191
    iget v4, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v5, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v2

    .line 193
    :goto_1
    iget v6, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v5, v6, :cond_2

    .line 194
    iget v6, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v7, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 196
    iget v7, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v7, v3

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    .line 197
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v3

    move v9, v2

    :goto_2
    if-ge v9, v6, :cond_1

    .line 200
    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    add-int v11, v7, v9

    move v12, v2

    :goto_3
    if-ge v12, v4, :cond_0

    .line 203
    iget-object v13, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    iget-object v14, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v15, v10, 0x1

    aget-wide v16, v14, v10

    aput-wide v16, v13, v11

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v6

    move v10, v15

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 193
    :cond_1
    iget v6, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 190
    :cond_2
    iget v4, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    return-void

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible matrix shapes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyTriangle(ZLorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 432
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v2, v3, :cond_e

    .line 434
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-lt v2, v3, :cond_d

    .line 436
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-lt v2, v3, :cond_c

    .line 439
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 441
    iget v3, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v4, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 442
    iget v4, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p0, :cond_5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_b

    .line 446
    iget v7, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 447
    iget v8, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v4, :cond_4

    .line 450
    iget v10, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 451
    iget v11, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 453
    iget v12, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v12, v6

    mul-int v13, v7, v9

    add-int/2addr v12, v13

    .line 454
    iget v13, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v13, v6

    mul-int v14, v8, v9

    add-int/2addr v13, v14

    if-ne v9, v6, :cond_2

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_1

    move v15, v14

    :goto_3
    if-ge v15, v11, :cond_0

    .line 459
    iget-object v5, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v16, v11, v14

    add-int v16, v13, v16

    add-int v16, v16, v15

    move/from16 v17, v4

    iget-object v4, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v18, v10, v14

    add-int v18, v12, v18

    add-int v18, v18, v15

    aget-wide v18, v4, v18

    aput-wide v18, v5, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    goto :goto_3

    :cond_0
    move/from16 v17, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    move/from16 v17, v4

    goto :goto_5

    :cond_2
    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v8, :cond_3

    .line 464
    iget-object v5, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v14, v10, v4

    add-int/2addr v14, v12

    iget-object v15, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v16, v11, v4

    move/from16 p0, v7

    add-int v7, v13, v16

    invoke-static {v5, v14, v15, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p0

    goto :goto_4

    :cond_3
    :goto_5
    move/from16 p0, v7

    add-int/2addr v9, v2

    move/from16 v7, p0

    move/from16 v4, v17

    goto :goto_1

    :cond_4
    move/from16 v17, v4

    add-int/2addr v6, v2

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_b

    .line 471
    iget v5, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 472
    iget v6, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-gt v7, v4, :cond_a

    .line 475
    iget v8, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v8, v7

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 476
    iget v9, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v9, v7

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 478
    iget v10, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v10, v4

    mul-int v11, v5, v7

    add-int/2addr v10, v11

    .line 479
    iget v11, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v11, v4

    mul-int v12, v6, v7

    add-int/2addr v11, v12

    if-ne v7, v4, :cond_8

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v6, :cond_7

    add-int/lit8 v13, v12, 0x1

    .line 483
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_6

    move/from16 v16, v3

    .line 485
    iget-object v3, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v17, v9, v12

    add-int v17, v11, v17

    add-int v17, v17, v15

    move/from16 p0, v5

    iget-object v5, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v18, v8, v12

    add-int v18, v10, v18

    add-int v18, v18, v15

    aget-wide v18, v5, v18

    aput-wide v18, v3, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p0

    move/from16 v3, v16

    goto :goto_9

    :cond_6
    move v12, v13

    goto :goto_8

    :cond_7
    move/from16 v16, v3

    move/from16 p0, v5

    goto :goto_b

    :cond_8
    move/from16 v16, v3

    move/from16 p0, v5

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_9

    .line 490
    iget-object v5, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v12, v8, v3

    add-int/2addr v12, v10

    iget-object v13, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v14, v9, v3

    add-int/2addr v14, v11

    invoke-static {v5, v12, v13, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    :goto_b
    add-int/2addr v7, v2

    move/from16 v5, p0

    move/from16 v3, v16

    goto :goto_7

    :cond_a
    move/from16 v16, v3

    add-int/2addr v4, v2

    goto/16 :goto_6

    :cond_b
    return-void

    .line 437
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer columns than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer rows than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRandom(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRBlock;
    .locals 7

    .line 322
    new-instance v6, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v6, p0, p1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    move-object v0, v6

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 324
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static createRandom(IIDDLjava/util/Random;I)Lorg/ejml/data/DMatrixRBlock;
    .locals 7

    .line 332
    new-instance v6, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v6, p0, p1, p7}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    move-object v0, v6

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 334
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static extractAligned(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 595
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v2, v3, :cond_5

    .line 597
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-lt v2, v3, :cond_4

    .line 599
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-lt v2, v3, :cond_3

    .line 602
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 604
    iget v3, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v4, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 605
    iget v4, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 608
    iget v7, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 609
    iget v8, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_1

    .line 612
    iget v10, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 613
    iget v11, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 615
    iget v12, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v12, v6

    mul-int v13, v7, v9

    add-int/2addr v12, v13

    .line 616
    iget v13, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v13, v6

    mul-int v14, v8, v9

    add-int/2addr v13, v14

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_0

    .line 619
    iget-object v15, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v16, v10, v14

    add-int v5, v12, v16

    iget-object v0, v1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v16, v11, v14

    add-int v1, v13, v16

    invoke-static {v15, v5, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_2

    :cond_0
    add-int/2addr v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    add-int/2addr v6, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    return-void

    .line 600
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer columns than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer rows than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static identity(III)Lorg/ejml/data/DMatrixRBlock;
    .locals 10

    .line 548
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0, p0, p1, p2}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    .line 550
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 553
    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 554
    iget v3, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 556
    iget v4, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v4, v1

    mul-int v5, v2, v1

    add-int/2addr v4, v5

    .line 558
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, p1

    :goto_1
    if-ge v5, v2, :cond_0

    .line 560
    iget-object v6, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v7, v5, v3

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isEquals(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 2

    .line 352
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 355
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Z

    move-result p0

    return p0
.end method

.method public static isEquals(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;D)Z
    .locals 2

    .line 359
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;D)Z

    move-result p0

    return p0
.end method

.method public static mult(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 10

    .line 214
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 216
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 218
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 220
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 223
    iget v7, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 225
    new-instance v8, Lorg/ejml/data/DSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 226
    new-instance v9, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 227
    new-instance v6, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 229
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_DDRB;->mult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 10

    .line 233
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 235
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 237
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 239
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 242
    iget v7, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 244
    new-instance v8, Lorg/ejml/data/DSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 245
    new-instance v9, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 246
    new-instance v6, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 248
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    return-void

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 10

    .line 252
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_3

    .line 254
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 256
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 258
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 261
    iget v7, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 263
    new-instance v8, Lorg/ejml/data/DSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 264
    new-instance v9, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 265
    new-instance v6, Lorg/ejml/data/DSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    .line 267
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multTransB(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with columns in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static set(Lorg/ejml/data/DMatrixRBlock;D)V
    .locals 0

    .line 509
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 12

    .line 518
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    .line 520
    invoke-static {p0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    .line 522
    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 525
    iget v4, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 526
    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 528
    iget v6, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v6, v3

    mul-int v7, v4, v3

    add-int/2addr v6, v7

    .line 530
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_0

    .line 532
    iget-object v8, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v9, v7, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static transpose(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;
    .locals 10

    if-eqz p1, :cond_2

    .line 280
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 282
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible block size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_2
    new-instance p1, Lorg/ejml/data/DMatrixRBlock;

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 288
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_4

    .line 289
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v9, v0

    .line 291
    :goto_2
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v9, v3, :cond_3

    .line 292
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v4, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v4, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 294
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v3, v1

    mul-int v4, v2, v9

    add-int v5, v3, v4

    .line 295
    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v3, v9

    mul-int v4, v7, v1

    add-int v6, v3, v4

    move-object v3, p0

    move-object v4, p1

    move v8, v2

    .line 297
    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/block/MatrixOps_DDRB;->transposeBlock(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;IIII)V

    .line 291
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v9, v3

    goto :goto_2

    .line 288
    :cond_3
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private static transposeBlock(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;IIII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    add-int v1, p3, v0

    mul-int v2, p4, v0

    add-int/2addr v2, p2

    add-int v3, v2, p4

    :goto_1
    if-ge v2, v3, :cond_0

    .line 315
    iget-object v4, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    iget-object v5, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v1

    add-int/2addr v1, p5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zeroTriangle(ZLorg/ejml/data/DMatrixRBlock;)V
    .locals 13

    .line 369
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    move p0, v3

    .line 372
    :goto_0
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge p0, v4, :cond_b

    .line 373
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v4, p0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, p0

    .line 375
    :goto_1
    iget v6, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v5, v6, :cond_4

    .line 376
    iget v6, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 378
    iget v7, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v7, p0

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    if-ne v5, p0, :cond_1

    move v8, v3

    :goto_2
    if-ge v8, v4, :cond_3

    add-int/lit8 v9, v8, 0x1

    move v10, v9

    :goto_3
    if-ge v10, v6, :cond_0

    .line 383
    iget-object v11, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v12, v6, v8

    add-int/2addr v12, v7

    add-int/2addr v12, v10

    aput-wide v1, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_0
    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_4
    if-ge v8, v4, :cond_3

    move v9, v3

    :goto_5
    if-ge v9, v6, :cond_2

    .line 389
    iget-object v10, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v11, v6, v8

    add-int/2addr v11, v7

    add-int/2addr v11, v9

    aput-wide v1, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/2addr v5, v0

    goto :goto_1

    :cond_4
    add-int/2addr p0, v0

    goto :goto_0

    :cond_5
    move p0, v3

    .line 396
    :goto_6
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge p0, v4, :cond_b

    .line 397
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v4, p0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v3

    :goto_7
    if-gt v5, p0, :cond_a

    .line 400
    iget v6, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 402
    iget v7, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v7, p0

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    if-ne v5, p0, :cond_7

    move v8, v3

    :goto_8
    if-ge v8, v4, :cond_9

    .line 406
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v3

    :goto_9
    if-ge v10, v9, :cond_6

    .line 408
    iget-object v11, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v12, v6, v8

    add-int/2addr v12, v7

    add-int/2addr v12, v10

    aput-wide v1, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    move v8, v3

    :goto_a
    if-ge v8, v4, :cond_9

    move v9, v3

    :goto_b
    if-ge v9, v6, :cond_8

    .line 414
    iget-object v10, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    mul-int v11, v6, v8

    add-int/2addr v11, v7

    add-int/2addr v11, v9

    aput-wide v1, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_9
    add-int/2addr v5, v0

    goto :goto_7

    :cond_a
    add-int/2addr p0, v0

    goto :goto_6

    :cond_b
    return-void
.end method

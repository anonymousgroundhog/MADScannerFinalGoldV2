.class public Lorg/ejml/dense/block/MatrixOps_FDRB;
.super Ljava/lang/Object;
.source "MatrixOps_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAligned(ILorg/ejml/data/FSubmatrixD1;)Z
    .locals 3

    .line 635
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    rem-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 637
    :cond_0
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_1

    return v1

    .line 640
    :cond_1
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget-object v2, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-eq v0, v2, :cond_2

    return v1

    .line 644
    :cond_2
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_3

    iget p0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget-object p1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p1, Lorg/ejml/data/FMatrixD1;

    iget p1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIdenticalShape(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 2

    .line 578
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v1, :cond_2

    .line 580
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 582
    iget p0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget p1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne p0, p1, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NUmber of columns is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 579
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Block size is different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkShapeMult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 6

    .line 655
    invoke-virtual {p1}, Lorg/ejml/data/FSubmatrixD1;->getRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FSubmatrixD1;->getCols()I

    move-result v1

    .line 656
    invoke-virtual {p2}, Lorg/ejml/data/FSubmatrixD1;->getRows()I

    move-result v2

    invoke-virtual {p2}, Lorg/ejml/data/FSubmatrixD1;->getCols()I

    move-result v3

    .line 657
    invoke-virtual {p3}, Lorg/ejml/data/FSubmatrixD1;->getRows()I

    move-result v4

    invoke-virtual {p3}, Lorg/ejml/data/FSubmatrixD1;->getCols()I

    move-result v5

    if-ne v0, v4, :cond_5

    if-ne v3, v5, :cond_4

    if-ne v1, v2, :cond_3

    .line 667
    invoke-static {p0, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->blockAligned(ILorg/ejml/data/FSubmatrixD1;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 670
    invoke-static {p0, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->blockAligned(ILorg/ejml/data/FSubmatrixD1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 673
    invoke-static {p0, p3}, Lorg/ejml/dense/block/MatrixOps_FDRB;->blockAligned(ILorg/ejml/data/FSubmatrixD1;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 674
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix C is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 671
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix B is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 668
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Sub-Matrix A is not block aligned"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 665
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch A columns and B rows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 663
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch B and C columns"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Mismatch A and C rows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRBlock;
    .locals 3

    .line 348
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    .line 349
    invoke-static {p0, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;I)Lorg/ejml/data/FMatrixRBlock;
    .locals 3

    .line 342
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2, p1}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 343
    invoke-static {p0, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    return-void
.end method

.method public static convertBlockToRow(III[FLorg/ejml/data/FGrowArray;)V
    .locals 9

    .line 159
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    .line 160
    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    sub-int v2, p0, v1

    .line 163
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v1, p1

    mul-int v4, v2, p1

    .line 165
    invoke-static {p3, v3, p4, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_1

    sub-int v5, p1, v4

    .line 168
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v6, v2, v4

    add-int v7, v3, v4

    move v8, v0

    :goto_2
    if-ge v8, v2, :cond_0

    .line 174
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

.method public static convertInplace(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixRBlock;
    .locals 3

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {p1}, Lorg/ejml/data/FMatrixRBlock;-><init>()V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v0, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 71
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    iput v0, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 72
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 73
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 74
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v0, v1, v2, p0, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convertRowToBlock(III[FLorg/ejml/data/FGrowArray;)V

    return-object p1
.end method

.method public static convertInplace(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    if-nez p1, :cond_0

    .line 136
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1}, Lorg/ejml/data/FMatrixRMaj;-><init>()V

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    iput-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 139
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 140
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 141
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object p0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-static {v0, v1, v2, p0, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convertBlockToRow(III[FLorg/ejml/data/FGrowArray;)V

    return-object p1
.end method

.method public static convertRowToBlock(III[FLorg/ejml/data/FGrowArray;)V
    .locals 9

    .line 92
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    .line 93
    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    sub-int v2, p0, v1

    .line 96
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v1, p1

    mul-int v4, v2, p1

    .line 98
    invoke-static {p3, v3, p4, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_1

    sub-int v5, p1, v4

    .line 102
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v6, v2, v4

    add-int/2addr v6, v3

    move v7, v0

    move v8, v4

    :goto_2
    if-ge v7, v2, :cond_0

    .line 108
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

.method public static convertTranSrc(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 14

    .line 189
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_3

    .line 193
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    .line 195
    :goto_1
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_2

    .line 196
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v5, v1

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    .line 199
    iget v6, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v1

    move v7, v0

    :goto_2
    if-ge v7, v4, :cond_1

    .line 202
    iget v8, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    add-int v9, v5, v7

    move v10, v0

    :goto_3
    if-ge v10, v2, :cond_0

    .line 205
    iget-object v11, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    iget-object v12, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v13, v8, 0x1

    aget v8, v12, v8

    aput v8, v11, v9

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v4

    move v8, v13

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 195
    :cond_1
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 192
    :cond_2
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return-void

    .line 190
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible matrix shapes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyTriangle(ZLorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 434
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v2, v3, :cond_e

    .line 436
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-lt v2, v3, :cond_d

    .line 438
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-lt v2, v3, :cond_c

    .line 441
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 443
    iget v3, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v4, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 444
    iget v4, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v5, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p0, :cond_5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_b

    .line 448
    iget v7, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 449
    iget v8, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v4, :cond_4

    .line 452
    iget v10, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 453
    iget v11, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 455
    iget v12, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v12, v6

    mul-int v13, v7, v9

    add-int/2addr v12, v13

    .line 456
    iget v13, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

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

    .line 461
    iget-object v5, v1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v16, v11, v14

    add-int v16, v13, v16

    add-int v16, v16, v15

    move/from16 v17, v4

    iget-object v4, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v18, v10, v14

    add-int v18, v12, v18

    add-int v18, v18, v15

    aget v4, v4, v18

    aput v4, v5, v16

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

    .line 466
    iget-object v5, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v14, v10, v4

    add-int/2addr v14, v12

    iget-object v15, v1, Lorg/ejml/data/FMatrixRBlock;->data:[F

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

    .line 473
    iget v5, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 474
    iget v6, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-gt v7, v4, :cond_a

    .line 477
    iget v8, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v8, v7

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 478
    iget v9, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v9, v7

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 480
    iget v10, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v10, v4

    mul-int v11, v5, v7

    add-int/2addr v10, v11

    .line 481
    iget v11, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v11, v4

    mul-int v12, v6, v7

    add-int/2addr v11, v12

    if-ne v7, v4, :cond_8

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v6, :cond_7

    add-int/lit8 v13, v12, 0x1

    .line 485
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_6

    move/from16 v16, v3

    .line 487
    iget-object v3, v1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v17, v9, v12

    add-int v17, v11, v17

    add-int v17, v17, v15

    move/from16 p0, v5

    iget-object v5, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v18, v8, v12

    add-int v18, v10, v18

    add-int v18, v18, v15

    aget v5, v5, v18

    aput v5, v3, v17

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

    .line 492
    iget-object v5, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v12, v8, v3

    add-int/2addr v12, v10

    iget-object v13, v1, Lorg/ejml/data/FMatrixRBlock;->data:[F

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

    .line 439
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer columns than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer rows than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRandom(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRBlock;
    .locals 1

    .line 324
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    .line 326
    invoke-static {v0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static createRandom(IIFFLjava/util/Random;I)Lorg/ejml/data/FMatrixRBlock;
    .locals 1

    .line 334
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, p0, p1, p5}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 336
    invoke-static {v0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static extractAligned(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 597
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v2, v3, :cond_5

    .line 599
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-lt v2, v3, :cond_4

    .line 601
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v3, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-lt v2, v3, :cond_3

    .line 604
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 606
    iget v3, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v4, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 607
    iget v4, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v5, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 610
    iget v7, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 611
    iget v8, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_1

    .line 614
    iget v10, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 615
    iget v11, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 617
    iget v12, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v12, v6

    mul-int v13, v7, v9

    add-int/2addr v12, v13

    .line 618
    iget v13, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v13, v6

    mul-int v14, v8, v9

    add-int/2addr v13, v14

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_0

    .line 621
    iget-object v15, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v16, v10, v14

    add-int v5, v12, v16

    iget-object v0, v1, Lorg/ejml/data/FMatrixRBlock;->data:[F

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

    .line 602
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer columns than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The src has fewer rows than dst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static identity(III)Lorg/ejml/data/FMatrixRBlock;
    .locals 9

    .line 550
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, p0, p1, p2}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 552
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 555
    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 556
    iget v3, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 558
    iget v4, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v4, v1

    mul-int v5, v2, v1

    add-int/2addr v4, v5

    .line 560
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, p1

    :goto_1
    if-ge v5, v2, :cond_0

    .line 562
    iget-object v6, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v7, v5, v3

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)Z
    .locals 2

    .line 354
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Z

    move-result p0

    return p0
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;F)Z
    .locals 2

    .line 361
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 364
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;F)Z

    move-result p0

    return p0
.end method

.method public static mult(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 216
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 218
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 220
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 222
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 225
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 227
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 228
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 229
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 231
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_FDRB;->mult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 235
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 237
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 239
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 241
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 244
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 246
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 247
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 248
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 250
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 254
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_3

    .line 256
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 258
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 260
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 263
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 265
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 266
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 267
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 269
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multTransB(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with columns in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static set(Lorg/ejml/data/FMatrixRBlock;F)V
    .locals 0

    .line 511
    invoke-static {p0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 11

    .line 520
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 522
    invoke-static {p0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    .line 524
    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 527
    iget v4, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 528
    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 530
    iget v6, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v6, v3

    mul-int v7, v4, v3

    add-int/2addr v6, v7

    .line 532
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_0

    .line 534
    iget-object v8, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v9, v7, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static transpose(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;
    .locals 10

    if-eqz p1, :cond_2

    .line 282
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 284
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible block size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_2
    new-instance p1, Lorg/ejml/data/FMatrixRBlock;

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 290
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_4

    .line 291
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v9, v0

    .line 293
    :goto_2
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v9, v3, :cond_3

    .line 294
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v4, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v4, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 296
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v3, v1

    mul-int v4, v2, v9

    add-int v5, v3, v4

    .line 297
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v3, v9

    mul-int v4, v7, v1

    add-int v6, v3, v4

    move-object v3, p0

    move-object v4, p1

    move v8, v2

    .line 299
    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/block/MatrixOps_FDRB;->transposeBlock(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;IIII)V

    .line 293
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v9, v3

    goto :goto_2

    .line 290
    :cond_3
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private static transposeBlock(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;IIII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    add-int v1, p3, v0

    mul-int v2, p4, v0

    add-int/2addr v2, p2

    add-int v3, v2, p4

    :goto_1
    if-ge v2, v3, :cond_0

    .line 317
    iget-object v4, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    iget-object v5, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    aget v5, v5, v2

    aput v5, v4, v1

    add-int/2addr v1, p5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zeroTriangle(ZLorg/ejml/data/FMatrixRBlock;)V
    .locals 12

    .line 371
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    move p0, v2

    .line 374
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge p0, v3, :cond_b

    .line 375
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, p0

    .line 377
    :goto_1
    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v4, v5, :cond_4

    .line 378
    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 380
    iget v6, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v6, p0

    mul-int v7, v3, v4

    add-int/2addr v6, v7

    if-ne v4, p0, :cond_1

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    move v9, v8

    :goto_3
    if-ge v9, v5, :cond_0

    .line 385
    iget-object v10, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v11, v5, v7

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    aput v1, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_0
    move v7, v8

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_4
    if-ge v7, v3, :cond_3

    move v8, v2

    :goto_5
    if-ge v8, v5, :cond_2

    .line 391
    iget-object v9, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v10, v5, v7

    add-int/2addr v10, v6

    add-int/2addr v10, v8

    aput v1, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/2addr v4, v0

    goto :goto_1

    :cond_4
    add-int/2addr p0, v0

    goto :goto_0

    :cond_5
    move p0, v2

    .line 398
    :goto_6
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge p0, v3, :cond_b

    .line 399
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v2

    :goto_7
    if-gt v4, p0, :cond_a

    .line 402
    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 404
    iget v6, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v6, p0

    mul-int v7, v3, v4

    add-int/2addr v6, v7

    if-ne v4, p0, :cond_7

    move v7, v2

    :goto_8
    if-ge v7, v3, :cond_9

    .line 408
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v2

    :goto_9
    if-ge v9, v8, :cond_6

    .line 410
    iget-object v10, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v11, v5, v7

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    aput v1, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    move v7, v2

    :goto_a
    if-ge v7, v3, :cond_9

    move v8, v2

    :goto_b
    if-ge v8, v5, :cond_8

    .line 416
    iget-object v9, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    mul-int v10, v5, v7

    add-int/2addr v10, v6

    add-int/2addr v10, v8

    aput v1, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_9
    add-int/2addr v4, v0

    goto :goto_7

    :cond_a
    add-int/2addr p0, v0

    goto :goto_6

    :cond_b
    return-void
.end method

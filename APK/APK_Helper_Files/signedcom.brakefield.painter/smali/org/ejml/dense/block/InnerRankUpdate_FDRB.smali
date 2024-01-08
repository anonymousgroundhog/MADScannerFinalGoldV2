.class public Lorg/ejml/dense/block/InnerRankUpdate_FDRB;
.super Ljava/lang/Object;
.source "InnerRankUpdate_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static multTransABlockMinus([F[FIIIIII)V
    .locals 8

    mul-int/2addr p5, p7

    add-int/2addr p5, p3

    :goto_0
    if-eq p3, p5, :cond_2

    add-int v0, p2, p6

    add-int v1, p3, p7

    move v2, p4

    :goto_1
    if-eq p2, v0, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 221
    aget p2, p0, p2

    move v4, p3

    :goto_2
    if-eq v4, v1, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 225
    aget v6, p1, v2

    add-int/lit8 v7, v4, 0x1

    aget v4, p0, v4

    mul-float/2addr v4, p2

    sub-float/2addr v6, v4

    aput v6, p1, v2

    move v2, v5

    move v4, v7

    goto :goto_2

    :cond_0
    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v0

    move p3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransABlockMinus_U([F[FIIIIII)V
    .locals 12

    move/from16 v0, p6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move/from16 v3, p5

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int v5, v4, v0

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 254
    aget v5, p0, v5

    mul-int v6, v4, p7

    add-int/2addr v6, p3

    add-int/2addr v6, v2

    mul-int v7, v2, p7

    add-int v7, v7, p4

    add-int/2addr v7, v2

    sub-int v8, v7, v2

    add-int v8, v8, p7

    :goto_2
    if-eq v7, v8, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 262
    aget v10, p1, v7

    add-int/lit8 v11, v6, 0x1

    aget v6, p0, v6

    mul-float/2addr v6, v5

    sub-float/2addr v10, v6

    aput v10, p1, v7

    move v7, v9

    move v6, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus([F[FIIIIII)V
    .locals 12

    const/4 v0, 0x0

    move/from16 v1, p4

    move/from16 v3, p6

    move v2, v0

    move v0, p2

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v0, p5

    add-int v5, v1, p7

    move v6, p3

    :goto_1
    if-eq v1, v5, :cond_1

    const/4 v7, 0x0

    move v8, v0

    move v9, v6

    :goto_2
    if-eq v8, v4, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 302
    aget v8, p0, v8

    add-int/lit8 v11, v9, 0x1

    aget v9, p0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v8, v10

    move v9, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v1, 0x1

    .line 304
    aget v9, p1, v1

    sub-float/2addr v9, v7

    aput v9, p1, v1

    add-int v6, v6, p5

    move v1, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus_L([F[FIIIIII)V
    .locals 13

    const/4 v0, 0x0

    move/from16 v1, p6

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    mul-int v3, v2, p5

    add-int/2addr v3, p2

    add-int v4, v3, p5

    mul-int v5, v2, p7

    add-int v5, v5, p4

    move/from16 v7, p3

    move v6, v0

    :goto_1
    if-gt v6, v2, :cond_1

    const/4 v8, 0x0

    move v9, v3

    move v10, v7

    :goto_2
    if-eq v9, v4, :cond_0

    add-int/lit8 v11, v9, 0x1

    .line 342
    aget v9, p0, v9

    add-int/lit8 v12, v10, 0x1

    aget v10, p0, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v9, v11

    move v10, v12

    goto :goto_2

    :cond_0
    add-int v9, v5, v6

    .line 344
    aget v10, p1, v9

    sub-float/2addr v10, v8

    aput v10, p1, v9

    add-int/lit8 v6, v6, 0x1

    add-int v7, v7, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rankNUpdate(IFLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 52
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_4

    .line 56
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 58
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 60
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_2

    .line 64
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_1

    .line 66
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v4, v3

    add-int v15, v5, v6

    .line 67
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 69
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v17, v5, v6

    .line 70
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int v5, v5, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 72
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v5

    :goto_1
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_0

    .line 74
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 76
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int v5, v5, v17

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v18

    add-int v11, v5, v6

    .line 77
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v3

    add-int v10, v5, v6

    .line 79
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v8, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v5, p1

    move v9, v15

    move v12, v3

    move/from16 v13, v16

    move/from16 v20, v14

    move/from16 v14, v19

    invoke-static/range {v5 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA(F[F[F[FIIIIII)V

    add-int v14, v20, v0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    return-void

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static symmRankNMinus_L(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 149
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_5

    .line 153
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v4, v5

    .line 155
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_4

    .line 157
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 161
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 162
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 163
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v4

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v13

    add-int v14, v5, v6

    .line 165
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v15, v5, v6

    .line 166
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 168
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v12, v5

    :goto_1
    if-gt v12, v4, :cond_1

    .line 170
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v12

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 172
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v12, v6

    iget v7, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v16

    add-int v9, v5, v6

    .line 173
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v12

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int v6, v6, v17

    add-int v8, v5, v6

    if-ne v4, v12, :cond_0

    .line 176
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v14

    move v10, v3

    move v11, v13

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransBBlockMinus_L([F[FIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v12

    .line 179
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v14

    move v10, v3

    move v11, v13

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransBBlockMinus([F[FIIIIII)V

    :goto_2
    add-int v12, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_2
    return-void

    .line 158
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->xeFprwWfHX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static symmRankNMinus_U(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 98
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_5

    .line 102
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 104
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_4

    .line 106
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 111
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 113
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v4, v3

    add-int v13, v5, v6

    .line 114
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 116
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v15, v5, v6

    .line 117
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v12, v4

    .line 119
    :goto_1
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v12, v5, :cond_1

    .line 121
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v12

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 123
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v12, v6

    iget v7, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v16

    add-int v9, v5, v6

    .line 124
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v12, v3

    add-int v8, v5, v6

    if-ne v4, v12, :cond_0

    .line 128
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v13

    move v10, v3

    move v11, v14

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransABlockMinus_U([F[FIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v12

    .line 131
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v13

    move v10, v3

    move v11, v14

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransABlockMinus([F[FIIIIII)V

    :goto_2
    add-int v12, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_2
    return-void

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

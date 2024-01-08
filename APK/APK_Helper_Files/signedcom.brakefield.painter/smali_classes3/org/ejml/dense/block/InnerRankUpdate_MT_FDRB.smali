.class public Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB;
.super Ljava/lang/Object;
.source "InnerRankUpdate_MT_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$rankNUpdate$0(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;FI)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 65
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, p5, p1

    add-int v13, v1, v2

    .line 66
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int v1, v1, p5

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 68
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v1, p5, v1

    iget v2, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v15, v1, v2

    .line 69
    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v1, v15

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 71
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v10, v1

    :goto_0
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v10, v1, :cond_0

    .line 73
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v1, v10

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 75
    iget-object v1, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget v1, v1, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v15

    iget v2, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v2, v10, v2

    iget v3, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, v3

    mul-int v2, v2, v16

    add-int v7, v1, v2

    .line 76
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, v10, p1

    add-int v6, v1, v2

    .line 78
    iget-object v1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v2, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v3, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v1, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v4, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    move/from16 v1, p4

    move v5, v13

    move/from16 v8, p1

    move v9, v14

    move/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v1 .. v10}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA(F[F[F[FIIIIII)V

    add-int v10, v18, v11

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$symmRankNMinus_L$2(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;II)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 157
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v3

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int v13, v5, v6

    .line 160
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v5, v3, v5

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v14, v5, v6

    .line 161
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 163
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v12, v5

    :goto_0
    if-gt v12, v3, :cond_1

    .line 165
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v12

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 167
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v14

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v12, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v15

    add-int v9, v5, v6

    .line 168
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v12

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int v6, v6, v16

    add-int v8, v5, v6

    if-ne v3, v12, :cond_0

    .line 171
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v13

    move/from16 v10, p3

    move v11, v4

    move/from16 v17, v12

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransBBlockMinus_L([F[FIIIIII)V

    goto :goto_1

    :cond_0
    move/from16 v17, v12

    .line 174
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    move v7, v13

    move/from16 v10, p3

    move v11, v4

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransBBlockMinus([F[FIIIIII)V

    :goto_1
    add-int v12, v17, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$symmRankNMinus_U$1(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    .line 110
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, v11, p1

    add-int v12, v1, v2

    .line 111
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v1, v11

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 113
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v1, v11, v1

    iget v2, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v14, v1, v2

    .line 114
    iget v1, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v1, v14

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v8, v11

    .line 116
    :goto_0
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v8, v1, :cond_1

    .line 118
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v1, v8

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 120
    iget-object v1, v10, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget v1, v1, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v14

    iget v2, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v2, v8, v2

    iget v3, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v15

    add-int v5, v1, v2

    .line 121
    iget v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, v8, p1

    add-int v4, v1, v2

    if-ne v11, v8, :cond_0

    .line 125
    iget-object v1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v2, v10, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget-object v2, v2, Lorg/ejml/data/FMatrixD1;->data:[F

    move v3, v12

    move/from16 v6, p1

    move v7, v13

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransABlockMinus_U([F[FIIIIII)V

    goto :goto_1

    :cond_0
    move/from16 v17, v8

    .line 128
    iget-object v1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v2, v10, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget-object v2, v2, Lorg/ejml/data/FMatrixD1;->data:[F

    move v3, v12

    move/from16 v6, p1

    move v7, v13

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->multTransABlockMinus([F[FIIIIII)V

    :goto_1
    add-int v8, v17, v9

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rankNUpdate(IFLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 9

    .line 52
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v4, v0, v1

    if-gt v4, p0, :cond_2

    .line 56
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    .line 58
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_1

    .line 60
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    .line 63
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    new-instance v8, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda2;

    move-object v2, v8

    move-object v3, p3

    move v5, p0

    move-object v6, p2

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;F)V

    invoke-static {v0, v1, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height of B cannot be greater than the block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmRankNMinus_L(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 4

    .line 145
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    if-gt v0, p0, :cond_2

    .line 149
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    .line 151
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_1

    .line 153
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_0

    .line 156
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v3, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, p1, v0}, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda1;-><init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V

    invoke-static {v1, v2, p0, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of rows based on B\'s height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of columns based on B\'s height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Width of B cannot be greater than the block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmRankNMinus_U(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 4

    .line 96
    iget v0, p2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    if-gt v0, p0, :cond_2

    .line 100
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    .line 102
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_1

    .line 104
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_0

    .line 108
    iget v1, p2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v2, p2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    new-instance v3, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v0, p0, p1}, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;)V

    invoke-static {v1, v2, p0, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height of B cannot be greater than the block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lorg/ejml/dense/block/MatrixMult_MT_DDRB;
.super Ljava/lang/Object;
.source "MatrixMult_MT_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$mult$0(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 63
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 65
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_2

    .line 66
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 68
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 70
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v13, v5, :cond_1

    .line 71
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 73
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int v5, v5, p4

    mul-int v6, v13, v4

    add-int v8, v5, v6

    .line 74
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v12

    add-int v9, v5, v6

    .line 76
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v13, v5, :cond_0

    .line 77
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSet([D[D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v17, v13

    .line 80
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlus([D[D[DIIIIII)V

    :goto_2
    add-int v13, v17, v0

    goto :goto_1

    :cond_1
    add-int/2addr v14, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$multMinus$2(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 153
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 155
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_1

    .line 156
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 158
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 160
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v13, v5, :cond_0

    .line 161
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 163
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int v5, v5, p4

    mul-int v6, v13, v4

    add-int v8, v5, v6

    .line 164
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v12

    add-int v9, v5, v6

    .line 166
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultMinus([D[D[DIIIIII)V

    add-int v13, v17, v0

    goto :goto_1

    :cond_0
    add-int/2addr v14, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multMinusTransA$5(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 246
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 248
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_1

    .line 249
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 251
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 253
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v13, v5, :cond_0

    .line 254
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 256
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v13

    mul-int v6, p4, v11

    add-int v8, v5, v6

    .line 257
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v11

    add-int v9, v5, v6

    .line 259
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v12, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultMinusTransA([D[D[DIIIIII)V

    add-int v13, v17, v0

    goto :goto_1

    :cond_0
    add-int/2addr v14, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multPlus$1(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 110
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 112
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_1

    .line 113
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 115
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 117
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v13, v5, :cond_0

    .line 118
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 120
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int v5, v5, p4

    mul-int v6, v13, v4

    add-int v8, v5, v6

    .line 121
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v12

    add-int v9, v5, v6

    .line 123
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlus([D[D[DIIIIII)V

    add-int v13, v17, v0

    goto :goto_1

    :cond_0
    add-int/2addr v14, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multPlusTransA$4(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 222
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 224
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_1

    .line 225
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 227
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 229
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v13, v5, :cond_0

    .line 230
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 232
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v13

    mul-int v6, p4, v11

    add-int v8, v5, v6

    .line 233
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v11

    add-int v9, v5, v6

    .line 235
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v12, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    add-int v13, v17, v0

    goto :goto_1

    :cond_0
    add-int/2addr v14, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$multTransA$3(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 194
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 196
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v5, :cond_2

    .line 197
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 199
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 201
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v13, v5, :cond_1

    .line 202
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 204
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v13

    mul-int v6, p4, v11

    add-int v8, v5, v6

    .line 205
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, v13, v5

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v14, v11

    add-int v9, v5, v6

    .line 207
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v13, v5, :cond_0

    .line 208
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v12, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSetTransA([D[D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v17, v13

    .line 211
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v12, v4

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    :goto_2
    add-int v13, v17, v0

    goto :goto_1

    :cond_1
    add-int/2addr v14, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$multTransB$6(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 287
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int v4, v4, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 289
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v14, v5

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v14, v5, :cond_2

    .line 290
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 292
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, p4, v5

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v6

    iget-object v6, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    .line 294
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v13, v5

    :goto_1
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v13, v5, :cond_1

    .line 295
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 297
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int v5, v5, p4

    mul-int v6, v13, v4

    add-int v8, v5, v6

    .line 298
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v14

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v13, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v15

    add-int v9, v5, v6

    .line 300
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v13, v5, :cond_0

    .line 301
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move/from16 v17, v13

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSetTransB([D[D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v17, v13

    .line 304
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v10, v16

    move v11, v4

    move v13, v15

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransB([D[D[DIIIIII)V

    :goto_2
    add-int v13, v17, v0

    goto :goto_1

    :cond_1
    add-int/2addr v14, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static mult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 60
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixOps_DDRB;->checkShapeMult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 62
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda2;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multMinus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 152
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multMinusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 245
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda4;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multPlus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 109
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda0;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 221
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda3;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 193
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda6;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static multTransB(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 3

    .line 286
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v2, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda5;-><init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    invoke-static {v0, v1, p0, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

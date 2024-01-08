.class public Lorg/ejml/dense/block/MatrixMult_DDRB;
.super Ljava/lang/Object;
.source "MatrixMult_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 58
    invoke-static/range {p0 .. p3}, Lorg/ejml/dense/block/MatrixOps_DDRB;->checkShapeMult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 61
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_3

    .line 62
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 64
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 65
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 67
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

    .line 69
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 70
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 72
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 73
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 75
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v14, v6, :cond_0

    .line 76
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSet([D[D[DIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 79
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

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlus([D[D[DIIIIII)V

    :goto_3
    add-int v14, v18, v0

    goto :goto_2

    :cond_1
    add-int/2addr v15, v0

    goto/16 :goto_1

    :cond_2
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static multMinus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 155
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 156
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 158
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 159
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 161
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

    .line 163
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_0

    .line 164
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 166
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 167
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 169
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultMinus([D[D[DIIIIII)V

    add-int v14, v18, v0

    goto :goto_2

    :cond_0
    add-int/2addr v15, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multMinusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 254
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 255
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 257
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 258
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 260
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

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

    .line 262
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_0

    .line 263
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 265
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 266
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 268
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultMinusTransA([D[D[DIIIIII)V

    add-int v14, v18, v0

    goto :goto_2

    :cond_0
    add-int/2addr v15, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multPlus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 110
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 111
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 113
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 114
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 116
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

    .line 118
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_0

    .line 119
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 121
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 122
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 124
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlus([D[D[DIIIIII)V

    add-int v14, v18, v0

    goto :goto_2

    :cond_0
    add-int/2addr v15, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 228
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 229
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 231
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 232
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 234
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

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

    .line 236
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_0

    .line 237
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 239
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 240
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 242
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    add-int v14, v18, v0

    goto :goto_2

    :cond_0
    add-int/2addr v15, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 198
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_3

    .line 199
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 201
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 202
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 204
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

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

    .line 206
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_1

    .line 207
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 209
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 210
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 212
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v14, v6, :cond_0

    .line 213
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSetTransA([D[D[DIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 216
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

    move v13, v5

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    :goto_3
    add-int v14, v18, v0

    goto :goto_2

    :cond_1
    add-int/2addr v15, v0

    goto/16 :goto_1

    :cond_2
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static multTransB(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 297
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_3

    .line 298
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 300
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v15, v6, :cond_2

    .line 301
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 303
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v4, v6

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v7, v7, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v7, v15, v7

    iget v8, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    add-int v17, v6, v7

    .line 305
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 306
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 308
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 309
    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v6, v15

    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v7, v14, v7

    iget v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int v7, v7, v16

    add-int v10, v6, v7

    .line 311
    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v14, v6, :cond_0

    .line 312
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultSetTransB([D[D[DIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 315
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

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransB([D[D[DIIIIII)V

    :goto_3
    add-int v14, v18, v0

    goto :goto_2

    :cond_1
    add-int/2addr v15, v0

    goto/16 :goto_1

    :cond_2
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

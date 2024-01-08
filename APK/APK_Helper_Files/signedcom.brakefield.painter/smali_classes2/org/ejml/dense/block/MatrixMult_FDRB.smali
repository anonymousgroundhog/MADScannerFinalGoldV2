.class public Lorg/ejml/dense/block/MatrixMult_FDRB;
.super Ljava/lang/Object;
.source "MatrixMult_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 60
    invoke-static/range {p0 .. p3}, Lorg/ejml/dense/block/MatrixOps_FDRB;->checkShapeMult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 63
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_3

    .line 64
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 66
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 67
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 69
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

    .line 71
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 72
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 74
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 75
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 77
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v14, v6, :cond_0

    .line 78
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultSet([F[F[FIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 81
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

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlus([F[F[FIIIIII)V

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

.method public static multMinus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 157
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 158
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 160
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 161
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 163
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

    .line 165
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_0

    .line 166
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 168
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 169
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 171
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultMinus([F[F[FIIIIII)V

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

.method public static multMinusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 256
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 257
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 259
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 260
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 262
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

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

    .line 264
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_0

    .line 265
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 267
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 268
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 270
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultMinusTransA([F[F[FIIIIII)V

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

.method public static multPlus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 112
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 113
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 115
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 116
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 118
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

    .line 120
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_0

    .line 121
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 123
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 124
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v13

    add-int v10, v6, v7

    .line 126
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlus([F[F[FIIIIII)V

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

.method public static multPlusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 230
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 231
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 233
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_1

    .line 234
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 236
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

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

    .line 238
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_0

    .line 239
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 241
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 242
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 244
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA([F[F[FIIIIII)V

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

.method public static multTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 200
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_3

    .line 201
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 203
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v6, :cond_2

    .line 204
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 206
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

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

    .line 208
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v14, v6, :cond_1

    .line 209
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 211
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v14

    mul-int v7, v4, v12

    add-int v9, v6, v7

    .line 212
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    mul-int v7, v15, v12

    add-int v10, v6, v7

    .line 214
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v14, v6, :cond_0

    .line 215
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

    move v13, v5

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultSetTransA([F[F[FIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 218
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

    move v13, v5

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA([F[F[FIIIIII)V

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

.method public static multTransB(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 299
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_3

    .line 300
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 302
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move v15, v6

    :goto_1
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v15, v6, :cond_2

    .line 303
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v6, v15

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 305
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v4, v6

    iget v7, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v6, v7

    iget-object v7, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v7, v15, v7

    iget v8, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    add-int v17, v6, v7

    .line 307
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    move v14, v6

    :goto_2
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v14, v6, :cond_1

    .line 308
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 310
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v14, v5

    add-int v9, v6, v7

    .line 311
    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v6, v15

    iget v7, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v14, v7

    iget v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v7, v8

    mul-int v7, v7, v16

    add-int v10, v6, v7

    .line 313
    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v14, v6, :cond_0

    .line 314
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

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultSetTransB([F[F[FIIIIII)V

    goto :goto_3

    :cond_0
    move/from16 v18, v14

    .line 317
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

    move/from16 v14, v16

    invoke-static/range {v6 .. v14}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransB([F[F[FIIIIII)V

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

.class public Lorg/ejml/dense/block/VectorOps_FDRB;
.super Ljava/lang/Object;
.source "VectorOps_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move/from16 v4, p10

    .line 184
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 185
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 186
    iget v7, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v8, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 189
    rem-int v8, p9, v0

    sub-int v9, p9, v8

    .line 192
    iget-object v10, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v10, Lorg/ejml/data/FMatrixD1;

    iget-object v10, v10, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 193
    iget-object v11, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v11, Lorg/ejml/data/FMatrixD1;

    iget-object v11, v11, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 194
    iget-object v12, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/FMatrixD1;

    iget-object v12, v12, Lorg/ejml/data/FMatrixD1;->data:[F

    move v13, v9

    :goto_0
    if-ge v13, v4, :cond_2

    sub-int v14, v4, v13

    .line 197
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 199
    iget v15, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v15, v4

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 200
    iget v15, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 p9, v12

    iget v12, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v15, v12

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 201
    iget v15, v3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v16, v11

    iget v11, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v15, v11

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 203
    iget v15, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v0, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v0, v0, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v15, v0

    iget v0, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, v13

    mul-int/2addr v0, v5

    add-int/2addr v15, v0

    mul-int v0, p2, v4

    add-int/2addr v15, v0

    .line 204
    iget v0, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v0, v4

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v13

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    mul-int v4, p5, v12

    add-int/2addr v0, v4

    .line 205
    iget v4, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v12, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/FMatrixD1;

    iget v12, v12, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v4, v12

    iget v12, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v12, v13

    mul-int/2addr v12, v7

    add-int/2addr v4, v12

    mul-int v11, v11, p8

    add-int/2addr v4, v11

    if-ne v13, v9, :cond_0

    add-int/2addr v15, v8

    add-int/2addr v0, v8

    add-int/2addr v4, v8

    move v11, v8

    :goto_1
    if-ge v11, v14, :cond_1

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v17, v15, 0x1

    .line 213
    aget v15, v10, v15

    mul-float v15, v15, p3

    add-int/lit8 v18, v0, 0x1

    aget v0, v16, v0

    mul-float v0, v0, p6

    add-float/2addr v15, v0

    aput v15, p9, v4

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move/from16 v15, v17

    move/from16 v0, v18

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_1

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v17, v15, 0x1

    .line 217
    aget v15, v10, v15

    mul-float v15, v15, p3

    add-int/lit8 v18, v0, 0x1

    aget v0, v16, v0

    mul-float v0, v0, p6

    add-float/2addr v15, v0

    aput v15, p9, v4

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move/from16 v15, v17

    move/from16 v0, v18

    goto :goto_2

    :cond_1
    add-int v13, v13, p0

    move/from16 v0, p0

    move-object/from16 v12, p9

    move/from16 v4, p10

    move-object/from16 v11, v16

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static div_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p7

    .line 120
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget-object v4, v4, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 121
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 124
    rem-int v6, p6, v0

    sub-int v7, p6, v6

    .line 128
    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 130
    iget v10, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v10, v10, p5

    rem-int v11, p5, v0

    sub-int/2addr v10, v11

    .line 133
    iget v12, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 134
    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v14, v7

    :goto_0
    if-ge v14, v3, :cond_2

    sub-int v15, v3, v14

    .line 137
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 139
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v16, v5

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 140
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v17, v4

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 142
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v5, v8

    mul-int/2addr v3, v9

    add-int/2addr v5, v3

    .line 143
    iget-object v3, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v13

    add-int/2addr v3, v8

    mul-int/2addr v4, v11

    add-int/2addr v3, v4

    if-ne v14, v7, :cond_0

    add-int/2addr v5, v6

    add-int/2addr v3, v6

    move v4, v6

    :goto_1
    if-ge v4, v15, :cond_1

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v18, v5, 0x1

    .line 150
    aget v5, v17, v5

    div-float v5, v5, p3

    aput v5, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_1

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v18, v5, 0x1

    .line 154
    aget v5, v17, v5

    div-float v5, v5, p3

    aput v5, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_2

    :cond_1
    add-int/2addr v14, v0

    move/from16 v8, p2

    move/from16 v3, p7

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dot_row(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F
    .locals 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    .line 245
    rem-int v4, p5, v0

    sub-int v5, p5, v4

    .line 248
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 249
    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 254
    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 256
    iget v10, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v10, v10, p4

    rem-int v11, p4, v0

    sub-int/2addr v10, v11

    .line 259
    iget v12, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 260
    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 262
    iget v14, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v15, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v14, v15

    iget v15, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 p5, v6

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v15, v6

    if-ne v14, v15, :cond_4

    const/4 v6, 0x0

    move v14, v5

    :goto_0
    if-ge v14, v3, :cond_3

    sub-int v15, v3, v14

    .line 266
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 268
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move/from16 p2, v6

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 269
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v16, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 271
    iget-object v7, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v8

    move/from16 v17, v8

    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    mul-int/2addr v3, v9

    add-int/2addr v7, v3

    .line 272
    iget-object v3, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v13

    add-int/2addr v3, v8

    mul-int/2addr v6, v11

    add-int/2addr v3, v6

    if-ne v14, v5, :cond_0

    add-int/2addr v7, v4

    add-int/2addr v3, v4

    move/from16 v6, p2

    move v8, v4

    :goto_1
    if-ge v8, v15, :cond_2

    add-int/lit8 v18, v3, 0x1

    .line 279
    aget v3, v16, v3

    add-int/lit8 v19, v7, 0x1

    aget v7, p5, v7

    mul-float/2addr v3, v7

    add-float/2addr v6, v3

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v18

    move/from16 v7, v19

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    move v8, v7

    move/from16 v7, p2

    :goto_2
    if-ge v6, v15, :cond_1

    add-int/lit8 v18, v3, 0x1

    .line 283
    aget v3, v16, v3

    add-int/lit8 v19, v8, 0x1

    aget v8, p5, v8

    mul-float/2addr v3, v8

    add-float/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move/from16 v8, v19

    goto :goto_2

    :cond_1
    move v6, v7

    :cond_2
    add-int/2addr v14, v0

    move/from16 v3, p6

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_0

    :cond_3
    move/from16 p2, v6

    return p2

    .line 263
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static dot_row_col(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F
    .locals 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    .line 313
    rem-int v4, p5, v0

    sub-int v5, p5, v4

    .line 316
    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 317
    iget-object v7, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 322
    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 324
    iget v10, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int v10, v10, p4

    rem-int v11, p4, v0

    sub-int/2addr v10, v11

    .line 327
    iget v12, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 328
    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 330
    iget v14, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v15, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v14, v15

    iget v15, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 p5, v6

    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v15, v6

    if-ne v14, v15, :cond_4

    const/4 v6, 0x0

    move v14, v5

    :goto_0
    if-ge v14, v3, :cond_3

    sub-int v15, v3, v14

    .line 334
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 336
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move/from16 p2, v6

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 337
    iget v6, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    move-object/from16 v16, v7

    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v14

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 339
    iget-object v7, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v7, v7, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v7, v8

    move/from16 v17, v8

    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    mul-int/2addr v3, v9

    add-int/2addr v7, v3

    .line 340
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v3, v14

    iget-object v8, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget v8, v8, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v8

    mul-int/2addr v6, v10

    add-int/2addr v3, v6

    add-int/2addr v3, v11

    if-ne v14, v5, :cond_0

    add-int/2addr v7, v4

    mul-int v6, v4, v13

    add-int/2addr v3, v6

    move/from16 v6, p2

    move v8, v4

    :goto_1
    if-ge v8, v15, :cond_2

    .line 347
    aget v18, v16, v3

    add-int/lit8 v19, v7, 0x1

    aget v7, p5, v7

    mul-float v18, v18, v7

    add-float v6, v6, v18

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v3, v13

    move/from16 v7, v19

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    move v8, v7

    move/from16 v7, p2

    :goto_2
    if-ge v6, v15, :cond_1

    .line 351
    aget v18, v16, v3

    add-int/lit8 v19, v8, 0x1

    aget v8, p5, v8

    mul-float v18, v18, v8

    add-float v7, v7, v18

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v13

    move/from16 v8, v19

    goto :goto_2

    :cond_1
    move v6, v7

    :cond_2
    add-int/2addr v14, v0

    move/from16 v3, p6

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_0

    :cond_3
    move/from16 p2, v6

    return p2

    .line 331
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static scale_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p7

    .line 62
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget-object v4, v4, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 63
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 66
    rem-int v6, p6, v0

    sub-int v7, p6, v6

    .line 70
    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 72
    iget v10, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v10, v10, p5

    rem-int v11, p5, v0

    sub-int/2addr v10, v11

    .line 75
    iget v12, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 76
    iget v13, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v14, v7

    :goto_0
    if-ge v14, v3, :cond_2

    sub-int v15, v3, v14

    .line 79
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 81
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v16, v5

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    move-object/from16 v17, v4

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 84
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v5, v8

    mul-int/2addr v3, v9

    add-int/2addr v5, v3

    .line 85
    iget-object v3, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v13

    add-int/2addr v3, v8

    mul-int/2addr v4, v11

    add-int/2addr v3, v4

    if-ne v14, v7, :cond_0

    add-int/2addr v5, v6

    add-int/2addr v3, v6

    move v4, v6

    :goto_1
    if-ge v4, v15, :cond_1

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v18, v5, 0x1

    .line 92
    aget v5, v17, v5

    mul-float v5, v5, p3

    aput v5, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_1

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v18, v5, 0x1

    .line 96
    aget v5, v17, v5

    mul-float v5, v5, p3

    aput v5, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_2

    :cond_1
    add-int/2addr v14, v0

    move/from16 v8, p2

    move/from16 v3, p7

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_0

    :cond_2
    return-void
.end method

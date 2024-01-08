.class public Lorg/ejml/dense/block/VectorOps_DDRB;
.super Ljava/lang/Object;
.source "VectorOps_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p9

    move/from16 v4, p12

    .line 182
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 183
    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 184
    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v8, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 187
    rem-int v8, p11, v0

    sub-int v9, p11, v8

    .line 190
    iget-object v10, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v10, Lorg/ejml/data/DMatrixD1;

    iget-object v10, v10, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 191
    iget-object v11, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v11, Lorg/ejml/data/DMatrixD1;

    iget-object v11, v11, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 192
    iget-object v12, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/DMatrixD1;

    iget-object v12, v12, Lorg/ejml/data/DMatrixD1;->data:[D

    move v13, v9

    :goto_0
    if-ge v13, v4, :cond_2

    sub-int v14, v4, v13

    .line 195
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 197
    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v4

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 p11, v12

    iget v12, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v12

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 199
    iget v15, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v16, v11

    iget v11, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v11

    sub-int/2addr v15, v13

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 201
    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v0, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v0, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v15, v0

    iget v0, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, v13

    mul-int/2addr v0, v5

    add-int/2addr v15, v0

    mul-int v0, p2, v4

    add-int/2addr v15, v0

    .line 202
    iget v0, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v4, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, v4

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v4, v13

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    mul-int v4, p6, v12

    add-int/2addr v0, v4

    .line 203
    iget v4, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v12, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v12, Lorg/ejml/data/DMatrixD1;

    iget v12, v12, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v4, v12

    iget v12, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v12, v13

    mul-int/2addr v12, v7

    add-int/2addr v4, v12

    mul-int v11, v11, p10

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

    .line 211
    aget-wide v18, v10, v15

    mul-double v18, v18, p3

    add-int/lit8 v15, v0, 0x1

    aget-wide v20, v16, v0

    mul-double v20, v20, p7

    add-double v18, v18, v20

    aput-wide v18, p11, v4

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move v0, v15

    move/from16 v15, v17

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_1

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v17, v15, 0x1

    .line 215
    aget-wide v18, v10, v15

    mul-double v18, v18, p3

    add-int/lit8 v15, v0, 0x1

    aget-wide v20, v16, v0

    mul-double v20, v20, p7

    add-double v18, v18, v20

    aput-wide v18, p11, v4

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move v0, v15

    move/from16 v15, v17

    goto :goto_2

    :cond_1
    add-int v13, v13, p0

    move/from16 v0, p0

    move-object/from16 v12, p11

    move/from16 v4, p12

    move-object/from16 v11, v16

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static div_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p8

    .line 118
    iget-object v4, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget-object v4, v4, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 119
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 122
    rem-int v6, p7, v0

    sub-int v7, p7, v6

    .line 126
    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 128
    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v10, v10, p6

    rem-int v11, p6, v0

    sub-int/2addr v10, v11

    .line 131
    iget v12, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 132
    iget v13, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v14, v7

    :goto_0
    if-ge v14, v3, :cond_2

    sub-int v15, v3, v14

    .line 135
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 137
    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v16, v5

    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v17, v4

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 140
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v5, v8

    mul-int/2addr v3, v9

    add-int/2addr v5, v3

    .line 141
    iget-object v3, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

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

    .line 148
    aget-wide v19, v17, v5

    div-double v19, v19, p3

    aput-wide v19, v16, v3

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

    .line 152
    aget-wide v19, v17, v5

    div-double v19, v19, p3

    aput-wide v19, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_2

    :cond_1
    add-int/2addr v14, v0

    move/from16 v8, p2

    move/from16 v3, p8

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dot_row(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D
    .locals 23

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    .line 243
    rem-int v4, p5, v0

    sub-int v5, p5, v4

    .line 246
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 247
    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 252
    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 254
    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v10, v10, p4

    rem-int v11, p4, v0

    sub-int/2addr v10, v11

    .line 257
    iget v12, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 258
    iget v13, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 260
    iget v14, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v14, v15

    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 p5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v6

    if-ne v14, v15, :cond_3

    const-wide/16 v14, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    move-wide/from16 v16, v14

    sub-int v14, v3, v6

    .line 264
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 266
    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v3

    sub-int/2addr v15, v6

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 267
    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v18, v7

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v7

    sub-int/2addr v15, v6

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 269
    iget-object v15, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v15, Lorg/ejml/data/DMatrixD1;

    iget v15, v15, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v15, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v8, v6

    mul-int/2addr v8, v12

    add-int/2addr v15, v8

    mul-int/2addr v3, v9

    add-int/2addr v15, v3

    .line 270
    iget-object v3, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v8, v6

    mul-int/2addr v8, v13

    add-int/2addr v3, v8

    mul-int/2addr v7, v11

    add-int/2addr v3, v7

    if-ne v6, v5, :cond_0

    add-int/2addr v15, v4

    add-int/2addr v3, v4

    move v7, v4

    :goto_1
    if-ge v7, v14, :cond_1

    add-int/lit8 v8, v3, 0x1

    .line 277
    aget-wide v19, v18, v3

    add-int/lit8 v3, v15, 0x1

    aget-wide v21, p5, v15

    mul-double v19, v19, v21

    add-double v16, v16, v19

    add-int/lit8 v7, v7, 0x1

    move v15, v3

    move v3, v8

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v14, :cond_1

    add-int/lit8 v8, v3, 0x1

    .line 281
    aget-wide v19, v18, v3

    add-int/lit8 v3, v15, 0x1

    aget-wide v21, p5, v15

    mul-double v19, v19, v21

    add-double v16, v16, v19

    add-int/lit8 v7, v7, 0x1

    move v15, v3

    move v3, v8

    goto :goto_2

    :cond_1
    move-wide/from16 v14, v16

    add-int/2addr v6, v0

    move/from16 v8, p2

    move/from16 v3, p6

    move-object/from16 v7, v18

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v14

    return-wide v16

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static dot_row_col(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D
    .locals 23

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    .line 311
    rem-int v4, p5, v0

    sub-int v5, p5, v4

    .line 314
    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 315
    iget-object v7, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 320
    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 322
    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v10, v10, p4

    rem-int v11, p4, v0

    sub-int/2addr v10, v11

    .line 325
    iget v12, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 326
    iget v13, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 328
    iget v14, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v14, v15

    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 p5, v6

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v6

    if-ne v14, v15, :cond_3

    const-wide/16 v14, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    move-wide/from16 v16, v14

    sub-int v14, v3, v6

    .line 332
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 334
    iget v15, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v15, v3

    sub-int/2addr v15, v6

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 335
    iget v15, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    move-object/from16 v18, v7

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v15, v7

    sub-int/2addr v15, v6

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 337
    iget-object v15, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v15, Lorg/ejml/data/DMatrixD1;

    iget v15, v15, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v15, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v8, v6

    mul-int/2addr v8, v12

    add-int/2addr v15, v8

    mul-int/2addr v3, v9

    add-int/2addr v15, v3

    .line 338
    iget v3, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v3, v6

    iget-object v8, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/DMatrixD1;

    iget v8, v8, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v8

    mul-int/2addr v7, v10

    add-int/2addr v3, v7

    add-int/2addr v3, v11

    if-ne v6, v5, :cond_0

    add-int/2addr v15, v4

    mul-int v7, v4, v13

    add-int/2addr v3, v7

    move v7, v4

    :goto_1
    if-ge v7, v14, :cond_1

    .line 345
    aget-wide v19, v18, v3

    add-int/lit8 v8, v15, 0x1

    aget-wide v21, p5, v15

    mul-double v19, v19, v21

    add-double v16, v16, v19

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v13

    move v15, v8

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v14, :cond_1

    .line 349
    aget-wide v19, v18, v3

    add-int/lit8 v8, v15, 0x1

    aget-wide v21, p5, v15

    mul-double v19, v19, v21

    add-double v16, v16, v19

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v13

    move v15, v8

    goto :goto_2

    :cond_1
    move-wide/from16 v14, v16

    add-int/2addr v6, v0

    move/from16 v8, p2

    move/from16 v3, p6

    move-object/from16 v7, v18

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v14

    return-wide v16

    .line 329
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static scale_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p8

    .line 60
    iget-object v4, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget-object v4, v4, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 61
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 64
    rem-int v6, p7, v0

    sub-int v7, p7, v6

    .line 68
    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v8, v8, p2

    rem-int v9, p2, v0

    sub-int/2addr v8, v9

    .line 70
    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v10, v10, p6

    rem-int v11, p6, v0

    sub-int/2addr v10, v11

    .line 73
    iget v12, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 74
    iget v13, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v13, v10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v14, v7

    :goto_0
    if-ge v14, v3, :cond_2

    sub-int v15, v3, v14

    .line 77
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 79
    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v16, v5

    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 80
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    move-object/from16 v17, v4

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v8

    move/from16 p2, v8

    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v8, v14

    mul-int/2addr v8, v12

    add-int/2addr v5, v8

    mul-int/2addr v3, v9

    add-int/2addr v5, v3

    .line 83
    iget-object v3, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v10

    iget v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

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

    .line 90
    aget-wide v19, v17, v5

    mul-double v19, v19, p3

    aput-wide v19, v16, v3

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

    .line 94
    aget-wide v19, v17, v5

    mul-double v19, v19, p3

    aput-wide v19, v16, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move/from16 v5, v18

    goto :goto_2

    :cond_1
    add-int/2addr v14, v0

    move/from16 v8, p2

    move/from16 v3, p8

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_0

    :cond_2
    return-void
.end method

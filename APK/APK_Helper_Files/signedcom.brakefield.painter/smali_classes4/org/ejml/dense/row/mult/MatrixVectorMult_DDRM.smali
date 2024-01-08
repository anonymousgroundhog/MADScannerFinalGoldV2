.class public Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;
.super Ljava/lang/Object;
.source "MatrixVectorMult_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([DILorg/ejml/data/DMatrix1Row;[DI)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 331
    array-length v3, v0

    sub-int v3, v3, p1

    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-lt v3, v4, :cond_3

    .line 333
    array-length v3, v2

    sub-int v3, v3, p4

    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-lt v3, v4, :cond_2

    .line 336
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v7, v4

    move-wide v8, v5

    .line 339
    :goto_0
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v10, :cond_1

    move v10, v4

    move-wide v11, v5

    .line 341
    :goto_1
    iget v13, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v10, v13, :cond_0

    add-int v13, p1, v10

    .line 342
    aget-wide v13, v0, v13

    iget-object v15, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-int v16, v10, v3

    add-int v16, v7, v16

    aget-wide v15, v15, v16

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int v10, p4, v7

    .line 344
    aget-wide v13, v2, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-wide v8

    .line 334
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'c\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of \'a\' isn\'t long enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 63
    iget v3, v1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v4, "A and B are not compatible"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 64
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v3, v6, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {v0, v4}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iget v3, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v3, v5, :cond_6

    .line 68
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v3, v6, :cond_5

    .line 74
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v3, v5}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 76
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-nez v3, :cond_2

    const-wide/16 v0, 0x0

    .line 77
    invoke-static {v2, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    move v4, v3

    move v8, v4

    .line 84
    :goto_1
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v9, :cond_4

    add-int/lit8 v9, v4, 0x1

    .line 85
    invoke-virtual {v0, v4}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v10

    mul-double/2addr v10, v6

    move v4, v9

    move v9, v5

    .line 87
    :goto_2
    iget v12, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v9, v12, :cond_3

    add-int/lit8 v12, v4, 0x1

    .line 88
    invoke-virtual {v0, v4}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v13

    invoke-virtual {v1, v9}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    move v4, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v8, 0x1

    .line 91
    invoke-virtual {v2, v8, v10, v11}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    move v8, v9

    goto :goto_1

    :cond_4
    return-void

    .line 69
    :cond_5
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {v0, v4}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 13

    .line 113
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 114
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_7

    .line 118
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v3, :cond_6

    .line 124
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 127
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    move v4, v3

    .line 133
    :goto_1
    iget v5, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v1, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 134
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v6

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    move v3, v5

    move v5, v2

    .line 136
    :goto_2
    iget v8, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v8, :cond_3

    add-int/lit8 v8, v3, 0x1

    .line 137
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v9

    invoke-virtual {p1, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    move v3, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 140
    invoke-virtual {p2, v4, v6, v7}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_1

    :cond_4
    return-void

    .line 125
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_7
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 9

    .line 296
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 297
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_6

    .line 301
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v2, :cond_5

    .line 307
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 311
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_3

    .line 312
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    move v5, v0

    .line 313
    :goto_2
    iget v6, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 314
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual {p2, v5, v7, v8}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 308
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAddTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 11

    .line 259
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 260
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_6

    .line 264
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v2, :cond_5

    .line 270
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 274
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    move v5, v0

    move v6, v1

    .line 278
    :goto_2
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v7, :cond_2

    .line 279
    invoke-virtual {p0, v6}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 280
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 283
    invoke-virtual {p2, v2, v3, v4}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_1

    :cond_3
    return-void

    .line 271
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 9

    .line 205
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 206
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_7

    .line 210
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v3, :cond_6

    .line 216
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 218
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    const-wide/16 p0, 0x0

    .line 219
    invoke-static {p2, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    move v1, v0

    .line 224
    :goto_1
    iget v5, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v5, :cond_3

    .line 225
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-virtual {p2, v1, v5, v6}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    :cond_3
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    .line 229
    :goto_2
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v2, v3, :cond_5

    .line 230
    invoke-virtual {p1, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    move v5, v0

    .line 231
    :goto_3
    iget v6, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    .line 232
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual {p2, v5, v7, v8}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 211
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_7
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 11

    .line 168
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 169
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v2, :cond_5

    .line 173
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v3, :cond_4

    .line 180
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 183
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    move v5, v0

    move v6, v1

    .line 187
    :goto_2
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v7, :cond_2

    .line 188
    invoke-virtual {p0, v6}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 189
    iget v7, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 192
    invoke-virtual {p2, v2, v3, v4}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_1

    :cond_3
    return-void

    .line 174
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

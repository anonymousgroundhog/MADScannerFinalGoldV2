.class public Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;
.super Ljava/lang/Object;
.source "MatrixVectorMult_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProduct([FILorg/ejml/data/FMatrix1Row;[FI)F
    .locals 10

    .line 333
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-lt v0, v1, :cond_3

    .line 335
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-lt v0, v1, :cond_2

    .line 338
    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    .line 341
    :goto_0
    iget v5, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v3, v5, :cond_1

    move v5, v1

    move v6, v2

    .line 343
    :goto_1
    iget v7, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v5, v7, :cond_0

    add-int v7, p1, v5

    .line 344
    aget v7, p0, v7

    iget-object v8, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-int v9, v5, v0

    add-int/2addr v9, v3

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int v5, p4, v3

    .line 346
    aget v5, p3, v5

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4

    .line 336
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'c\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of \'a\' isn\'t long enough"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 9

    .line 65
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 66
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_6

    .line 70
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v3, :cond_5

    .line 76
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 78
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-nez v0, :cond_2

    const/4 p0, 0x0

    .line 79
    invoke-static {p2, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v1

    move v3, v0

    move v4, v3

    .line 86
    :goto_1
    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v0, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 87
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v3

    mul-float/2addr v3, v1

    move v6, v2

    .line 89
    :goto_2
    iget v7, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 90
    invoke-virtual {p0, v5}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v5

    invoke-virtual {p1, v6}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 93
    invoke-virtual {p2, v4, v3}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    move v4, v6

    goto :goto_1

    :cond_4
    return-void

    .line 71
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 9

    .line 115
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->QnBQATCbixDxVm:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 116
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_7

    .line 120
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v3, :cond_6

    .line 126
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-virtual {p2}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 129
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    move v4, v3

    .line 135
    :goto_1
    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 136
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v3

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v6

    mul-float/2addr v3, v6

    move v6, v2

    .line 138
    :goto_2
    iget v7, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 139
    invoke-virtual {p0, v5}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v5

    invoke-virtual {p1, v6}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 142
    invoke-virtual {p2, v4, v3}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    move v4, v6

    goto :goto_1

    :cond_4
    return-void

    .line 127
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_7
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 6

    .line 298
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 299
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_6

    .line 303
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v2, :cond_5

    .line 309
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 313
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v3, :cond_3

    .line 314
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    move v4, v0

    .line 315
    :goto_2
    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 316
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p2, v4, v2}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 310
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multAddTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 8

    .line 261
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 262
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_6

    .line 266
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v2, :cond_5

    .line 272
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 276
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    move v4, v0

    move v5, v1

    .line 280
    :goto_2
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_2

    .line 281
    invoke-virtual {p0, v5}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v6

    invoke-virtual {p1, v4}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 282
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 285
    invoke-virtual {p2, v2, v3}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_3
    return-void

    .line 273
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "C is not compatible with A"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 6

    .line 207
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 208
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_7

    .line 212
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v3, :cond_6

    .line 218
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 220
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-nez v0, :cond_2

    const/4 p0, 0x0

    .line 221
    invoke-static {p2, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v1

    move v3, v0

    .line 226
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_3

    .line 227
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p2, v3, v4}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    .line 231
    :goto_2
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v2, v3, :cond_5

    .line 232
    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    move v4, v0

    .line 233
    :goto_3
    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 234
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2, v4, v1}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 213
    :cond_6
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_7
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "B is not a vector"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 8

    .line 170
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const-string v1, "A and B are not compatible"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 171
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v2, :cond_5

    .line 175
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v3, :cond_4

    .line 182
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 185
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    move v4, v0

    move v5, v1

    .line 189
    :goto_2
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v4, v6, :cond_2

    .line 190
    invoke-virtual {p0, v5}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v6

    invoke-virtual {p1, v4}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 191
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 194
    invoke-virtual {p2, v2, v3}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_3
    return-void

    .line 176
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_5
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const/4 p1, 0x0

    sget-object p1, Lcom/google/android/datatransport/runtime/dagger/multibindings/KN/fYvESXZ;->foQKENmiNUJzg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

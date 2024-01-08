.class public Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeRowMax(Lorg/ejml/data/CMatrixRMaj;III)F
    .locals 3

    .line 411
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result p1

    .line 412
    iget-object p0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 415
    aget p1, p0, p1

    add-int/lit8 v2, v1, 0x1

    .line 416
    aget v1, p0, v1

    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    move p1, v2

    goto :goto_0

    :cond_1
    float-to-double p0, v0

    .line 423
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F
    .locals 7

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 123
    aget v5, p2, v3

    div-float/2addr v5, p3

    aput v5, p2, v3

    add-int/lit8 v3, v4, 0x1

    .line 124
    aget v6, p2, v4

    div-float/2addr v6, p3

    aput v6, p2, v4

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    float-to-double p0, v2

    .line 129
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 131
    aget p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 132
    aget p2, p2, v0

    mul-float p3, p1, p1

    mul-float v0, p2, p2

    add-float/2addr p3, v0

    float-to-double v2, p3

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p3, v2

    cmpl-float v0, p3, v1

    if-nez v0, :cond_1

    .line 138
    iput p0, p4, Lorg/ejml/data/Complex_F32;->real:F

    .line 139
    iput v1, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    goto :goto_1

    :cond_1
    div-float v0, p1, p3

    mul-float/2addr v0, p0

    .line 141
    iput v0, p4, Lorg/ejml/data/Complex_F32;->real:F

    div-float v0, p2, p3

    mul-float/2addr v0, p0

    .line 142
    iput v0, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 149
    :goto_1
    iget v0, p4, Lorg/ejml/data/Complex_F32;->real:F

    add-float/2addr v0, p1

    iget v1, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float/2addr v1, p2

    invoke-static {v0, v1}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->mag(FF)F

    move-result v0

    .line 150
    iget v1, p4, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr p1, v1

    iget v1, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    sub-float/2addr p2, v1

    invoke-static {p1, p2}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->mag(FF)F

    move-result p1

    cmpl-float p1, p1, v0

    const/high16 p2, 0x40000000    # 2.0f

    if-lez p1, :cond_2

    .line 154
    iget p1, p4, Lorg/ejml/data/Complex_F32;->real:F

    neg-float p1, p1

    iput p1, p4, Lorg/ejml/data/Complex_F32;->real:F

    .line 155
    iget p1, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p1, p1

    iput p1, p4, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float p1, p0, p0

    mul-float p4, p0, p3

    sub-float p4, p1, p4

    mul-float v0, p3, p3

    mul-float/2addr p0, p2

    mul-float/2addr p0, p3

    sub-float/2addr v0, p0

    goto :goto_2

    :cond_2
    mul-float p1, p0, p0

    mul-float p4, p0, p3

    add-float/2addr p4, p1

    mul-float v0, p3, p3

    mul-float/2addr p0, p2

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    :goto_2
    add-float/2addr v0, p1

    div-float/2addr v0, p4

    return v0
.end method

.method public static divideElements(II[FIFF)V
    .locals 6

    mul-float v0, p4, p4

    mul-float v1, p5, p5

    add-float/2addr v0, v1

    add-int/2addr p3, p0

    mul-int/lit8 p3, p3, 0x2

    :goto_0
    if-ge p0, p1, :cond_0

    .line 90
    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 91
    aget v3, p2, v2

    mul-float v4, v1, p4

    mul-float v5, v3, p5

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 94
    aput v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    mul-float/2addr v3, p4

    mul-float/2addr v1, p5

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    .line 95
    aput v3, p2, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractColumnAndMax(Lorg/ejml/data/CMatrixRMaj;III[FI)F
    .locals 5

    add-int/2addr p5, p1

    mul-int/lit8 p5, p5, 0x2

    .line 381
    invoke-virtual {p0, p1, p3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result p3

    .line 382
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p5, 0x1

    .line 387
    aget v3, v0, p3

    aput v3, p4, p5

    add-int/lit8 p5, v2, 0x1

    add-int/lit8 v4, p3, 0x1

    .line 388
    aget v4, v0, v4

    aput v4, p4, v2

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 384
    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    goto :goto_0

    :cond_1
    float-to-double p0, v1

    .line 395
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static extractHouseholderColumn(Lorg/ejml/data/CMatrixRMaj;III[FI)V
    .locals 3

    add-int/2addr p5, p1

    mul-int/lit8 p5, p5, 0x2

    add-int/lit8 v0, p5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 324
    aput v1, p4, p5

    add-int/lit8 p5, v0, 0x1

    const/4 v1, 0x0

    .line 325
    aput v1, p4, v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 328
    invoke-virtual {p0, p1, p3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v0

    add-int/lit8 v1, p5, 0x1

    .line 329
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v0

    aput v2, p4, p5

    add-int/lit8 p5, v1, 0x1

    .line 330
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    aput v0, p4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractHouseholderRow(Lorg/ejml/data/CMatrixRMaj;III[FI)V
    .locals 2

    add-int/2addr p5, p2

    mul-int/lit8 p5, p5, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 348
    aput v0, p4, p5

    add-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    .line 349
    aput v1, p4, v0

    .line 351
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 352
    iget-object p0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p0, p1, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static findMax([FII)F
    .locals 3

    mul-int/lit8 v0, p1, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 63
    aget v0, p0, v0

    add-int/lit8 v2, v1, 0x1

    .line 64
    aget v1, p0, v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    move p2, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    float-to-double p0, p2

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static mag(FF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/CMatrixRMaj;[FIFIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p4

    .line 280
    :goto_0
    iget v3, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_2

    .line 281
    iget v3, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p5

    mul-int/lit8 v3, v3, 0x2

    add-int v4, p2, p5

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    move/from16 v7, p5

    move v8, v3

    move v9, v4

    move v6, v5

    :goto_1
    if-ge v7, v1, :cond_0

    .line 286
    iget-object v10, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    .line 287
    iget-object v10, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/lit8 v11, v9, 0x1

    .line 289
    aget v9, p1, v9

    add-int/lit8 v13, v11, 0x1

    .line 290
    aget v11, p1, v11

    mul-float v14, v8, v9

    mul-float v15, v10, v11

    sub-float/2addr v14, v15

    add-float/2addr v5, v14

    mul-float/2addr v8, v11

    mul-float/2addr v10, v9

    add-float/2addr v8, v10

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v12

    move v9, v13

    goto :goto_1

    :cond_0
    move/from16 v7, p3

    neg-float v8, v7

    mul-float/2addr v5, v8

    mul-float/2addr v8, v6

    move/from16 v6, p5

    :goto_2
    if-ge v6, v1, :cond_1

    add-int/lit8 v9, v4, 0x1

    .line 301
    aget v4, p1, v4

    add-int/lit8 v10, v9, 0x1

    .line 302
    aget v9, p1, v9

    neg-float v9, v9

    .line 304
    iget-object v11, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v12, v3, 0x1

    aget v13, v11, v3

    mul-float v14, v5, v4

    mul-float v15, v8, v9

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    aput v13, v11, v3

    .line 305
    iget-object v3, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v12, 0x1

    aget v13, v3, v12

    mul-float/2addr v9, v5

    mul-float/2addr v4, v8

    add-float/2addr v9, v4

    add-float/2addr v13, v9

    aput v13, v3, v12

    add-int/lit8 v6, v6, 0x1

    move v4, v10

    move v3, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    add-int v2, p5, p2

    mul-int/lit8 v2, v2, 0x2

    .line 203
    aget v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 204
    aget v2, p1, v2

    neg-float v2, v2

    .line 206
    iget v4, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int v4, v4, p5

    add-int v4, v4, p4

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, p4, 0x2

    move/from16 v6, p4

    move v7, v5

    .line 209
    :goto_0
    iget v8, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v6, v8, :cond_0

    .line 210
    iget-object v8, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v4, 0x1

    aget v4, v8, v4

    .line 211
    iget-object v8, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v10, v9, 0x1

    aget v8, v8, v9

    add-int/lit8 v9, v7, 0x1

    mul-float v11, v3, v4

    mul-float v12, v2, v8

    sub-float/2addr v11, v12

    .line 213
    aput v11, p7, v7

    add-int/lit8 v7, v9, 0x1

    mul-float/2addr v8, v3

    mul-float/2addr v4, v2

    add-float/2addr v8, v4

    .line 214
    aput v8, p7, v9

    add-int/lit8 v6, v6, 0x1

    move v4, v10

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 218
    iget v3, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p4

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v2, p2

    mul-int/lit8 v4, v4, 0x2

    .line 222
    aget v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 223
    aget v4, p1, v4

    neg-float v4, v4

    move/from16 v7, p4

    move v8, v5

    .line 225
    :goto_2
    iget v9, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v7, v9, :cond_1

    .line 226
    iget-object v9, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    .line 227
    iget-object v9, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 229
    aget v12, p7, v8

    mul-float v13, v6, v3

    mul-float v14, v4, v9

    sub-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, p7, v8

    add-int/lit8 v8, v10, 0x1

    .line 230
    aget v12, p7, v10

    mul-float/2addr v9, v6

    mul-float/2addr v3, v4

    add-float/2addr v9, v3

    add-float/2addr v12, v9

    aput v12, p7, v10

    add-int/lit8 v7, v7, 0x1

    move v3, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, p4

    move v3, v5

    .line 235
    :goto_3
    iget v4, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 236
    aget v6, p7, v3

    mul-float v6, v6, p3

    aput v6, p7, v3

    add-int/lit8 v3, v4, 0x1

    .line 237
    aget v6, p7, v4

    mul-float v6, v6, p3

    aput v6, p7, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move/from16 v2, p5

    :goto_4
    if-ge v2, v1, :cond_5

    .line 243
    iget v3, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p4

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v2, p2

    mul-int/lit8 v4, v4, 0x2

    .line 247
    aget v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 248
    aget v4, p1, v4

    move/from16 v7, p4

    move v8, v5

    .line 250
    :goto_5
    iget v9, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v7, v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    .line 251
    aget v8, p7, v8

    add-int/lit8 v10, v9, 0x1

    .line 252
    aget v9, p7, v9

    .line 254
    iget-object v11, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v12, v3, 0x1

    aget v13, v11, v3

    mul-float v14, v6, v8

    mul-float v15, v4, v9

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    aput v13, v11, v3

    .line 255
    iget-object v3, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v12, 0x1

    aget v13, v3, v12

    mul-float/2addr v9, v6

    mul-float/2addr v8, v4

    add-float/2addr v9, v8

    sub-float/2addr v13, v9

    aput v13, v3, v12

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    move v3, v11

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

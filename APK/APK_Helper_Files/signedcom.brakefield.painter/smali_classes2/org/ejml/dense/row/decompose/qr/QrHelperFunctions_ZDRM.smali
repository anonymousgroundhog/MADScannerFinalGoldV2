.class public Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeRowMax(Lorg/ejml/data/ZMatrixRMaj;III)D
    .locals 7

    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result p1

    .line 410
    iget-object p0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 413
    aget-wide v3, p0, p1

    add-int/lit8 p1, v2, 0x1

    .line 414
    aget-wide v5, p0, v2

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    cmpg-double v2, v0, v3

    if-gez v2, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 421
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D
    .locals 14

    move-object/from16 v0, p5

    mul-int/lit8 v1, p0, 0x2

    const-wide/16 v2, 0x0

    move v4, p0

    move v5, p1

    move v8, v1

    move-wide v6, v2

    :goto_0
    if-ge v4, v5, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 121
    aget-wide v10, p2, v8

    div-double v10, v10, p3

    aput-wide v10, p2, v8

    add-int/lit8 v8, v9, 0x1

    .line 122
    aget-wide v12, p2, v9

    div-double v12, v12, p3

    aput-wide v12, p2, v9

    mul-double/2addr v10, v10

    mul-double/2addr v12, v12

    add-double/2addr v10, v12

    add-double/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 129
    aget-wide v6, p2, v1

    add-int/lit8 v1, v1, 0x1

    .line 130
    aget-wide v8, p2, v1

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    .line 131
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    cmpl-double v1, v10, v2

    if-nez v1, :cond_1

    .line 136
    iput-wide v4, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 137
    iput-wide v2, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    goto :goto_1

    :cond_1
    div-double v1, v6, v10

    mul-double/2addr v1, v4

    .line 139
    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->real:D

    div-double v1, v8, v10

    mul-double/2addr v1, v4

    .line 140
    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 147
    :goto_1
    iget-wide v1, v0, Lorg/ejml/data/Complex_F64;->real:D

    add-double/2addr v1, v6

    iget-wide v12, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double/2addr v12, v8

    invoke-static {v1, v2, v12, v13}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->mag(DD)D

    move-result-wide v1

    .line 148
    iget-wide v12, v0, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v6, v12

    iget-wide v12, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    sub-double/2addr v8, v12

    invoke-static {v6, v7, v8, v9}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->mag(DD)D

    move-result-wide v6

    cmpl-double v1, v6, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-lez v1, :cond_2

    .line 152
    iget-wide v6, v0, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v6, v6

    iput-wide v6, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 153
    iget-wide v6, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v6, v6

    iput-wide v6, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double v0, v4, v4

    mul-double v6, v4, v10

    sub-double v6, v0, v6

    mul-double v8, v10, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v10

    sub-double/2addr v8, v4

    goto :goto_2

    :cond_2
    mul-double v0, v4, v4

    mul-double v6, v4, v10

    add-double/2addr v6, v0

    mul-double v8, v10, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v10

    add-double/2addr v8, v4

    :goto_2
    add-double/2addr v8, v0

    div-double/2addr v8, v6

    return-wide v8
.end method

.method public static divideElements(II[DIDD)V
    .locals 14

    mul-double v0, p4, p4

    mul-double v2, p6, p6

    add-double/2addr v0, v2

    add-int v2, p3, p0

    mul-int/lit8 v2, v2, 0x2

    move v4, p1

    move v3, v2

    move v2, p0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 88
    aget-wide v5, p2, v3

    add-int/lit8 v7, v3, 0x1

    .line 89
    aget-wide v8, p2, v7

    mul-double v10, v5, p4

    mul-double v12, v8, p6

    add-double/2addr v10, v12

    div-double/2addr v10, v0

    .line 92
    aput-wide v10, p2, v3

    add-int/lit8 v3, v7, 0x1

    mul-double v8, v8, p4

    mul-double v5, v5, p6

    sub-double/2addr v8, v5

    div-double/2addr v8, v0

    .line 93
    aput-wide v8, p2, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractColumnAndMax(Lorg/ejml/data/ZMatrixRMaj;III[DI)D
    .locals 8

    add-int/2addr p5, p1

    mul-int/lit8 p5, p5, 0x2

    .line 379
    invoke-virtual {p0, p1, p3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result p3

    .line 380
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/16 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v3, p5, 0x1

    .line 385
    aget-wide v4, v0, p3

    aput-wide v4, p4, p5

    add-int/lit8 p5, v3, 0x1

    add-int/lit8 v6, p3, 0x1

    .line 386
    aget-wide v6, v0, v6

    aput-wide v6, p4, v3

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    cmpg-double v3, v1, v4

    if-gez v3, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 382
    iget v3, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr p3, v3

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static extractHouseholderColumn(Lorg/ejml/data/ZMatrixRMaj;III[DI)V
    .locals 4

    add-int/2addr p5, p1

    mul-int/lit8 p5, p5, 0x2

    add-int/lit8 v0, p5, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 322
    aput-wide v1, p4, p5

    add-int/lit8 p5, v0, 0x1

    const-wide/16 v1, 0x0

    .line 323
    aput-wide v1, p4, v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 326
    invoke-virtual {p0, p1, p3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v0

    add-int/lit8 v1, p5, 0x1

    .line 327
    iget-object v2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v2, v2, v0

    aput-wide v2, p4, p5

    add-int/lit8 p5, v1, 0x1

    .line 328
    iget-object v2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v0, v0, 0x1

    aget-wide v2, v2, v0

    aput-wide v2, p4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractHouseholderRow(Lorg/ejml/data/ZMatrixRMaj;III[DI)V
    .locals 3

    add-int/2addr p5, p2

    mul-int/lit8 p5, p5, 0x2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 346
    aput-wide v0, p4, p5

    add-int/lit8 v0, p5, 0x1

    const-wide/16 v1, 0x0

    .line 347
    aput-wide v1, p4, v0

    .line 349
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 350
    iget-object p0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p0, p1, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static findMax([DII)D
    .locals 7

    mul-int/lit8 v0, p1, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 p2, v0, 0x1

    .line 61
    aget-wide v3, p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 62
    aget-wide v5, p0, p2

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    cmpl-double p2, v3, v1

    if-lez p2, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static mag(DD)D
    .locals 0

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/ZMatrixRMaj;[DIDIII)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p5

    .line 278
    :goto_0
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_2

    .line 279
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p6

    mul-int/lit8 v3, v3, 0x2

    add-int v4, p2, p6

    mul-int/lit8 v4, v4, 0x2

    const-wide/16 v5, 0x0

    move/from16 v9, p6

    move v10, v3

    move v11, v4

    move-wide v7, v5

    :goto_1
    if-ge v9, v1, :cond_0

    .line 284
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    .line 285
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v13, 0x1

    aget-wide v16, v10, v13

    add-int/lit8 v10, v11, 0x1

    .line 287
    aget-wide v18, p1, v11

    add-int/lit8 v11, v10, 0x1

    .line 288
    aget-wide v20, p1, v10

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    sub-double v22, v22, v24

    add-double v5, v5, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    add-double/2addr v7, v14

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_1

    :cond_0
    move-wide/from16 v9, p3

    neg-double v11, v9

    mul-double/2addr v5, v11

    mul-double/2addr v11, v7

    move/from16 v7, p6

    :goto_2
    if-ge v7, v1, :cond_1

    add-int/lit8 v8, v4, 0x1

    .line 299
    aget-wide v13, p1, v4

    add-int/lit8 v4, v8, 0x1

    .line 300
    aget-wide v8, p1, v8

    neg-double v8, v8

    .line 302
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v3, 0x1

    aget-wide v16, v10, v3

    mul-double v18, v5, v13

    mul-double v20, v11, v8

    sub-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v10, v3

    .line 303
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v15, 0x1

    aget-wide v16, v3, v15

    mul-double/2addr v8, v5

    mul-double/2addr v13, v11

    add-double/2addr v8, v13

    add-double v16, v16, v8

    aput-wide v16, v3, v15

    add-int/lit8 v7, v7, 0x1

    move v3, v10

    move-wide/from16 v9, p3

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p7

    add-int v2, p6, p2

    mul-int/lit8 v2, v2, 0x2

    .line 201
    aget-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 202
    aget-wide v5, p1, v2

    neg-double v5, v5

    .line 204
    iget v2, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int v2, v2, p6

    add-int v2, v2, p5

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v7, p5, 0x2

    move/from16 v8, p5

    move v9, v7

    .line 207
    :goto_0
    iget v10, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v8, v10, :cond_0

    .line 208
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v2, 0x1

    aget-wide v12, v10, v2

    .line 209
    iget-object v2, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v11, 0x1

    aget-wide v14, v2, v11

    add-int/lit8 v2, v9, 0x1

    mul-double v16, v3, v12

    mul-double v18, v5, v14

    sub-double v16, v16, v18

    .line 211
    aput-wide v16, p8, v9

    add-int/lit8 v9, v2, 0x1

    mul-double/2addr v14, v3

    mul-double/2addr v12, v5

    add-double/2addr v14, v12

    .line 212
    aput-wide v14, p8, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v10

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p6, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 216
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p5

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v2, p2

    mul-int/lit8 v4, v4, 0x2

    .line 220
    aget-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 221
    aget-wide v8, p1, v4

    neg-double v8, v8

    move/from16 v4, p5

    move v10, v7

    .line 223
    :goto_2
    iget v11, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v11, :cond_1

    .line 224
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v3, 0x1

    aget-wide v13, v11, v3

    .line 225
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v12, 0x1

    aget-wide v15, v3, v12

    add-int/lit8 v3, v10, 0x1

    .line 227
    aget-wide v17, p8, v10

    mul-double v19, v5, v13

    mul-double v21, v8, v15

    sub-double v19, v19, v21

    add-double v17, v17, v19

    aput-wide v17, p8, v10

    add-int/lit8 v10, v3, 0x1

    .line 228
    aget-wide v17, p8, v3

    mul-double/2addr v15, v5

    mul-double/2addr v13, v8

    add-double/2addr v15, v13

    add-double v17, v17, v15

    aput-wide v17, p8, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, p5

    move v3, v7

    .line 233
    :goto_3
    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 234
    aget-wide v5, p8, v3

    mul-double v5, v5, p3

    aput-wide v5, p8, v3

    add-int/lit8 v3, v4, 0x1

    .line 235
    aget-wide v5, p8, v4

    mul-double v5, v5, p3

    aput-wide v5, p8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move/from16 v2, p6

    :goto_4
    if-ge v2, v1, :cond_5

    .line 241
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int v3, v3, p5

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v2, p2

    mul-int/lit8 v4, v4, 0x2

    .line 245
    aget-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 246
    aget-wide v8, p1, v4

    move/from16 v4, p5

    move v10, v7

    .line 248
    :goto_5
    iget v11, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    .line 249
    aget-wide v12, p8, v10

    add-int/lit8 v10, v11, 0x1

    .line 250
    aget-wide v14, p8, v11

    .line 252
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v3, 0x1

    aget-wide v17, v11, v3

    mul-double v19, v5, v12

    mul-double v21, v8, v14

    sub-double v19, v19, v21

    sub-double v17, v17, v19

    aput-wide v17, v11, v3

    .line 253
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v16, 0x1

    aget-wide v17, v3, v16

    mul-double/2addr v14, v5

    mul-double/2addr v12, v8

    add-double/2addr v14, v12

    sub-double v17, v17, v14

    aput-wide v17, v3, v16

    add-int/lit8 v4, v4, 0x1

    move v3, v11

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

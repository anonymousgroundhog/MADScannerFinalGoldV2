.class public Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$rank1UpdateMultL$3(Lorg/ejml/data/DMatrixRMaj;II[DDI)V
    .locals 8

    .line 222
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p6, v0

    add-int/2addr p6, p1

    const-wide/16 v0, 0x0

    move v2, p1

    move v3, p6

    :goto_0
    if-ge v2, p2, :cond_0

    .line 226
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v3, v4, v3

    aget-wide v6, p3, v2

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    neg-double p4, p4

    mul-double/2addr p4, v0

    :goto_1
    if-ge p1, p2, :cond_1

    .line 232
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v1, p6, 0x1

    aget-wide v2, v0, p6

    aget-wide v4, p3, p1

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, p6

    add-int/lit8 p1, p1, 0x1

    move p6, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR$0([DLorg/ejml/data/DMatrixRMaj;I[DI)V
    .locals 7

    .line 99
    aget-wide v0, p0, p4

    .line 101
    iget p0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p4, p0

    add-int/2addr p4, p2

    .line 102
    :goto_0
    iget p0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, p0, :cond_0

    .line 103
    iget-object p0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v2, p4, 0x1

    aget-wide v3, p0, p4

    aget-wide v5, p3, p2

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    aput-wide v3, p0, p4

    add-int/lit8 p2, p2, 0x1

    move p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR$2([DILorg/ejml/data/DMatrixRMaj;I[DI)V
    .locals 6

    add-int/2addr p1, p5

    .line 192
    aget-wide p0, p0, p1

    .line 194
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p5, v0

    add-int/2addr p5, p3

    .line 195
    :goto_0
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p3, v0, :cond_0

    .line 196
    iget-object v0, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v1, p5, 0x1

    aget-wide v2, v0, p5

    aget-wide v4, p4, p3

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    aput-wide v2, v0, p5

    add-int/lit8 p3, p3, 0x1

    move p5, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR_u0$1([DLorg/ejml/data/DMatrixRMaj;I[DI)V
    .locals 7

    .line 149
    aget-wide v0, p0, p4

    .line 151
    iget p0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p4, p0

    add-int/2addr p4, p2

    .line 152
    :goto_0
    iget p0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, p0, :cond_0

    .line 153
    iget-object p0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v2, p4, 0x1

    aget-wide v3, p0, p4

    aget-wide v5, p3, p2

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    aput-wide v3, p0, p4

    add-int/lit8 p2, p2, 0x1

    move p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V
    .locals 9

    .line 221
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-instance v8, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DMatrixRMaj;II[DD)V

    invoke-static {p4, v0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move v6, v2

    .line 80
    :goto_0
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_0

    .line 81
    aget-wide v7, v1, v3

    iget-object v9, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v3

    add-int/2addr v10, v6

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v3, 0x1

    :goto_1
    if-ge v6, v4, :cond_2

    .line 85
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    .line 86
    aget-wide v8, v1, v6

    move v10, v2

    .line 87
    :goto_2
    iget v11, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v10, v11, :cond_1

    .line 88
    aget-wide v11, v5, v10

    iget-object v13, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v15, v13, v7

    mul-double/2addr v15, v8

    add-double/2addr v11, v15

    aput-wide v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    move v7, v14

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 92
    :goto_3
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    .line 93
    aget-wide v7, v5, v6

    mul-double v7, v7, p2

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 98
    :cond_3
    new-instance v6, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v0, v2, v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;-><init>([DLorg/ejml/data/DMatrixRMaj;I[D)V

    invoke-static {v3, v4, v6}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DIDIII[D)V
    .locals 14

    move-object v3, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v0, p5

    .line 174
    :goto_0
    iget v1, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    add-int v1, v6, p2

    .line 175
    aget-wide v1, p1, v1

    iget-object v4, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    mul-double/2addr v1, v4

    aput-wide v1, p8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, 0x1

    :goto_1
    if-ge v0, v7, :cond_2

    .line 179
    iget v1, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int v1, v1, p5

    add-int v2, v0, p2

    .line 180
    aget-wide v4, p1, v2

    move/from16 v2, p5

    .line 181
    :goto_2
    iget v8, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v8, :cond_1

    .line 182
    aget-wide v8, p8, v2

    iget-object v10, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v11, v1, 0x1

    aget-wide v12, v10, v1

    mul-double/2addr v12, v4

    add-double/2addr v8, v12

    aput-wide v8, p8, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move/from16 v0, p5

    .line 185
    :goto_3
    iget v1, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_3

    .line 186
    aget-wide v1, p8, v0

    mul-double v1, v1, p3

    aput-wide v1, p8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_3
    new-instance v8, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p1

    move/from16 v2, p2

    move-object v3, p0

    move/from16 v4, p5

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;-><init>([DILorg/ejml/data/DMatrixRMaj;I[D)V

    invoke-static {v6, v7, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v4, p9

    move v5, v2

    .line 124
    :goto_0
    iget v6, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 125
    iget-object v6, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v7, v7, p7

    add-int/2addr v7, v5

    aget-wide v6, v6, v7

    mul-double v6, v6, p2

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p7, 0x1

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_2

    .line 129
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    .line 130
    aget-wide v8, v1, v6

    move v10, v2

    .line 131
    :goto_2
    iget v11, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v10, v11, :cond_1

    .line 132
    aget-wide v11, v4, v10

    iget-object v13, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v15, v13, v7

    mul-double/2addr v15, v8

    add-double/2addr v11, v15

    aput-wide v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    move v7, v14

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 136
    :goto_3
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    .line 137
    aget-wide v7, v4, v6

    mul-double v7, v7, p4

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 142
    :cond_3
    iget v6, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v6, v6, p7

    add-int/2addr v6, v2

    move v7, v2

    .line 143
    :goto_4
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v7, v8, :cond_4

    .line 144
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v9, v6, 0x1

    aget-wide v10, v8, v6

    aget-wide v12, v4, v7

    mul-double v12, v12, p2

    sub-double/2addr v10, v12

    aput-wide v10, v8, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_4

    .line 148
    :cond_4
    new-instance v6, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1, v0, v2, v4}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda3;-><init>([DLorg/ejml/data/DMatrixRMaj;I[D)V

    invoke-static {v5, v3, v6}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

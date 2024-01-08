.class public Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$rank1UpdateMultL$3(Lorg/ejml/data/FMatrixRMaj;II[FFI)V
    .locals 5

    .line 222
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p5, v0

    add-int/2addr p5, p1

    const/4 v0, 0x0

    move v1, p1

    move v2, p5

    :goto_0
    if-ge v1, p2, :cond_0

    .line 226
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    aget v3, p3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    neg-float p4, p4

    mul-float/2addr p4, v0

    :goto_1
    if-ge p1, p2, :cond_1

    .line 232
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v1, p5, 0x1

    aget v2, v0, p5

    aget v3, p3, p1

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    aput v2, v0, p5

    add-int/lit8 p1, p1, 0x1

    move p5, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR$0([FLorg/ejml/data/FMatrixRMaj;I[FI)V
    .locals 4

    .line 99
    aget p0, p0, p4

    .line 101
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p4, v0

    add-int/2addr p4, p2

    .line 102
    :goto_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    .line 103
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v1, p4, 0x1

    aget v2, v0, p4

    aget v3, p3, p2

    mul-float/2addr v3, p0

    sub-float/2addr v2, v3

    aput v2, v0, p4

    add-int/lit8 p2, p2, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR$2([FILorg/ejml/data/FMatrixRMaj;I[FI)V
    .locals 3

    add-int/2addr p1, p5

    .line 192
    aget p0, p0, p1

    .line 194
    iget p1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p5, p1

    add-int/2addr p5, p3

    .line 195
    :goto_0
    iget p1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p3, p1, :cond_0

    .line 196
    iget-object p1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v0, p5, 0x1

    aget v1, p1, p5

    aget v2, p4, p3

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    aput v1, p1, p5

    add-int/lit8 p3, p3, 0x1

    move p5, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$rank1UpdateMultR_u0$1([FLorg/ejml/data/FMatrixRMaj;I[FI)V
    .locals 4

    .line 149
    aget p0, p0, p4

    .line 151
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p4, v0

    add-int/2addr p4, p2

    .line 152
    :goto_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    .line 153
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v1, p4, 0x1

    aget v2, v0, p4

    aget v3, p3, p2

    mul-float/2addr v3, p0

    sub-float/2addr v2, v3

    aput v2, v0, p4

    add-int/lit8 p2, p2, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V
    .locals 8

    .line 221
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-instance v7, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/FMatrixRMaj;II[FF)V

    invoke-static {p3, v0, v7}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V
    .locals 7

    move v0, p3

    .line 80
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 81
    aget v1, p1, p4

    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, p4

    add-int/2addr v3, v0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p4, 0x1

    :goto_1
    if-ge v0, p5, :cond_2

    .line 85
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p3

    .line 86
    aget v2, p1, v0

    move v3, p3

    .line 87
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 88
    aget v4, p6, v3

    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    aput v4, p6, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, p3

    .line 92
    :goto_3
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_3

    .line 93
    aget v1, p6, v0

    mul-float/2addr v1, p2

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    :cond_3
    new-instance p2, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0, p3, p6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;-><init>([FLorg/ejml/data/FMatrixRMaj;I[F)V

    invoke-static {p4, p5, p2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FIFIII[F)V
    .locals 7

    move v0, p4

    .line 174
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    add-int v1, p5, p2

    .line 175
    aget v1, p1, v1

    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, p5

    add-int/2addr v3, v0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    aput v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p5, 0x1

    :goto_1
    if-ge v0, p6, :cond_2

    .line 179
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p4

    add-int v2, v0, p2

    .line 180
    aget v2, p1, v2

    move v3, p4

    .line 181
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 182
    aget v4, p7, v3

    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    aput v4, p7, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, p4

    .line 185
    :goto_3
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_3

    .line 186
    aget v1, p7, v0

    mul-float/2addr v1, p3

    aput v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_3
    new-instance p3, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda3;

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move v5, p4

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda3;-><init>([FILorg/ejml/data/FMatrixRMaj;I[F)V

    invoke-static {p5, p6, p3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V
    .locals 8

    move v0, p4

    .line 124
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, p5

    add-int/2addr v2, v0

    aget v1, v1, v2

    mul-float/2addr v1, p2

    aput v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p5, 0x1

    move v1, v0

    :goto_1
    if-ge v1, p6, :cond_2

    .line 129
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p4

    .line 130
    aget v3, p1, v1

    move v4, p4

    .line 131
    :goto_2
    iget v5, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_1

    .line 132
    aget v5, p7, v4

    iget-object v6, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    aput v5, p7, v4

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p4

    .line 136
    :goto_3
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_3

    .line 137
    aget v2, p7, v1

    mul-float/2addr v2, p3

    aput v2, p7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 142
    :cond_3
    iget p3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p5, p3

    add-int/2addr p5, p4

    move p3, p4

    .line 143
    :goto_4
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p3, v1, :cond_4

    .line 144
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v2, p5, 0x1

    aget v3, v1, p5

    aget v4, p7, p3

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    aput v3, v1, p5

    add-int/lit8 p3, p3, 0x1

    move p5, v2

    goto :goto_4

    .line 148
    :cond_4
    new-instance p2, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0, p4, p7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda1;-><init>([FLorg/ejml/data/FMatrixRMaj;I[F)V

    invoke-static {v0, p6, p2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

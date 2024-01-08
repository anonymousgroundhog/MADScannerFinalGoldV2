.class public Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;
.super Ljava/lang/Object;
.source "QrHelperFunctions_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeTauAndDivide(II[FF)F
    .locals 4

    const/4 v0, 0x0

    move v1, p0

    move v2, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 182
    aget v3, p2, v1

    div-float/2addr v3, p3

    aput v3, p2, v1

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-double v1, v2

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 193
    aget p0, p2, p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    neg-float p1, p1

    :cond_1
    return p1
.end method

.method public static computeTauAndDivide(II[FIF)F
    .locals 5

    const/4 v0, 0x0

    move v1, p0

    move v2, v0

    :goto_0
    if-ge v1, p1, :cond_0

    add-int v3, p3, v1

    .line 137
    aget v4, p2, v3

    div-float/2addr v4, p4

    aput v4, p2, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-double v1, v2

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    add-int/2addr p3, p0

    .line 149
    aget p0, p2, p3

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    neg-float p1, p1

    :cond_1
    return p1
.end method

.method public static divideElements(II[FF)V
    .locals 1

    :goto_0
    if-ge p0, p1, :cond_0

    .line 71
    aget v0, p2, p0

    div-float/2addr v0, p3

    aput v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements(II[FIF)V
    .locals 2

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p3

    .line 85
    aget v1, p2, v0

    div-float/2addr v1, p4

    aput v1, p2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Bcol(III[F[FIF)V
    .locals 1

    mul-int v0, p0, p2

    add-int/2addr v0, p5

    :goto_0
    if-ge p0, p1, :cond_0

    .line 119
    aget p5, p3, p0

    div-float/2addr p5, p6

    aput p5, p3, p0

    aput p5, p4, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Brow(II[F[FIF)V
    .locals 2

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p4

    .line 101
    aget v1, p3, v0

    div-float/2addr v1, p5

    aput v1, p3, v0

    aput v1, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findMax([FII)F
    .locals 3

    add-int/2addr p2, p1

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    if-ge p1, p2, :cond_2

    .line 56
    aget v1, p0, p1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    neg-float v1, v1

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V
    .locals 7

    .line 378
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p3, v0, :cond_2

    .line 379
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, p3

    add-int/2addr v0, p4

    const/4 v1, 0x0

    move v2, p4

    move v3, v0

    :goto_1
    if-ge v2, p5, :cond_0

    .line 383
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v5, v3, 0x1

    aget v3, v4, v3

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    neg-float v2, p2

    mul-float/2addr v2, v1

    move v1, p4

    :goto_2
    if-ge v1, p5, :cond_1

    .line 389
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v4, v0, 0x1

    aget v5, v3, v0

    aget v6, p1, v1

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V
    .locals 7

    move v0, p3

    .line 230
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 231
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

    .line 235
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p3

    .line 236
    aget v2, p1, v0

    move v3, p3

    .line 237
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 238
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

    .line 242
    :goto_3
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_3

    .line 243
    aget v1, p6, v0

    mul-float/2addr v1, p2

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge p4, p5, :cond_5

    .line 250
    aget p2, p1, p4

    .line 252
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, p4

    add-int/2addr v0, p3

    move v1, p3

    .line 253
    :goto_5
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_4

    .line 254
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v3, v0, 0x1

    aget v4, v2, v0

    aget v5, p6, v1

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    aput v4, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_5

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FIFIII[F)V
    .locals 7

    move v0, p4

    .line 328
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    add-int v1, p5, p2

    .line 329
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

    .line 333
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p4

    add-int v2, v0, p2

    .line 334
    aget v2, p1, v2

    move v3, p4

    .line 335
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 336
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

    .line 339
    :goto_3
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_3

    .line 340
    aget v1, p7, v0

    mul-float/2addr v1, p3

    aput v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge p5, p6, :cond_5

    add-int p3, p5, p2

    .line 347
    aget p3, p1, p3

    .line 349
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, p5

    add-int/2addr v0, p4

    move v1, p4

    .line 350
    :goto_5
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_4

    .line 351
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v3, v0, 0x1

    aget v4, v2, v0

    aget v5, p7, v1

    mul-float/2addr v5, p3

    sub-float/2addr v4, v5

    aput v4, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_5

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V
    .locals 8

    move v0, p4

    .line 276
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 277
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

    .line 281
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p4

    .line 282
    aget v3, p1, v1

    move v4, p4

    .line 283
    :goto_2
    iget v5, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_1

    .line 284
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

    .line 288
    :goto_3
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_3

    .line 289
    aget v2, p7, v1

    mul-float/2addr v2, p3

    aput v2, p7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 294
    :cond_3
    iget p3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p5, p3

    add-int/2addr p5, p4

    move p3, p4

    .line 295
    :goto_4
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p3, v1, :cond_4

    .line 296
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

    :cond_4
    :goto_5
    if-ge v0, p6, :cond_6

    .line 302
    aget p2, p1, v0

    .line 304
    iget p3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p3, v0

    add-int/2addr p3, p4

    move p5, p4

    .line 305
    :goto_6
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p5, v1, :cond_5

    .line 306
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v2, p3, 0x1

    aget v3, v1, p3

    aget v4, p7, p5

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    aput v3, v1, p3

    add-int/lit8 p5, p5, 0x1

    move p3, v2

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

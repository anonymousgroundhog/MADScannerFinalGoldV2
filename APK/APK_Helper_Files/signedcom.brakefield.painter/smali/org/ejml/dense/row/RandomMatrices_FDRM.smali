.class public Lorg/ejml/dense/row/RandomMatrices_FDRM;
.super Ljava/lang/Object;
.source "RandomMatrices_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUniform(Lorg/ejml/data/FMatrixRMaj;FFLjava/util/Random;)V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getData()[F

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result p0

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 306
    aget v2, v0, v1

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static diagonal(IFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    .line 160
    invoke-static {p0, p0, p1, p2, p3}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->diagonal(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static diagonal(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    cmpg-float v0, p3, p2

    if-ltz v0, :cond_1

    .line 178
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-float/2addr p3, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 185
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, p3

    add-float/2addr v1, p2

    invoke-virtual {v0, p1, p1, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 176
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The max must be >= the min"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillGaussian(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V
    .locals 4

    .line 412
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getData()[F

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 416
    invoke-virtual {p3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getData()[F

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result p0

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 360
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/FMatrixRMaj;Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 340
    invoke-static {p0, v0, v1, p1}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-void
.end method

.method public static insideSpan([Lorg/ejml/data/FMatrixRMaj;FFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 108
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    array-length v1, p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 110
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v4

    invoke-direct {v1, v4, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 112
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_0

    .line 113
    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 114
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float v4, p2, p1

    mul-float/2addr v2, v4

    add-float/2addr v2, p1

    .line 115
    invoke-static {v2, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->scale(FLorg/ejml/data/FMatrixD1;)V

    .line 117
    invoke-static {v0, v1, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 10

    if-lt p0, p1, :cond_1

    .line 139
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->span(IILjava/util/Random;)[Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 141
    new-instance v8, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v8, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, p1, :cond_0

    .line 143
    aget-object v0, p2, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move v5, v9

    move v6, p0

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/mult/SubmatrixOps_FDRM;->setSubMatrix(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;IIIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v8

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static randomBinary(IILjava/util/Random;)Lorg/ejml/data/BMatrixRMaj;
    .locals 1

    .line 280
    new-instance v0, Lorg/ejml/data/BMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    .line 282
    invoke-static {v0, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->setRandomB(Lorg/ejml/data/BMatrixRMaj;Ljava/util/Random;)V

    return-object v0
.end method

.method public static rectangle(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 324
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 326
    invoke-static {v0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static rectangle(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 264
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 266
    invoke-static {v0, p0, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static rectangleGaussian(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 395
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 396
    invoke-static {v0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillGaussian(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static setRandomB(Lorg/ejml/data/BMatrixRMaj;Ljava/util/Random;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    .line 374
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 378
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs singular(IILjava/util/Random;[F)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-le p0, p1, :cond_0

    .line 210
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    .line 211
    invoke-static {p1, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 212
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {p0, p0, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    .line 215
    invoke-static {p1, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 216
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 219
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 220
    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 223
    aget v4, p3, v3

    invoke-virtual {v1, v3, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    :cond_1
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p3, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 227
    invoke-static {v0, v1, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 228
    invoke-virtual {v1, p0, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 229
    invoke-static {p3, p2, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return-object v1
.end method

.method public static span(IILjava/util/Random;)[Lorg/ejml/data/FMatrixRMaj;
    .locals 12

    if-lt p0, p1, :cond_3

    .line 63
    new-array v0, p1, [Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    invoke-static {p0, v1, v2, v3, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->rectangle(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 66
    invoke-static {v4}, Lorg/ejml/dense/row/NormOps_FDRM;->normalizeF(Lorg/ejml/data/FMatrixRMaj;)V

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_2

    .line 70
    new-instance v6, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v6, p0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 71
    invoke-static {p0, v1, v2, v3, p2}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->rectangle(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v7

    move v8, v5

    :goto_1
    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    if-ge v8, v4, :cond_1

    .line 76
    invoke-virtual {v7, v6}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    const/high16 v9, -0x40000000    # -2.0f

    .line 77
    aget-object v10, v0, v8

    invoke-static {v9, v10, v6, v7}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->householder(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    .line 78
    invoke-static {v6, v7, v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    const/high16 v9, 0x3f000000    # 0.5f

    .line 79
    invoke-static {v9, v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->scale(FLorg/ejml/data/FMatrixD1;)V

    .line 88
    invoke-static {v7}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_0

    .line 89
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v10

    if-nez v10, :cond_0

    .line 91
    invoke-static {v7, v9}, Lorg/ejml/dense/row/CommonOps_FDRM;->divide(Lorg/ejml/data/FMatrixD1;F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed sanity check"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_1
    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of vectors must be less than or equal to the dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetric(IFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 456
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 458
    invoke-static {v0, p1, p2, p3}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->symmetric(Lorg/ejml/data/FMatrixRMaj;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static symmetric(Lorg/ejml/data/FMatrixRMaj;FFLjava/util/Random;)V
    .locals 4

    .line 473
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    sub-float/2addr p2, p1

    .line 478
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 482
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v3, p1

    .line 483
    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 484
    invoke-virtual {p0, v2, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 474
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricPosDef(ILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 429
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 430
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {v0, v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    :goto_1
    if-ge v2, p0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 439
    invoke-virtual {v1, v2, v2, p1}, Lorg/ejml/data/FMatrixRMaj;->add(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static varargs symmetricWithEigenvalues(ILjava/util/Random;[F)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 243
    invoke-static {p0, p0, p1}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 244
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->diag([F)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 246
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 248
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 249
    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return-object p2
.end method

.method public static triangularLower(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    if-ltz p1, :cond_2

    sub-float/2addr p3, p2

    .line 536
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    add-int v3, v2, p1

    add-int/lit8 v3, v3, 0x1

    .line 539
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 541
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, p3

    add-float/2addr v5, p2

    invoke-virtual {v0, v2, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 532
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "hessenberg must be more than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triangularUpper(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-ltz p1, :cond_3

    sub-float/2addr p3, p2

    .line 506
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    if-gt v2, p1, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    sub-int v3, v2, p1

    :goto_1
    if-ge v3, p0, :cond_1

    .line 512
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, p3

    add-float/2addr v4, p2

    invoke-virtual {v0, v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 502
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "hessenberg must be more than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

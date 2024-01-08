.class public Lorg/ejml/dense/row/RandomMatrices_DDRM;
.super Ljava/lang/Object;
.source "RandomMatrices_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUniform(Lorg/ejml/data/DMatrixRMaj;DDLjava/util/Random;)V
    .locals 6

    .line 298
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getData()[D

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result p0

    sub-double/2addr p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 304
    aget-wide v2, v0, v1

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static diagonal(IDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    move v0, p0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 158
    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->diagonal(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static diagonal(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    cmpg-double v0, p4, p2

    if-ltz v0, :cond_1

    .line 176
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 178
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-double/2addr p4, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 183
    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    mul-double/2addr v1, p4

    add-double/2addr v1, p2

    invoke-virtual {v0, p1, p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 174
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The max must be >= the min"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillGaussian(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V
    .locals 4

    .line 410
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getData()[D

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 414
    invoke-virtual {p5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double/2addr v2, p3

    add-double/2addr v2, p1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V
    .locals 4

    .line 352
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getData()[D

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result p0

    sub-double/2addr p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 358
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, p3

    add-double/2addr v2, p1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/DMatrixRMaj;Ljava/util/Random;)V
    .locals 6

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v5, p1

    .line 338
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-void
.end method

.method public static insideSpan([Lorg/ejml/data/DMatrixRMaj;DDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    .line 106
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    array-length v1, p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 108
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v4

    invoke-direct {v1, v4, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 110
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_0

    .line 111
    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 112
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    sub-double v6, p3, p1

    mul-double/2addr v4, v6

    add-double/2addr v4, p1

    .line 113
    invoke-static {v4, v5, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->scale(DLorg/ejml/data/DMatrixD1;)V

    .line 115
    invoke-static {v0, v1, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    if-lt p0, p1, :cond_1

    .line 137
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->span(IILjava/util/Random;)[Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 139
    new-instance v8, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v8, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, p1, :cond_0

    .line 141
    aget-object v0, p2, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move v5, v9

    move v6, p0

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/mult/SubmatrixOps_DDRM;->setSubMatrix(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;IIIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v8

    .line 134
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static randomBinary(IILjava/util/Random;)Lorg/ejml/data/BMatrixRMaj;
    .locals 1

    .line 278
    new-instance v0, Lorg/ejml/data/BMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    .line 280
    invoke-static {v0, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->setRandomB(Lorg/ejml/data/BMatrixRMaj;Ljava/util/Random;)V

    return-object v0
.end method

.method public static rectangle(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 322
    new-instance v6, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v6, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move-object v0, v6

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 324
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static rectangle(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 262
    new-instance v6, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v6, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, v6

    move-object v5, p2

    .line 264
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static rectangleGaussian(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 393
    new-instance v6, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v6, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move-object v0, v6

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 394
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillGaussian(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static setRandomB(Lorg/ejml/data/BMatrixRMaj;Ljava/util/Random;)V
    .locals 3

    .line 371
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    .line 372
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs singular(IILjava/util/Random;[D)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-le p0, p1, :cond_0

    .line 208
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    .line 209
    invoke-static {p1, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 210
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {p0, p0, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    .line 213
    invoke-static {p1, p1, p2}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 214
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 217
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 218
    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 221
    aget-wide v4, p3, v3

    invoke-virtual {v1, v3, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    :cond_1
    new-instance p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p3, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 225
    invoke-static {v0, v1, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 226
    invoke-virtual {v1, p0, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 227
    invoke-static {p3, p2, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return-object v1
.end method

.method public static span(IILjava/util/Random;)[Lorg/ejml/data/DMatrixRMaj;
    .locals 13

    if-lt p0, p1, :cond_3

    .line 61
    new-array v0, p1, [Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v1, p0

    move-object v7, p2

    .line 63
    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->rectangle(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_DDRM;->normalizeF(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_2

    .line 68
    new-instance v4, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v4, p0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v6, 0x1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move v5, p0

    move-object v11, p2

    .line 69
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->rectangle(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v5

    move v6, v2

    :goto_1
    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    if-ge v6, v3, :cond_1

    .line 74
    invoke-virtual {v5, v4}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    .line 75
    aget-object v9, v0, v6

    invoke-static {v7, v8, v9, v4, v5}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->householder(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    .line 76
    invoke-static {v4, v5, v5}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 77
    invoke-static {v7, v8, v5}, Lorg/ejml/dense/row/CommonOps_DDRM;->scale(DLorg/ejml/data/DMatrixD1;)V

    .line 86
    invoke-static {v5}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_0

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_0

    .line 89
    invoke-static {v5, v7, v8}, Lorg/ejml/dense/row/CommonOps_DDRM;->divide(Lorg/ejml/data/DMatrixD1;D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed sanity check"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_1
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of vectors must be less than or equal to the dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetric(IDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 454
    new-instance v6, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v6, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 456
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->symmetric(Lorg/ejml/data/DMatrixRMaj;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static symmetric(Lorg/ejml/data/DMatrixRMaj;DDLjava/util/Random;)V
    .locals 5

    .line 471
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    sub-double/2addr p3, p1

    .line 476
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 480
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    mul-double/2addr v3, p3

    add-double/2addr v3, p1

    .line 481
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 482
    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 472
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricPosDef(ILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 427
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 428
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    .line 431
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    invoke-virtual {v0, v3, v2, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {v0, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    :goto_1
    if-ge v2, p0, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 437
    invoke-virtual {v1, v2, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->add(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static varargs symmetricWithEigenvalues(ILjava/util/Random;[D)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 241
    invoke-static {p0, p0, p1}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->orthogonal(IILjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 242
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag([D)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 244
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 246
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 247
    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return-object p2
.end method

.method public static triangularLower(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    if-ltz p1, :cond_2

    sub-double/2addr p4, p2

    .line 534
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    add-int v3, v2, p1

    add-int/lit8 v3, v3, 0x1

    .line 537
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 539
    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, p4

    add-double/2addr v5, p2

    invoke-virtual {v0, v2, v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 530
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "hessenberg must be more than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triangularUpper(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-ltz p1, :cond_3

    sub-double/2addr p4, p2

    .line 504
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

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

    .line 510
    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, p4

    add-double/2addr v4, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 500
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "hessenberg must be more than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lorg/ejml/dense/row/NormOps_DDRM;
.super Ljava/lang/Object;
.source "NormOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditionP(Lorg/ejml/data/DMatrixRMaj;D)D
    .locals 3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->conditionP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    .line 101
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 104
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 106
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->normP(Lorg/ejml/data/DMatrixRMaj;D)D

    move-result-wide v1

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->normP(Lorg/ejml/data/DMatrixRMaj;D)D

    move-result-wide p0

    :goto_0
    mul-double/2addr v1, p0

    return-wide v1

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A can\'t be inverted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_2
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 112
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->pinv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    .line 114
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->normP(Lorg/ejml/data/DMatrixRMaj;D)D

    move-result-wide v1

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->normP(Lorg/ejml/data/DMatrixRMaj;D)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static conditionP2(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 9

    .line 133
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 135
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    .line 137
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    .line 139
    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/SingularOps_DDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 146
    :cond_0
    array-length v0, p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-wide v6, p0, v3

    cmpg-double v8, v6, v1

    if-gez v8, :cond_1

    move-wide v1, v6

    :cond_1
    cmpl-double v8, v6, v4

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    div-double/2addr v4, v1

    return-wide v4
.end method

.method public static elementP(Lorg/ejml/data/DMatrix1Row;D)D
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 227
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementSumAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    .line 230
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    return-wide p0

    .line 232
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    return-wide v4

    .line 239
    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix1Row;->getNumElements()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    .line 242
    invoke-virtual {p0, v7}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v8

    div-double/2addr v8, v2

    .line 244
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    div-double/2addr v0, p1

    .line 247
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method public static fastElementP(Lorg/ejml/data/DMatrixD1;D)D
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 260
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->fastNormF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    return-wide p0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 267
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, p1

    .line 272
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrixD1;)D
    .locals 6

    .line 168
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 171
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastNormP(Lorg/ejml/data/DMatrixRMaj;D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normP1(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 311
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->fastNormP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    .line 312
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    .line 315
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->fastElementP(Lorg/ejml/data/DMatrixD1;D)D

    move-result-wide p0

    return-wide p0

    .line 318
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Doesn\'t support induced norms yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fastNormP2(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 358
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->fastNormF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0

    .line 361
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->inducedP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static inducedP1(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 13

    .line 392
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 393
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    move-wide v9, v2

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_0

    .line 398
    invoke-virtual {p0, v8, v5}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v8, v9, v6

    if-lez v8, :cond_1

    move-wide v6, v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-wide v6
.end method

.method public static inducedP2(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 4

    .line 417
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 419
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    .line 425
    array-length v0, p0

    invoke-static {p0, v3, v0}, Lorg/ejml/UtilEjml;->max([DII)D

    move-result-wide v0

    return-wide v0

    .line 420
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Decomposition failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inducedPInf(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 13

    .line 441
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 442
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move-wide v9, v2

    move v8, v4

    :goto_1
    if-ge v8, v1, :cond_0

    .line 447
    invoke-virtual {p0, v5, v8}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v8, v9, v6

    if-lez v8, :cond_1

    move-wide v6, v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-wide v6
.end method

.method public static normF(Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 195
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 203
    invoke-virtual {p0, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static normP(Lorg/ejml/data/DMatrixRMaj;D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normP1(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 288
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    .line 289
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0

    .line 292
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/NormOps_DDRM;->elementP(Lorg/ejml/data/DMatrix1Row;D)D

    move-result-wide p0

    return-wide p0

    .line 295
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Doesn\'t support induced norms yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static normP1(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 329
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementSumAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0

    .line 332
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->inducedP1(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normP2(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 343
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0

    .line 346
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->inducedP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normPInf(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 372
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0

    .line 375
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->inducedPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 71
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 79
    invoke-virtual {p0, v3, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->div(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

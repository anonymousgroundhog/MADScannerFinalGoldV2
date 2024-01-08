.class public Lorg/ejml/dense/row/NormOps_FDRM;
.super Ljava/lang/Object;
.source "NormOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditionP(Lorg/ejml/data/FMatrixRMaj;F)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->conditionP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    .line 103
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 106
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 108
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {p0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normP(Lorg/ejml/data/FMatrixRMaj;F)F

    move-result p0

    invoke-static {v0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normP(Lorg/ejml/data/FMatrixRMaj;F)F

    move-result p1

    :goto_0
    mul-float/2addr p0, p1

    return p0

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A can\'t be inverted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_2
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 114
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->pinv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    .line 116
    invoke-static {p0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normP(Lorg/ejml/data/FMatrixRMaj;F)F

    move-result p0

    invoke-static {v0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normP(Lorg/ejml/data/FMatrixRMaj;F)F

    move-result p1

    goto :goto_0
.end method

.method public static conditionP2(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 6

    .line 135
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 137
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    .line 139
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    .line 141
    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {v0, v1}, Lorg/ejml/dense/row/SingularOps_FDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_0
    array-length v0, p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x1

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p0, v3

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    cmpl-float v5, v4, v2

    if-lez v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    div-float/2addr v2, v1

    return v2
.end method

.method public static elementP(Lorg/ejml/data/FMatrix1Row;F)F
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 229
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementSumAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 232
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 234
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    return v2

    .line 241
    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix1Row;->getNumElements()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 244
    invoke-virtual {p0, v4}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v5

    div-float/2addr v5, v1

    .line 246
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    float-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    float-to-double v2, v2

    div-float/2addr v0, p1

    float-to-double p0, v0

    .line 249
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v1, p0

    return v1
.end method

.method public static fastElementP(Lorg/ejml/data/FMatrixD1;F)F
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->fastNormF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 269
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    .line 271
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    float-to-double v0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 274
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrixD1;)F
    .locals 4

    .line 170
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 173
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static fastNormP(Lorg/ejml/data/FMatrixRMaj;F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 311
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normP1(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 313
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->fastNormP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    .line 314
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    .line 317
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-static {p0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->fastElementP(Lorg/ejml/data/FMatrixD1;F)F

    move-result p0

    return p0

    .line 320
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Doesn\'t support induced norms yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fastNormP2(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 1

    .line 360
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->fastNormF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 363
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->inducedP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0
.end method

.method public static inducedP1(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 9

    .line 394
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 395
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    move v7, v2

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_0

    .line 400
    invoke-virtual {p0, v6, v4}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    cmpl-float v6, v7, v5

    if-lez v6, :cond_1

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static inducedP2(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 4

    .line 419
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 421
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 424
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    .line 427
    array-length v0, p0

    invoke-static {p0, v3, v0}, Lorg/ejml/UtilEjml;->max([FII)F

    move-result p0

    return p0

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Decomposition failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inducedPInf(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 9

    .line 443
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 444
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    move v7, v2

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    .line 449
    invoke-virtual {p0, v4, v6}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    cmpl-float v6, v7, v5

    if-lez v6, :cond_1

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static normF(Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 197
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 205
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    div-float/2addr v4, v0

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    float-to-double v1, v1

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static normP(Lorg/ejml/data/FMatrixRMaj;F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normP1(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 290
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    .line 291
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0

    .line 294
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    invoke-static {p0, p1}, Lorg/ejml/dense/row/NormOps_FDRM;->elementP(Lorg/ejml/data/FMatrix1Row;F)F

    move-result p0

    return p0

    .line 297
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Doesn\'t support induced norms yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static normP1(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 1

    .line 331
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementSumAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 334
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->inducedP1(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0
.end method

.method public static normP2(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 1

    .line 345
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 348
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->inducedP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0
.end method

.method public static normPInf(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 1

    .line 374
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 377
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->inducedPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0
.end method

.method public static normalizeF(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 73
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 81
    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->div(IF)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

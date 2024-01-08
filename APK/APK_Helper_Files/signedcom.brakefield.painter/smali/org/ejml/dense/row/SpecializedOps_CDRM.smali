.class public Lorg/ejml/dense/row/SpecializedOps_CDRM;
.super Ljava/lang/Object;
.source "SpecializedOps_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReflector(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    .line 46
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_CDRM;->normF(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v0

    div-float/2addr v1, v0

    .line 52
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->identity(I)Lorg/ejml/data/CMatrixRMaj;

    move-result-object v0

    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->multAddTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u must be a vector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/CMatrixRMaj;F)Lorg/ejml/data/CMatrixRMaj;
    .locals 2

    .line 71
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->identity(I)Lorg/ejml/data/CMatrixRMaj;

    move-result-object v0

    neg-float p1, p1

    const/4 v1, 0x0

    .line 75
    invoke-static {p1, v1, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->multAddTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "u must be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiagMaxMagnitude2(Lorg/ejml/data/CMatrixRMaj;)F
    .locals 7

    .line 130
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int v4, v3, v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    .line 137
    iget-object v5, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v4

    .line 138
    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    mul-float/2addr v5, v5

    mul-float/2addr v4, v4

    add-float/2addr v5, v4

    cmpl-float v4, v5, v2

    if-lez v4, :cond_0

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static householder(Lorg/ejml/data/CMatrixRMaj;F)Lorg/ejml/data/CMatrixRMaj;
    .locals 5

    .line 193
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 195
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 196
    invoke-static {p0, p0, v1}, Lorg/ejml/dense/row/mult/VectorVectorMult_CDRM;->outerProdH(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    neg-float p0, p1

    const/4 p1, 0x0

    .line 198
    invoke-static {v1, p0, p1, v1}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementMultiply(Lorg/ejml/data/CMatrixD1;FFLorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 202
    iget p1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    .line 203
    iget-object v2, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v3, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v3, v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    aput v3, v2, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static householderVector(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 7

    .line 220
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    .line 222
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    const/4 v1, 0x0

    .line 224
    invoke-static {p0, v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementDivide(Lorg/ejml/data/CMatrixD1;FFLorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    .line 226
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_CDRM;->normF(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    .line 227
    new-instance v2, Lorg/ejml/data/Complex_F32;

    invoke-direct {v2}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v3, v3, v2}, Lorg/ejml/data/CMatrixRMaj;->get(IILorg/ejml/data/Complex_F32;)V

    .line 232
    invoke-virtual {v2}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget v1, v2, Lorg/ejml/data/Complex_F32;->real:F

    invoke-virtual {v2}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v4

    div-float/2addr v1, v4

    mul-float/2addr v1, v0

    .line 237
    iget v4, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-virtual {v2}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v5

    div-float/2addr v4, v5

    mul-float/2addr v0, v4

    move v6, v1

    move v1, v0

    move v0, v6

    .line 240
    :goto_0
    iget v4, v2, Lorg/ejml/data/Complex_F32;->real:F

    add-float/2addr v4, v0

    iget v0, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v3, v3, v4, v0}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    .line 241
    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/CMatrixRMaj;->getReal(II)F

    move-result v0

    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/CMatrixRMaj;->getImag(II)F

    move-result v1

    invoke-static {p0, v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementDivide(Lorg/ejml/data/CMatrixD1;FFLorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    return-object p0
.end method

.method public static pivotMatrix(Lorg/ejml/data/CMatrixRMaj;[IIZ)Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 99
    new-instance p0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {p0, p2, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 101
    :cond_0
    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v1, p2, :cond_3

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ne v1, p2, :cond_3

    .line 103
    invoke-static {p0, v0, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->fill(Lorg/ejml/data/CMatrixD1;FF)V

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 108
    aget p3, p1, v2

    invoke-virtual {p0, p3, v2, v1, v0}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, p2, :cond_2

    .line 112
    aget p3, p1, v2

    invoke-virtual {p0, v2, p3, v1, v0}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p0

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F
    .locals 10

    .line 160
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 162
    invoke-static {p0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->elementDiagMaxMagnitude2(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    float-to-double v3, v1

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 168
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    mul-int v6, v5, v3

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    .line 176
    iget-object v7, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v7, v7, v6

    div-float/2addr v7, v1

    .line 177
    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v6, v8, v6

    div-float/2addr v6, v1

    mul-float v8, v4, v7

    mul-float v9, v2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v4, v6

    mul-float/2addr v7, v2

    add-float v2, v4, v7

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    :cond_1
    mul-float/2addr v4, v4

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    float-to-double v0, v4

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

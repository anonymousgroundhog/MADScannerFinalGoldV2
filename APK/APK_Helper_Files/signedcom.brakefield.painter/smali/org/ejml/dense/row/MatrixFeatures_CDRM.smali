.class public Lorg/ejml/dense/row/MatrixFeatures_CDRM;
.super Ljava/lang/Object;
.source "MatrixFeatures_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNaN(Lorg/ejml/data/CMatrixD1;)Z
    .locals 4

    .line 80
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 83
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hasUncountable(Lorg/ejml/data/CMatrixD1;)Z
    .locals 5

    .line 96
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 99
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    .line 100
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isEquals(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)Z
    .locals 5

    .line 122
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 128
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v1

    iget-object v4, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public static isEquals(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;F)Z
    .locals 5

    .line 154
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 159
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isEquals(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)Z

    move-result p0

    return p0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 164
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v1

    iget-object v4, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, p2, v3

    if-gez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v2
.end method

.method public static isHermitian(Lorg/ejml/data/CMatrixRMaj;F)Z
    .locals 7

    .line 263
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 266
    :cond_0
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    .line 267
    new-instance v1, Lorg/ejml/data/Complex_F32;

    invoke-direct {v1}, Lorg/ejml/data/Complex_F32;-><init>()V

    move v3, v2

    .line 269
    :goto_0
    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_4

    move v4, v3

    .line 270
    :goto_1
    iget v5, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_3

    .line 271
    invoke-virtual {p0, v3, v4, v0}, Lorg/ejml/data/CMatrixRMaj;->get(IILorg/ejml/data/Complex_F32;)V

    .line 272
    invoke-virtual {p0, v4, v3, v1}, Lorg/ejml/data/CMatrixRMaj;->get(IILorg/ejml/data/Complex_F32;)V

    .line 274
    iget v5, v0, Lorg/ejml/data/Complex_F32;->real:F

    iget v6, v1, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_1

    return v2

    .line 276
    :cond_1
    iget v5, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget v6, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;F)Z
    .locals 7

    .line 191
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    .line 197
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 199
    iget-object v4, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    .line 200
    iget-object v5, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v5, v5, v1

    sub-float v6, v4, v5

    .line 204
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 212
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0

    .line 213
    :cond_2
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_3

    cmpl-float p0, v4, v5

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    return v3

    .line 195
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v2
.end method

.method public static isIdentity(Lorg/ejml/data/CMatrix;F)Z
    .locals 6

    .line 232
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 233
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_5

    move v3, v1

    .line 234
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 235
    invoke-interface {p0, v2, v3, v0}, Lorg/ejml/data/CMatrix;->get(IILorg/ejml/data/Complex_F32;)V

    if-ne v2, v3, :cond_1

    .line 237
    iget v4, v0, Lorg/ejml/data/Complex_F32;->real:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_0

    return v1

    .line 239
    :cond_0
    iget v4, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_3

    return v1

    .line 242
    :cond_1
    iget v4, v0, Lorg/ejml/data/Complex_F32;->real:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_2

    return v1

    .line 244
    :cond_2
    iget v4, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isLowerTriangle(Lorg/ejml/data/CMatrixRMaj;IF)Z
    .locals 7

    mul-float/2addr p2, p2

    const/4 v0, 0x0

    move v1, v0

    .line 401
    :goto_0
    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    add-int/2addr v2, v3

    .line 402
    :goto_1
    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v2, v4, :cond_1

    .line 403
    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 405
    iget-object v5, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v4

    .line 406
    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v4, v3

    aget v4, v6, v4

    mul-float/2addr v5, v5

    mul-float/2addr v4, v4

    add-float/2addr v5, v4

    cmpg-float v4, v5, p2

    if-lez v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isNegative(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;F)Z
    .locals 5

    .line 60
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    if-ne v0, v1, :cond_2

    .line 63
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getNumElements()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 66
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    iget-object v4, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix dimensions must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 340
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 343
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;-><init>(Z)V

    .line 344
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    .line 347
    :cond_1
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static isUnitary(Lorg/ejml/data/CMatrixRMaj;F)Z
    .locals 7

    .line 298
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_5

    .line 302
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v1, 0x0

    .line 304
    invoke-static {p0, v1}, Lorg/ejml/dense/row/CommonOps_CDRM;->columnsToVector(Lorg/ejml/data/CMatrixRMaj;[Lorg/ejml/data/CMatrixRMaj;)[Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 306
    :cond_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 307
    aget-object v3, p0, v2

    .line 309
    invoke-static {v3, v3, v0}, Lorg/ejml/dense/row/mult/VectorVectorMult_CDRM;->innerProdH(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;

    .line 311
    iget v4, v0, Lorg/ejml/data/Complex_F32;->real:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    return v1

    .line 313
    :cond_1
    iget v4, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    .line 316
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 317
    aget-object v5, p0, v4

    invoke-static {v3, v5, v0}, Lorg/ejml/dense/row/mult/VectorVectorMult_CDRM;->innerProdH(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;

    .line 319
    invoke-virtual {v0}, Lorg/ejml/data/Complex_F32;->getMagnitude2()F

    move-result v5

    mul-float v6, p1, p1

    cmpg-float v5, v5, v6

    if-lez v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 299
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isUpperTriangle(Lorg/ejml/data/CMatrixRMaj;IF)Z
    .locals 8

    mul-float/2addr p2, p2

    add-int/lit8 v0, p1, 0x1

    .line 367
    :goto_0
    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    sub-int v1, v0, p1

    .line 368
    iget v3, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 370
    iget v5, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 372
    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v6, v6, v5

    .line 373
    iget-object v7, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v5, v2

    aget v5, v7, v5

    mul-float/2addr v6, v6

    mul-float/2addr v5, v5

    add-float/2addr v6, v5

    cmpg-float v5, v6, p2

    if-lez v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isVector(Lorg/ejml/data/Matrix;)Z
    .locals 2

    .line 44
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isZeros(Lorg/ejml/data/CMatrixD1;F)Z
    .locals 4

    .line 424
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getNumElements()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 427
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

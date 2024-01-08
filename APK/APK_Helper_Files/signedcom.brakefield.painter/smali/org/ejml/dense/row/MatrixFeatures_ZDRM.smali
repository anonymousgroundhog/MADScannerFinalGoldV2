.class public Lorg/ejml/dense/row/MatrixFeatures_ZDRM;
.super Ljava/lang/Object;
.source "MatrixFeatures_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNaN(Lorg/ejml/data/ZMatrixD1;)Z
    .locals 5

    .line 78
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 81
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

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

.method public static hasUncountable(Lorg/ejml/data/ZMatrixD1;)Z
    .locals 6

    .line 94
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 97
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v2

    .line 98
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

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

.method public static isEquals(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)Z
    .locals 7

    .line 120
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 126
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v5, v5, v1

    cmpl-double v3, v3, v5

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

.method public static isEquals(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;D)Z
    .locals 7

    .line 152
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 157
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isEquals(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)Z

    move-result p0

    return p0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 162
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, p2, v3

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

.method public static isHermitian(Lorg/ejml/data/ZMatrixRMaj;D)Z
    .locals 9

    .line 261
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 264
    :cond_0
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 265
    new-instance v1, Lorg/ejml/data/Complex_F64;

    invoke-direct {v1}, Lorg/ejml/data/Complex_F64;-><init>()V

    move v3, v2

    .line 267
    :goto_0
    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_4

    move v4, v3

    .line 268
    :goto_1
    iget v5, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_3

    .line 269
    invoke-virtual {p0, v3, v4, v0}, Lorg/ejml/data/ZMatrixRMaj;->get(IILorg/ejml/data/Complex_F64;)V

    .line 270
    invoke-virtual {p0, v4, v3, v1}, Lorg/ejml/data/ZMatrixRMaj;->get(IILorg/ejml/data/Complex_F64;)V

    .line 272
    iget-wide v5, v0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v7, v1, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, p1

    if-lez v5, :cond_1

    return v2

    .line 274
    :cond_1
    iget-wide v5, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v7, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, p1

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

.method public static isIdentical(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;D)Z
    .locals 10

    .line 189
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_5

    .line 195
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 197
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v1

    .line 198
    iget-object v6, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v6, v6, v1

    sub-double v8, v4, v6

    .line 202
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v8, p2, v8

    if-ltz v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 210
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0

    .line 211
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_3

    cmpl-double p0, v4, v6

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    return v3

    .line 193
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v2
.end method

.method public static isIdentity(Lorg/ejml/data/ZMatrix;D)Z
    .locals 8

    .line 230
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 231
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_5

    move v3, v1

    .line 232
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 233
    invoke-interface {p0, v2, v3, v0}, Lorg/ejml/data/ZMatrix;->get(IILorg/ejml/data/Complex_F64;)V

    if-ne v2, v3, :cond_1

    .line 235
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->real:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-lez v4, :cond_0

    return v1

    .line 237
    :cond_0
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-lez v4, :cond_3

    return v1

    .line 240
    :cond_1
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-lez v4, :cond_2

    return v1

    .line 242
    :cond_2
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p1

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

.method public static isLowerTriangle(Lorg/ejml/data/ZMatrixRMaj;ID)Z
    .locals 9

    mul-double/2addr p2, p2

    const/4 v0, 0x0

    move v1, v0

    .line 399
    :goto_0
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    add-int/2addr v2, v3

    .line 400
    :goto_1
    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v2, v4, :cond_1

    .line 401
    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 403
    iget-object v5, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    .line 404
    iget-object v7, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v4, v3

    aget-wide v7, v7, v4

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    cmpg-double v4, v5, p2

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

.method public static isNegative(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;D)Z
    .locals 7

    .line 58
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-ne v0, v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getNumElements()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 64
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v2

    iget-object v5, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v5, v5, v2

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p2

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix dimensions must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 338
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 341
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;-><init>(Z)V

    .line 342
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    .line 345
    :cond_1
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static isUnitary(Lorg/ejml/data/ZMatrixRMaj;D)Z
    .locals 9

    .line 296
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_5

    .line 300
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v1, 0x0

    .line 302
    invoke-static {p0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->columnsToVector(Lorg/ejml/data/ZMatrixRMaj;[Lorg/ejml/data/ZMatrixRMaj;)[Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 304
    :cond_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 305
    aget-object v3, p0, v2

    .line 307
    invoke-static {v3, v3, v0}, Lorg/ejml/dense/row/mult/VectorVectorMult_ZDRM;->innerProdH(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;

    .line 309
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->real:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, p1

    if-lez v4, :cond_1

    return v1

    .line 311
    :cond_1
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, p1

    if-lez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    .line 314
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 315
    aget-object v5, p0, v4

    invoke-static {v3, v5, v0}, Lorg/ejml/dense/row/mult/VectorVectorMult_ZDRM;->innerProdH(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;

    .line 317
    invoke-virtual {v0}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v5

    mul-double v7, p1, p1

    cmpg-double v5, v5, v7

    if-lez v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 297
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isUpperTriangle(Lorg/ejml/data/ZMatrixRMaj;ID)Z
    .locals 10

    mul-double/2addr p2, p2

    add-int/lit8 v0, p1, 0x1

    .line 365
    :goto_0
    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    sub-int v1, v0, p1

    .line 366
    iget v3, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 368
    iget v5, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 370
    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v5

    .line 371
    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v5, v2

    aget-wide v8, v8, v5

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    cmpg-double v5, v6, p2

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

    .line 42
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

.method public static isZeros(Lorg/ejml/data/ZMatrixD1;D)Z
    .locals 5

    .line 422
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getNumElements()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 425
    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

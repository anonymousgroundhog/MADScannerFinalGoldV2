.class public Lorg/ejml/dense/row/MatrixFeatures_FDRM;
.super Ljava/lang/Object;
.source "MatrixFeatures_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countNonZero(Lorg/ejml/data/FMatrixRMaj;)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 719
    :goto_0
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v4, :cond_2

    move v4, v0

    .line 720
    :goto_1
    iget v5, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_1

    .line 721
    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static hasNaN(Lorg/ejml/data/FMatrixD1;)Z
    .locals 4

    .line 54
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 57
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

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

.method public static hasUncountable(Lorg/ejml/data/FMatrixD1;)Z
    .locals 5

    .line 70
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    .line 74
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

.method public static isConstantVal(Lorg/ejml/data/FMatrixRMaj;FF)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 545
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_2

    move v3, v0

    .line 546
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 547
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isDiagonalPositive(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 562
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    .line 563
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isEquals(Lorg/ejml/data/BMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;)Z
    .locals 5

    .line 411
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 417
    invoke-virtual {p0, v1}, Lorg/ejml/data/BMatrixRMaj;->get(I)Z

    move-result v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/BMatrixRMaj;->get(I)Z

    move-result v4

    if-eq v3, v4, :cond_1

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

.method public static isEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Z
    .locals 5

    .line 381
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 387
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

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

.method public static isEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;F)Z
    .locals 5

    .line 304
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Z

    move-result p0

    return p0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 314
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

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

.method public static isEqualsTriangle(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;ZF)Z
    .locals 6

    .line 340
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    move p2, v2

    .line 345
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ge p2, v1, :cond_6

    move v1, p2

    .line 346
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 347
    invoke-interface {p0, p2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-interface {p1, p2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p3

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v2

    .line 352
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 353
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v2

    :goto_3
    if-gt v3, v1, :cond_5

    .line 356
    invoke-interface {p0, p2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    invoke-interface {p1, p2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p3

    if-lez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return v0

    :cond_7
    :goto_4
    return v2
.end method

.method public static isFullRank(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 571
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;F)Z
    .locals 5

    .line 445
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 451
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 453
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    invoke-static {v3, v4, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 449
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return v2
.end method

.method public static isIdentity(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 519
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 520
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_2

    if-ne v1, v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 522
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-lez v2, :cond_1

    return v0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 525
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-lez v2, :cond_1

    return v0

    :cond_1
    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isInverse(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 9

    .line 261
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 265
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 266
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 272
    invoke-virtual {p0, v3, v6}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v7

    invoke-virtual {p1, v6, v4}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-ne v3, v4, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    .line 276
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-lez v5, :cond_3

    return v2

    .line 278
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-lez v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v2
.end method

.method public static isLowerTriangle(Lorg/ejml/data/FMatrixRMaj;IF)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 643
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    add-int/2addr v2, v3

    .line 644
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_1

    .line 645
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-lez v3, :cond_0

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

.method public static isNegative(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;F)Z
    .locals 5

    .line 587
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v1, :cond_2

    .line 590
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 593
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

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

    .line 588
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix dimensions must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 5

    .line 470
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->columnsToVector(Lorg/ejml/data/FMatrixRMaj;[Lorg/ejml/data/FMatrixRMaj;)[Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 476
    :cond_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 477
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 479
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 480
    aget-object v4, p0, v3

    invoke-static {v2, v4}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result v4

    .line 482
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 471
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 119
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isSquare(Lorg/ejml/data/FMatrixD1;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 122
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;-><init>(Z)V

    .line 123
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 126
    :cond_1
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static isPositiveSemidefinite(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 5

    .line 142
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isSquare(Lorg/ejml/data/FMatrixD1;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->inputModified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 148
    :cond_1
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move v2, v1

    .line 150
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_3

    .line 151
    invoke-interface {v0, v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Lorg/ejml/data/Complex_F32;->getReal()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isRowsLinearIndependent(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 498
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 502
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 506
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->isSingular()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 503
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Decompositon failed?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSkewSymmetric(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 5

    .line 236
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 239
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_3

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 241
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    .line 242
    invoke-virtual {p0, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    add-float/2addr v3, v4

    .line 244
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isSquare(Lorg/ejml/data/FMatrixD1;)Z
    .locals 1

    .line 168
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget p0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSymmetric(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isSymmetric(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p0

    return p0
.end method

.method public static isSymmetric(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 6

    .line 186
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 189
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    move v1, v2

    .line 191
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 193
    invoke-virtual {p0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    div-float/2addr v4, v0

    .line 194
    invoke-virtual {p0, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v5

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 196
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-lez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isUpperTriangle(Lorg/ejml/data/FMatrixRMaj;IF)Z
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 616
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    sub-int v1, v0, p1

    .line 617
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 619
    invoke-virtual {p0, v0, v3}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-lez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isVector(Lorg/ejml/data/Matrix;)Z
    .locals 2

    .line 103
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

.method public static isZeros(Lorg/ejml/data/FMatrixD1;F)Z
    .locals 4

    .line 87
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 90
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

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

.method public static nullity(Lorg/ejml/data/FMatrixRMaj;)I
    .locals 2

    .line 689
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {p0, v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->nullity(Lorg/ejml/data/FMatrixRMaj;F)I

    move-result p0

    return p0
.end method

.method public static nullity(Lorg/ejml/data/FMatrixRMaj;F)I
    .locals 4

    .line 700
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 705
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 708
    invoke-static {v0, p1}, Lorg/ejml/dense/row/SingularOps_FDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result p0

    return p0

    .line 706
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Decomposition failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/FMatrixRMaj;)I
    .locals 2

    .line 660
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {p0, v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->rank(Lorg/ejml/data/FMatrixRMaj;F)I

    move-result p0

    return p0
.end method

.method public static rank(Lorg/ejml/data/FMatrixRMaj;F)I
    .locals 4

    .line 671
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 676
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 679
    invoke-static {v0, p1}, Lorg/ejml/dense/row/SingularOps_FDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result p0

    return p0

    .line 677
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Decomposition failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

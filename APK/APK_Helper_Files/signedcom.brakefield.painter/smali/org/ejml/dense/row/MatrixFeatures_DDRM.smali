.class public Lorg/ejml/dense/row/MatrixFeatures_DDRM;
.super Ljava/lang/Object;
.source "MatrixFeatures_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countNonZero(Lorg/ejml/data/DMatrixRMaj;)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 717
    :goto_0
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v4, :cond_2

    move v4, v0

    .line 718
    :goto_1
    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_1

    .line 719
    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

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

.method public static hasNaN(Lorg/ejml/data/DMatrixD1;)Z
    .locals 5

    .line 52
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 55
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

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

.method public static hasUncountable(Lorg/ejml/data/DMatrixD1;)Z
    .locals 6

    .line 68
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 71
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    .line 72
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

.method public static isConstantVal(Lorg/ejml/data/DMatrixRMaj;DD)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 543
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_2

    move v3, v0

    .line 544
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 545
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v5

    sub-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p3

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

.method public static isDiagonalPositive(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 560
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    .line 561
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

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

    .line 409
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 415
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

.method public static isEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Z
    .locals 7

    .line 379
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 385
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

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

.method public static isEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;D)Z
    .locals 7

    .line 302
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 307
    invoke-static {p0, p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Z

    move-result p0

    return p0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 312
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

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

.method public static isEqualsTriangle(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;ZD)Z
    .locals 8

    .line 338
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    move p2, v2

    .line 343
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ge p2, v1, :cond_6

    move v1, p2

    .line 344
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 345
    invoke-interface {p0, p2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-interface {p1, p2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p3

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

    .line 350
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 351
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v2

    :goto_3
    if-gt v3, v1, :cond_5

    .line 354
    invoke-interface {p0, p2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    invoke-interface {p1, p2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, p3

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

.method public static isFullRank(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 1

    .line 569
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;D)Z
    .locals 9

    .line 443
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_3

    .line 449
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 451
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 447
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return v2
.end method

.method public static isIdentity(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 517
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 518
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_2

    if-ne v1, v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 520
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p1

    if-lez v2, :cond_1

    return v0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 523
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p1

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

.method public static isInverse(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 12

    .line 259
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 263
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 264
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v1, :cond_1

    .line 270
    invoke-virtual {p0, v3, v7}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v8

    invoke-virtual {p1, v7, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-ne v3, v4, :cond_2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    .line 274
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p2

    if-lez v5, :cond_3

    return v2

    .line 276
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p2

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

.method public static isLowerTriangle(Lorg/ejml/data/DMatrixRMaj;ID)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 641
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    add-int/2addr v2, v3

    .line 642
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_1

    .line 643
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p2

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

.method public static isNegative(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;D)Z
    .locals 7

    .line 585
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v1, :cond_2

    .line 588
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 591
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

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

    .line 586
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix dimensions must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 6

    .line 468
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 472
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->columnsToVector(Lorg/ejml/data/DMatrixRMaj;[Lorg/ejml/data/DMatrixRMaj;)[Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 474
    :cond_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 475
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 477
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 478
    aget-object v4, p0, v3

    invoke-static {v2, v4}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v4

    .line 480
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-lez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 469
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 117
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isSquare(Lorg/ejml/data/DMatrixD1;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;-><init>(Z)V

    .line 121
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 124
    :cond_1
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static isPositiveSemidefinite(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 7

    .line 140
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isSquare(Lorg/ejml/data/DMatrixD1;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->inputModified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 146
    :cond_1
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move v2, v1

    .line 148
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_3

    .line 149
    invoke-interface {v0, v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lorg/ejml/data/Complex_F64;->getReal()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isRowsLinearIndependent(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 496
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 500
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 504
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/LUDecomposition;->isSingular()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 501
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Decompositon failed?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSkewSymmetric(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 7

    .line 234
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 237
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_3

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 239
    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    .line 240
    invoke-virtual {p0, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p1

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

.method public static isSquare(Lorg/ejml/data/DMatrixD1;)Z
    .locals 1

    .line 166
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget p0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSymmetric(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 217
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isSymmetric(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p0

    return p0
.end method

.method public static isSymmetric(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 9

    .line 184
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 187
    :cond_0
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    move v3, v2

    .line 189
    :goto_0
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 191
    invoke-virtual {p0, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    div-double/2addr v5, v0

    .line 192
    invoke-virtual {p0, v4, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    div-double/2addr v7, v0

    sub-double/2addr v5, v7

    .line 194
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p1

    if-lez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isUpperTriangle(Lorg/ejml/data/DMatrixRMaj;ID)Z
    .locals 6

    add-int/lit8 v0, p1, 0x1

    .line 614
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    sub-int v1, v0, p1

    .line 615
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 617
    invoke-virtual {p0, v0, v3}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p2

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

    .line 101
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

.method public static isZeros(Lorg/ejml/data/DMatrixD1;D)Z
    .locals 5

    .line 85
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

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

.method public static nullity(Lorg/ejml/data/DMatrixRMaj;)I
    .locals 4

    .line 687
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->nullity(Lorg/ejml/data/DMatrixRMaj;D)I

    move-result p0

    return p0
.end method

.method public static nullity(Lorg/ejml/data/DMatrixRMaj;D)I
    .locals 4

    .line 698
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 703
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 706
    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/SingularOps_DDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result p0

    return p0

    .line 704
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Decomposition failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/DMatrixRMaj;)I
    .locals 4

    .line 658
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->rank(Lorg/ejml/data/DMatrixRMaj;D)I

    move-result p0

    return p0
.end method

.method public static rank(Lorg/ejml/data/DMatrixRMaj;D)I
    .locals 4

    .line 669
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 671
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 674
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 677
    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/SingularOps_DDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result p0

    return p0

    .line 675
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Decomposition failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

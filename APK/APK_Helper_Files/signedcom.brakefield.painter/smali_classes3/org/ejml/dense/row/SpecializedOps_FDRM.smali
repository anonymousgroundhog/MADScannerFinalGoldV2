.class public Lorg/ejml/dense/row/SpecializedOps_FDRM;
.super Ljava/lang/Object;
.source "SpecializedOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V
    .locals 6

    .line 281
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_4

    .line 283
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_3

    .line 286
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_1

    if-ne v2, v4, :cond_0

    .line 292
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v5

    add-float/2addr v5, p2

    invoke-virtual {p1, v3, v5}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    goto :goto_2

    .line 294
    :cond_0
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v5

    invoke-virtual {p1, v3, v5}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 284
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "B must be the same shape as A"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be square"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyChangeRow([ILorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    if-nez p2, :cond_0

    .line 101
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    .line 106
    :goto_1
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 107
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    .line 108
    aget v2, p0, v0

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    .line 110
    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p2

    .line 103
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "src and dst must have the same dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyTriangle(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-nez p1, :cond_0

    .line 126
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 127
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 132
    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 134
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 135
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sub-int/2addr v4, v0

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_1
    :goto_2
    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, p2, :cond_2

    add-int/lit8 p2, v0, 0x1

    .line 139
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 140
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    .line 141
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p2

    goto :goto_2

    :cond_2
    return-object p1

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "src and dst must have the same dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 54
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_FDRM;->fastNormF(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v0

    div-float/2addr v1, v0

    .line 60
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix1Row;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->identity(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    .line 61
    invoke-static {v1, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object v0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u must be a vector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/FMatrixRMaj;F)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 83
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->identity(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    neg-float p1, p1

    .line 87
    invoke-static {p1, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object v0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "u must be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diagProd(Lorg/ejml/data/FMatrix1Row;)F
    .locals 4

    .line 406
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 408
    invoke-virtual {p0, v2, v2}, Lorg/ejml/data/FMatrix1Row;->unsafe_get(II)F

    move-result v3

    mul-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static diffNormF(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 210
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    .line 216
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 211
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diffNormF_fast(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 225
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double p0, v1

    .line 236
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diffNormP1(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 256
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 264
    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiagonalMaxAbs(Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 425
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 429
    invoke-virtual {p0, v2, v2}, Lorg/ejml/data/FMatrixD1;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementSumSq(Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 475
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 483
    iget-object v4, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v4, v4, v3

    div-float/2addr v4, v0

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public static multLowerTranA(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 8

    .line 175
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 176
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-lt v3, v2, :cond_1

    const/4 v4, 0x0

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_0

    mul-int v6, v5, v0

    add-int v7, v6, v2

    .line 181
    aget v7, p0, v7

    add-int/2addr v6, v3

    aget v6, p0, v6

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    mul-int v5, v2, v0

    add-int/2addr v5, v3

    .line 183
    aput v4, p0, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_3

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    .line 189
    aget v5, p0, v5

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static multLowerTranB(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 8

    .line 152
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 153
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-lt v3, v2, :cond_1

    const/4 v4, 0x0

    move v5, v1

    :goto_2
    if-gt v5, v2, :cond_0

    mul-int v6, v2, v0

    add-int/2addr v6, v5

    .line 158
    aget v6, p0, v6

    mul-int v7, v3, v0

    add-int/2addr v7, v5

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    mul-int v5, v2, v0

    add-int/2addr v5, v3

    .line 160
    aput v4, p0, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_3

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    .line 166
    aget v5, p0, v5

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static pivotMatrix(Lorg/ejml/data/FMatrixRMaj;[IIZ)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-nez p0, :cond_0

    .line 377
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 379
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, p2, :cond_3

    const/4 v0, 0x0

    .line 381
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :goto_1
    if-ge v1, p2, :cond_2

    .line 386
    aget p3, p1, v1

    invoke-virtual {p0, p3, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 390
    aget p3, p1, v1

    invoke-virtual {p0, v1, p3, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p0

    .line 380
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static qualityTriangular(Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 449
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    invoke-static {p0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->elementDiagonalMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 459
    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/FMatrixD1;->unsafe_get(II)F

    move-result v4

    div-float/2addr v4, v1

    mul-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static splitIntoVectors(Lorg/ejml/data/FMatrix1Row;Z)[Lorg/ejml/data/FMatrixRMaj;
    .locals 14

    if-eqz p1, :cond_0

    .line 335
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 337
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    .line 340
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 342
    new-array v11, v0, [Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    move v12, v3

    :goto_3
    if-ge v12, v0, :cond_4

    .line 345
    new-instance v13, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v13, v2, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v12

    move v6, v10

    move-object v9, v13

    .line 348
    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v12

    move v6, v10

    move-object v9, v13

    .line 350
    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    .line 352
    :goto_4
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    return-object v11
.end method

.method public static subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int p4, p5, v0

    add-int v1, p2, v0

    .line 318
    invoke-virtual {p0, p1, v1}, Lorg/ejml/data/FMatrix1Row;->get(II)F

    move-result v1

    invoke-virtual {p6, p4, v1}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    add-int p4, p5, v0

    add-int v1, p1, v0

    .line 322
    invoke-virtual {p0, v1, p2}, Lorg/ejml/data/FMatrix1Row;->get(II)F

    move-result v1

    invoke-virtual {p6, p4, v1}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

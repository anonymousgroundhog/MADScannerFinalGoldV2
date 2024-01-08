.class public Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;
.super Ljava/lang/Object;
.source "VectorVectorMult_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterProd(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrix1Row;)V
    .locals 10

    .line 190
    iget v0, p3, Lorg/ejml/data/FMatrix1Row;->numRows:I

    .line 191
    iget v1, p3, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move p0, v3

    move v2, p0

    :goto_0
    if-ge p0, v0, :cond_3

    .line 196
    invoke-virtual {p1, p0}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 198
    invoke-virtual {p2, v5}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {p3, v2, v7}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    move v4, v2

    :goto_2
    if-ge v2, v0, :cond_3

    .line 203
    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v5

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_2

    add-int/lit8 v7, v4, 0x1

    mul-float v8, p0, v5

    .line 205
    invoke-virtual {p2, v6}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {p3, v4, v8}, Lorg/ejml/data/FMatrix1Row;->plus(IF)F

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static householder(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 6

    .line 228
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 232
    invoke-virtual {p1, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    invoke-virtual {p2, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 235
    invoke-virtual {p2, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    mul-float/2addr v4, p0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p3, v2, v3}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static innerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 5

    .line 52
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static innerProdA(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 10

    .line 73
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    .line 74
    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    .line 76
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 78
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_1

    move v6, v2

    move v7, v3

    :goto_1
    if-ge v6, v0, :cond_0

    .line 87
    invoke-virtual {p0, v6}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v8

    invoke-virtual {p1, v6, v4}, Lorg/ejml/data/FMatrixD1;->unsafe_get(II)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p2, v4}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in y"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static innerProdTranA(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 9

    .line 108
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    .line 110
    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ne v0, v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 115
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v5, v1

    move v6, v2

    :goto_1
    if-ge v5, v0, :cond_0

    .line 124
    invoke-virtual {p0, v5}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v7

    invoke-virtual {p1, v3, v5}, Lorg/ejml/data/FMatrixD1;->unsafe_get(II)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {p2, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v5

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in y"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected number of elements in x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be square"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static outerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrix1Row;)V
    .locals 9

    .line 155
    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    .line 156
    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 160
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 162
    invoke-virtual {p1, v6}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v8

    mul-float/2addr v8, v5

    invoke-virtual {p2, v4, v8}, Lorg/ejml/data/FMatrix1Row;->set(IF)F

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(FLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    .line 290
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 294
    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_0

    .line 297
    iget-object v6, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v7, v3, 0x1

    aget v8, v6, v3

    mul-float v9, p0, v4

    iget-object v10, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(FLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 10

    .line 260
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 264
    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_0

    .line 267
    iget-object v6, p4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v7, v7, v3

    mul-float v8, p0, v4

    iget-object v9, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.class public Lorg/ejml/dense/row/misc/TransposeAlgs_CDRM;
.super Ljava/lang/Object;
.source "TransposeAlgs_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static square(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 12

    .line 39
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move v4, v0

    move v3, v1

    .line 41
    :goto_0
    iget v5, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    mul-int v6, v5, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v2

    :goto_1
    if-ge v3, v4, :cond_0

    .line 46
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v3

    .line 47
    iget-object v7, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    .line 49
    iget-object v9, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v10, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v10, v6

    aput v10, v9, v3

    .line 50
    iget-object v9, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v10, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    aput v10, v9, v8

    .line 51
    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v2, v8, v6

    .line 52
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v7, v2, v11

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v5, 0x1

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    add-int/2addr v4, v0

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static squareConjugate(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 12

    .line 59
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move v4, v0

    move v3, v1

    .line 61
    :goto_0
    iget v5, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v5, :cond_1

    .line 64
    iget-object v5, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v7, v7, v6

    neg-float v7, v7

    aput v7, v5, v6

    add-int/lit8 v5, v2, 0x1

    mul-int v6, v5, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v2

    :goto_1
    if-ge v3, v4, :cond_0

    .line 68
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v3

    .line 69
    iget-object v7, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    .line 71
    iget-object v9, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v10, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v10, v6

    aput v10, v9, v3

    .line 72
    iget-object v9, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v10, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    neg-float v10, v10

    aput v10, v9, v8

    .line 73
    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v2, v8, v6

    .line 74
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    neg-float v7, v7

    aput v7, v2, v11

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v5, 0x1

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    add-int/2addr v4, v0

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standard(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 10

    .line 87
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 89
    :goto_0
    iget v4, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    .line 94
    iget-object v6, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v8, v8, v4

    aput v8, v6, v3

    .line 95
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v7, 0x1

    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v3, v7

    add-int/2addr v4, v1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standardConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 10

    .line 109
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 111
    :goto_0
    iget v4, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    .line 116
    iget-object v6, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v8, v8, v4

    aput v8, v6, v3

    .line 117
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v7, 0x1

    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    neg-float v8, v8

    aput v8, v3, v7

    add-int/2addr v4, v1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

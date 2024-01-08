.class public Lorg/ejml/dense/row/mult/VectorVectorMult_CDRM;
.super Ljava/lang/Object;
.source "VectorVectorMult_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProd(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 9

    if-nez p2, :cond_0

    .line 52
    new-instance p2, Lorg/ejml/data/Complex_F32;

    invoke-direct {p2}, Lorg/ejml/data/Complex_F32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput v0, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v1

    .line 61
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 63
    iget-object v5, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v1

    .line 64
    iget-object v6, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v4, v6, v4

    .line 66
    iget v6, p2, Lorg/ejml/data/Complex_F32;->real:F

    mul-float v7, v2, v5

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 67
    iget v6, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v2, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    add-float/2addr v6, v2

    iput v6, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public static innerProdH(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 9

    if-nez p2, :cond_0

    .line 93
    new-instance p2, Lorg/ejml/data/Complex_F32;

    invoke-direct {p2}, Lorg/ejml/data/Complex_F32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput v0, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 98
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 101
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v1

    .line 102
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 104
    iget-object v5, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v1

    .line 105
    iget-object v6, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v4, v6, v4

    neg-float v4, v4

    .line 107
    iget v6, p2, Lorg/ejml/data/Complex_F32;->real:F

    mul-float v7, v2, v5

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 108
    iget v6, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v2, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    add-float/2addr v6, v2

    iput v6, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public static outerProd(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 131
    iget v3, v2, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 132
    iget v4, v2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    .line 136
    iget-object v8, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v9, v6, 0x2

    aget v8, v8, v9

    .line 137
    iget-object v10, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v9, 0x1

    aget v9, v10, v9

    move v10, v5

    move v11, v10

    :goto_1
    if-ge v10, v4, :cond_0

    .line 141
    iget-object v12, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v13, v11, 0x1

    aget v11, v12, v11

    .line 142
    iget-object v12, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    .line 144
    iget-object v13, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v15, v7, 0x1

    mul-float v16, v8, v11

    mul-float v17, v9, v12

    sub-float v16, v16, v17

    aput v16, v13, v7

    .line 145
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v13, v15, 0x1

    mul-float/2addr v12, v8

    mul-float/2addr v11, v9

    add-float/2addr v12, v11

    aput v12, v7, v15

    add-int/lit8 v10, v10, 0x1

    move v7, v13

    move v11, v14

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static outerProdH(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 167
    iget v3, v2, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 168
    iget v4, v2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    .line 172
    iget-object v8, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v9, v6, 0x2

    aget v8, v8, v9

    .line 173
    iget-object v10, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v9, 0x1

    aget v9, v10, v9

    move v10, v5

    move v11, v10

    :goto_1
    if-ge v10, v4, :cond_0

    .line 177
    iget-object v12, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v13, v11, 0x1

    aget v11, v12, v11

    .line 178
    iget-object v12, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    neg-float v12, v12

    .line 180
    iget-object v13, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v15, v7, 0x1

    mul-float v16, v8, v11

    mul-float v17, v9, v12

    sub-float v16, v16, v17

    aput v16, v13, v7

    .line 181
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v13, v15, 0x1

    mul-float/2addr v12, v8

    mul-float/2addr v11, v9

    add-float/2addr v12, v11

    aput v12, v7, v15

    add-int/lit8 v10, v10, 0x1

    move v7, v13

    move v11, v14

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

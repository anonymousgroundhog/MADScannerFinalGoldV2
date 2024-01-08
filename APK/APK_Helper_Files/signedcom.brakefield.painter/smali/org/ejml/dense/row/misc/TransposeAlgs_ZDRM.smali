.class public Lorg/ejml/dense/row/misc/TransposeAlgs_ZDRM;
.super Ljava/lang/Object;
.source "TransposeAlgs_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static square(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v5, v1

    move v4, v2

    .line 39
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v3, v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    mul-int v7, v6, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    :goto_1
    if-ge v4, v5, :cond_0

    .line 44
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v3, v4

    .line 45
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, v3, v10

    .line 47
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v13, v7

    aput-wide v13, v3, v4

    .line 48
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v15, v13, v14

    aput-wide v15, v3, v10

    .line 49
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v8, v3, v7

    .line 50
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v11, v3, v14

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v7, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v6, 0x1

    mul-int/2addr v3, v2

    add-int/2addr v4, v3

    add-int/2addr v5, v1

    move v3, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static squareConjugate(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v5, v1

    move v4, v2

    .line 59
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v3, v6, :cond_1

    .line 62
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v4, -0x1

    iget-object v8, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v8, v7

    neg-double v8, v8

    aput-wide v8, v6, v7

    add-int/lit8 v6, v3, 0x1

    mul-int v7, v6, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    :goto_1
    if-ge v4, v5, :cond_0

    .line 66
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v3, v4

    .line 67
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, v3, v10

    .line 69
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v13, v7

    aput-wide v13, v3, v4

    .line 70
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v7, 0x1

    move v15, v5

    move/from16 v16, v6

    aget-wide v5, v13, v14

    neg-double v5, v5

    aput-wide v5, v3, v10

    .line 71
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v8, v3, v7

    .line 72
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    neg-double v5, v11

    aput-wide v5, v3, v14

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v7, v1

    move v5, v15

    move/from16 v6, v16

    goto :goto_1

    :cond_0
    move v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v16, 0x1

    mul-int/2addr v6, v2

    add-int/2addr v4, v6

    add-int v5, v15, v1

    move/from16 v3, v16

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standard(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 10

    .line 85
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 87
    :goto_0
    iget v4, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    .line 92
    iget-object v6, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v8, v4

    aput-wide v8, v6, v3

    .line 93
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v7, 0x1

    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v4, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v3, v7

    add-int/2addr v4, v1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standardConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 10

    .line 107
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 109
    :goto_0
    iget v4, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    .line 114
    iget-object v6, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v8, v4

    aput-wide v8, v6, v3

    .line 115
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v7, 0x1

    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v4, 0x1

    aget-wide v8, v8, v9

    neg-double v8, v8

    aput-wide v8, v3, v7

    add-int/2addr v4, v1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

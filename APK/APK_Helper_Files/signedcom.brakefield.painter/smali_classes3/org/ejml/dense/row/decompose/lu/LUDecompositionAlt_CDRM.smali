.class public Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;
.super Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;
.source "LUDecompositionAlt_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;-><init>()V

    return-void
.end method

.method private static mag([FI)F
    .locals 1

    .line 138
    aget v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 139
    aget p0, p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 45
    invoke-virtual/range {p0 .. p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->decomposeCommonInit(Lorg/ejml/data/CMatrixRMaj;)V

    .line 47
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->vv:[F

    const/4 v2, 0x0

    move v3, v2

    .line 49
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->n:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_a

    move v4, v2

    .line 52
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->m:I

    if-ge v4, v6, :cond_0

    mul-int/lit8 v6, v4, 0x2

    .line 53
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v8, v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    aget v7, v7, v8

    aput v7, v1, v6

    add-int/2addr v6, v5

    .line 54
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    aget v7, v7, v8

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    .line 58
    :goto_2
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->m:I

    const/4 v7, 0x0

    if-ge v4, v6, :cond_3

    .line 59
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v6, v4

    if-ge v4, v3, :cond_1

    move v8, v4

    goto :goto_3

    :cond_1
    move v8, v3

    :goto_3
    move v10, v2

    move v9, v7

    :goto_4
    if-ge v10, v8, :cond_2

    .line 67
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    mul-int/lit8 v12, v10, 0x2

    add-int v13, v6, v12

    aget v11, v11, v13

    .line 68
    iget-object v14, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    add-int/2addr v13, v5

    aget v13, v14, v13

    .line 70
    aget v14, v1, v12

    add-int/2addr v12, v5

    .line 71
    aget v12, v1, v12

    mul-float v15, v11, v14

    mul-float v16, v13, v12

    sub-float v15, v15, v16

    add-float/2addr v7, v15

    mul-float/2addr v11, v12

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 77
    :cond_2
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    mul-int/lit8 v10, v3, 0x2

    add-int/2addr v6, v10

    mul-int/lit8 v10, v4, 0x2

    aget v11, v1, v10

    sub-float/2addr v11, v7

    aput v11, v1, v10

    aput v11, v8, v6

    .line 78
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    add-int/2addr v6, v5

    add-int/2addr v10, v5

    aget v8, v1, v10

    sub-float/2addr v8, v9

    aput v8, v1, v10

    aput v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v4, v3, 0x2

    .line 83
    invoke-static {v1, v4}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->mag([FI)F

    move-result v6

    add-int/lit8 v8, v3, 0x1

    move v10, v3

    move v9, v8

    .line 84
    :goto_5
    iget v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->m:I

    if-ge v9, v11, :cond_5

    mul-int/lit8 v11, v9, 0x2

    .line 85
    invoke-static {v1, v11}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->mag([FI)F

    move-result v11

    cmpl-float v12, v11, v6

    if-lez v12, :cond_4

    move v10, v9

    move v6, v11

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    if-eq v10, v3, :cond_7

    .line 99
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v6, v10

    .line 100
    iget v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v9, v3

    .line 101
    iget v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    add-int/2addr v11, v6

    :goto_6
    if-ge v6, v11, :cond_6

    .line 103
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    aget v12, v12, v6

    .line 104
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget-object v14, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    aget v14, v14, v9

    aput v14, v13, v6

    .line 105
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    aput v12, v13, v9

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v5

    goto :goto_6

    .line 107
    :cond_6
    iget-object v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivot:[I

    aget v6, v6, v10

    .line 108
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivot:[I

    iget-object v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivot:[I

    aget v11, v11, v3

    aput v11, v9, v10

    .line 109
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivot:[I

    aput v6, v9, v3

    .line 110
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivsign:F

    neg-float v6, v6

    iput v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->pivsign:F

    .line 112
    :cond_7
    iget-object v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->indx:[I

    aput v10, v6, v3

    .line 115
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->m:I

    if-ge v3, v6, :cond_9

    .line 116
    iget-object v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v4

    aget v6, v6, v9

    .line 117
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v10, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v3, v10

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    aget v3, v9, v3

    mul-float v9, v6, v6

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    cmpl-float v10, v6, v7

    if-nez v10, :cond_8

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_9

    :cond_8
    move v7, v8

    .line 122
    :goto_7
    iget v10, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->m:I

    if-ge v7, v10, :cond_9

    .line 124
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v11, v7

    add-int/2addr v11, v4

    aget v10, v10, v11

    .line 125
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v12, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v12, v7

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    aget v11, v11, v12

    .line 127
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v13, v7

    add-int/2addr v13, v4

    mul-float v14, v10, v6

    mul-float v15, v11, v3

    add-float/2addr v14, v15

    div-float/2addr v14, v9

    aput v14, v12, v13

    .line 128
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->dataLU:[F

    iget v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->stride:I

    mul-int/2addr v13, v7

    add-int/2addr v13, v4

    add-int/2addr v13, v5

    mul-float/2addr v11, v6

    mul-float/2addr v10, v3

    sub-float/2addr v11, v10

    div-float/2addr v11, v9

    aput v11, v12, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    move v3, v8

    goto/16 :goto_0

    :cond_a
    return v5
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

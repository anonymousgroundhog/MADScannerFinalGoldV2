.class public Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;
.super Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;
.source "LUDecompositionAlt_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;-><init>()V

    return-void
.end method

.method private static mag([DI)D
    .locals 2

    .line 136
    aget-wide v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 137
    aget-wide p0, p0, p1

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 26

    move-object/from16 v0, p0

    .line 43
    invoke-virtual/range {p0 .. p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->decomposeCommonInit(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 45
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->vv:[D

    const/4 v3, 0x0

    .line 47
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->n:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_a

    const/4 v4, 0x0

    .line 50
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->m:I

    if-ge v4, v6, :cond_0

    mul-int/lit8 v6, v4, 0x2

    .line 51
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v8, v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    aget-wide v7, v7, v8

    aput-wide v7, v1, v6

    add-int/2addr v6, v5

    .line 52
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    aget-wide v7, v7, v8

    aput-wide v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 56
    :goto_2
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->m:I

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_3

    .line 57
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v6, v4

    if-ge v4, v3, :cond_1

    move v9, v4

    goto :goto_3

    :cond_1
    move v9, v3

    :goto_3
    move-wide v10, v7

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_2

    .line 65
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    mul-int/lit8 v14, v12, 0x2

    add-int v15, v6, v14

    aget-wide v16, v13, v15

    .line 66
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    add-int/2addr v15, v5

    aget-wide v18, v13, v15

    .line 68
    aget-wide v20, v1, v14

    add-int/2addr v14, v5

    .line 69
    aget-wide v13, v1, v14

    mul-double v22, v16, v20

    mul-double v24, v18, v13

    sub-double v22, v22, v24

    add-double v7, v7, v22

    mul-double v16, v16, v13

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-double v10, v10, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 75
    :cond_2
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    mul-int/lit8 v12, v3, 0x2

    add-int/2addr v6, v12

    mul-int/lit8 v12, v4, 0x2

    aget-wide v13, v1, v12

    sub-double/2addr v13, v7

    aput-wide v13, v1, v12

    aput-wide v13, v9, v6

    .line 76
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    add-int/2addr v6, v5

    add-int/2addr v12, v5

    aget-wide v8, v1, v12

    sub-double/2addr v8, v10

    aput-wide v8, v1, v12

    aput-wide v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v4, v3, 0x2

    .line 81
    invoke-static {v1, v4}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->mag([DI)D

    move-result-wide v9

    add-int/lit8 v6, v3, 0x1

    move v12, v3

    move v11, v6

    .line 82
    :goto_5
    iget v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->m:I

    if-ge v11, v13, :cond_5

    mul-int/lit8 v13, v11, 0x2

    .line 83
    invoke-static {v1, v13}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->mag([DI)D

    move-result-wide v13

    cmpl-double v15, v13, v9

    if-lez v15, :cond_4

    move v12, v11

    move-wide v9, v13

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    if-eq v12, v3, :cond_7

    .line 97
    iget v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v9, v12

    .line 98
    iget v10, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v10, v3

    .line 99
    iget v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    add-int/2addr v11, v9

    :goto_6
    if-ge v9, v11, :cond_6

    .line 101
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    aget-wide v13, v13, v9

    .line 102
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    aget-wide v16, v2, v10

    aput-wide v16, v15, v9

    .line 103
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    aput-wide v13, v2, v10

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v5

    goto :goto_6

    .line 105
    :cond_6
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivot:[I

    aget v2, v2, v12

    .line 106
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivot:[I

    iget-object v10, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivot:[I

    aget v10, v10, v3

    aput v10, v9, v12

    .line 107
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivot:[I

    aput v2, v9, v3

    .line 108
    iget-wide v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivsign:D

    neg-double v9, v9

    iput-wide v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->pivsign:D

    .line 110
    :cond_7
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->indx:[I

    aput v12, v2, v3

    .line 113
    iget v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->m:I

    if-ge v3, v2, :cond_9

    .line 114
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v9, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v4

    aget-wide v9, v2, v9

    .line 115
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v3, v11

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    aget-wide v2, v2, v3

    mul-double v11, v9, v9

    mul-double v13, v2, v2

    add-double/2addr v11, v13

    cmpl-double v13, v9, v7

    if-nez v13, :cond_8

    cmpl-double v7, v2, v7

    if-eqz v7, :cond_9

    :cond_8
    move v7, v6

    .line 120
    :goto_7
    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->m:I

    if-ge v7, v8, :cond_9

    .line 122
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v13, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v13, v7

    add-int/2addr v13, v4

    aget-wide v13, v8, v13

    .line 123
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v15, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v15, v7

    add-int/2addr v15, v4

    add-int/2addr v15, v5

    aget-wide v15, v8, v15

    .line 125
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v5, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    mul-double v18, v13, v9

    mul-double v20, v15, v2

    add-double v18, v18, v20

    div-double v18, v18, v11

    aput-wide v18, v8, v5

    .line 126
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->dataLU:[D

    iget v8, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->stride:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v4

    const/16 v17, 0x1

    add-int/lit8 v8, v8, 0x1

    mul-double/2addr v15, v9

    mul-double/2addr v13, v2

    sub-double/2addr v15, v13

    div-double/2addr v15, v11

    aput-wide v15, v5, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    move v3, v6

    goto/16 :goto_0

    :cond_a
    move v2, v5

    return v2
.end method

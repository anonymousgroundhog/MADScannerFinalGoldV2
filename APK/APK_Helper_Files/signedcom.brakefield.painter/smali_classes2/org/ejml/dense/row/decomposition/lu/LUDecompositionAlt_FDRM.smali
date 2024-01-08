.class public Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;
.super Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;
.source "LUDecompositionAlt_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 12

    .line 45
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->decomposeCommonInit(Lorg/ejml/data/FMatrixRMaj;)V

    .line 47
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->vv:[F

    const/4 v0, 0x0

    move v1, v0

    .line 49
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_9

    move v2, v0

    .line 52
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->m:I

    if-ge v2, v4, :cond_0

    .line 53
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 57
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->m:I

    const/4 v5, 0x0

    if-ge v2, v4, :cond_3

    .line 58
    iget v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v4, v2

    if-ge v2, v1, :cond_1

    move v6, v2

    goto :goto_3

    :cond_1
    move v6, v1

    :goto_3
    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_2

    .line 64
    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    add-int v9, v4, v7

    aget v8, v8, v9

    aget v9, p1, v7

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 67
    :cond_2
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    add-int/2addr v4, v1

    aget v7, p1, v2

    sub-float/2addr v7, v5

    aput v7, p1, v2

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72
    :cond_3
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-int/lit8 v4, v1, 0x1

    move v7, v1

    move v6, v4

    .line 73
    :goto_5
    iget v8, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->m:I

    if-ge v6, v8, :cond_5

    .line 74
    aget v8, p1, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v9, v8, v2

    if-lez v9, :cond_4

    move v7, v6

    move v2, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    if-eq v7, v1, :cond_7

    .line 88
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v2, v7

    .line 89
    iget v6, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v6, v1

    .line 90
    iget v8, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    add-int/2addr v8, v2

    :goto_6
    if-ge v2, v8, :cond_6

    .line 92
    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    aget v9, v9, v2

    .line 93
    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    iget-object v11, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    aget v11, v11, v6

    aput v11, v10, v2

    .line 94
    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    aput v9, v10, v6

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v6, v3

    goto :goto_6

    .line 96
    :cond_6
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivot:[I

    aget v2, v2, v7

    .line 97
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivot:[I

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivot:[I

    aget v6, v6, v1

    aput v6, v3, v7

    .line 98
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivot:[I

    aput v2, v3, v1

    .line 99
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivsign:F

    neg-float v2, v2

    iput v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->pivsign:F

    .line 101
    :cond_7
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->indx:[I

    aput v7, v2, v1

    .line 104
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->m:I

    if-ge v1, v2, :cond_8

    .line 105
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    aget v2, v2, v3

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_8

    move v3, v4

    .line 107
    :goto_7
    iget v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->m:I

    if-ge v3, v5, :cond_8

    .line 108
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->dataLU:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->n:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v1

    aget v7, v5, v6

    div-float/2addr v7, v2

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    move v1, v4

    goto/16 :goto_0

    :cond_9
    return v3
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

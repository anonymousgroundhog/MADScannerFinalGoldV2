.class public Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;
.super Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;
.source "LUDecompositionAlt_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 43
    invoke-virtual/range {p0 .. p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->decomposeCommonInit(Lorg/ejml/data/DMatrixRMaj;)V

    .line 45
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->vv:[D

    const/4 v2, 0x0

    move v3, v2

    .line 47
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_9

    move v4, v2

    .line 50
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->m:I

    if-ge v4, v6, :cond_0

    .line 51
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    iget v7, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    .line 55
    :goto_2
    iget v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->m:I

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_3

    .line 56
    iget v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v6, v4

    if-ge v4, v3, :cond_1

    move v9, v4

    goto :goto_3

    :cond_1
    move v9, v3

    :goto_3
    move v10, v2

    :goto_4
    if-ge v10, v9, :cond_2

    .line 62
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    add-int v12, v6, v10

    aget-wide v11, v11, v12

    aget-wide v13, v1, v10

    mul-double/2addr v11, v13

    add-double/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 65
    :cond_2
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    add-int/2addr v6, v3

    aget-wide v10, v1, v4

    sub-double/2addr v10, v7

    aput-wide v10, v1, v4

    aput-wide v10, v9, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 70
    :cond_3
    aget-wide v9, v1, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-int/lit8 v4, v3, 0x1

    move v11, v3

    move v6, v4

    .line 71
    :goto_5
    iget v12, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->m:I

    if-ge v6, v12, :cond_5

    .line 72
    aget-wide v12, v1, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v14, v12, v9

    if-lez v14, :cond_4

    move v11, v6

    move-wide v9, v12

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    if-eq v11, v3, :cond_7

    .line 86
    iget v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v6, v11

    .line 87
    iget v9, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v9, v3

    .line 88
    iget v10, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    add-int/2addr v10, v6

    :goto_6
    if-ge v6, v10, :cond_6

    .line 90
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    aget-wide v12, v12, v6

    .line 91
    iget-object v14, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    iget-object v15, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    aget-wide v15, v15, v9

    aput-wide v15, v14, v6

    .line 92
    iget-object v14, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    aput-wide v12, v14, v9

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v5

    goto :goto_6

    .line 94
    :cond_6
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivot:[I

    aget v5, v5, v11

    .line 95
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivot:[I

    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivot:[I

    aget v9, v9, v3

    aput v9, v6, v11

    .line 96
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivot:[I

    aput v5, v6, v3

    .line 97
    iget-wide v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivsign:D

    neg-double v5, v5

    iput-wide v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->pivsign:D

    .line 99
    :cond_7
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->indx:[I

    aput v11, v5, v3

    .line 102
    iget v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->m:I

    if-ge v3, v5, :cond_8

    .line 103
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    iget v6, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_8

    move v7, v4

    .line 105
    :goto_7
    iget v8, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->m:I

    if-ge v7, v8, :cond_8

    .line 106
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->dataLU:[D

    iget v9, v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->n:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v3

    aget-wide v10, v8, v9

    div-double/2addr v10, v5

    aput-wide v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    move v3, v4

    goto/16 :goto_0

    :cond_9
    return v5
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;
.source "CholeskyDecompositionInner_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 48
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    move v4, v2

    .line 49
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v4, v6, :cond_3

    .line 50
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    aget v6, v6, v7

    .line 52
    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v7, v2

    .line 53
    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v8, v4

    add-int v9, v7, v2

    :goto_2
    if-ge v7, v9, :cond_0

    .line 58
    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    aget v10, v10, v7

    iget-object v11, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    aget v11, v11, v8

    mul-float/2addr v10, v11

    sub-float/2addr v6, v10

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v5

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_2

    cmpg-float v3, v6, v0

    if-gtz v3, :cond_1

    return v1

    :cond_1
    float-to-double v6, v6

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 67
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v2

    aput v3, v6, v7

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v3

    move v3, v6

    goto :goto_3

    .line 70
    :cond_2
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v2

    mul-float/2addr v6, v3

    aput v6, v7, v8

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_4
    :goto_4
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 77
    :goto_5
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v3, v4, :cond_5

    .line 78
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    aput v0, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    return v5
.end method

.method protected decomposeUpper()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 90
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v2, v4, :cond_4

    move v4, v2

    .line 91
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v4, v5, :cond_3

    .line 92
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    aget v5, v5, v6

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_0

    .line 95
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v2

    aget v7, v7, v8

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v9, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v9, v6

    add-int/2addr v9, v4

    aget v8, v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_2

    cmpg-float v3, v5, v0

    if-gtz v3, :cond_1

    return v1

    :cond_1
    float-to-double v5, v5

    .line 104
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 105
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v2

    aput v3, v5, v6

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    move v3, v5

    goto :goto_3

    .line 108
    :cond_2
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    mul-float/2addr v5, v3

    aput v5, v6, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 113
    :goto_4
    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    if-ge v2, v3, :cond_6

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_5

    .line 115
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->t:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->n:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    aput v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

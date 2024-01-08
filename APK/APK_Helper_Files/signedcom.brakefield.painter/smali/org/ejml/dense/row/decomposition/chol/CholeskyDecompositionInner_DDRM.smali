.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;
.source "CholeskyDecompositionInner_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 46
    :goto_0
    iget v7, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    const/4 v8, 0x1

    if-ge v4, v7, :cond_4

    move v7, v4

    .line 47
    :goto_1
    iget v9, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v7, v9, :cond_3

    .line 48
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v10, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v7

    aget-wide v9, v9, v10

    .line 50
    iget v11, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v11, v4

    .line 51
    iget v12, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v12, v7

    add-int v13, v11, v4

    :goto_2
    if-ge v11, v13, :cond_0

    .line 56
    iget-object v14, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    aget-wide v14, v14, v11

    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    aget-wide v16, v3, v12

    mul-double v14, v14, v16

    sub-double/2addr v9, v14

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v12, v8

    goto :goto_2

    :cond_0
    if-ne v4, v7, :cond_2

    cmpg-double v3, v9, v1

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    const/4 v3, 0x0

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 65
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v10, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v4

    aput-wide v5, v9, v10

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v5

    move-wide v5, v9

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 68
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v12, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v12, v7

    add-int/2addr v12, v4

    mul-double/2addr v9, v5

    aput-wide v9, v11, v12

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 74
    :goto_4
    iget v4, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v3, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    move v5, v4

    .line 75
    :goto_5
    iget v6, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v5, v6, :cond_5

    .line 76
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v7, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aput-wide v1, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move v3, v4

    goto :goto_4

    :cond_6
    return v8
.end method

.method protected decomposeUpper()Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 88
    :goto_0
    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v3, v6, :cond_4

    move v6, v3

    .line 89
    :goto_1
    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v6, v7, :cond_3

    .line 90
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v6

    aget-wide v7, v7, v8

    move v9, v2

    :goto_2
    if-ge v9, v3, :cond_0

    .line 93
    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v11, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v3

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v13, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v13, v9

    add-int/2addr v13, v6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    if-ne v3, v6, :cond_2

    cmpg-double v4, v7, v0

    if-gtz v4, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 103
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v3

    aput-wide v4, v7, v8

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v4

    move-wide v4, v7

    goto :goto_3

    .line 106
    :cond_2
    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v10, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v10, v3

    add-int/2addr v10, v6

    mul-double/2addr v7, v4

    aput-wide v7, v9, v10

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    .line 111
    :goto_4
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    if-ge v3, v4, :cond_6

    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_5

    .line 113
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->t:[D

    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->n:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    aput-wide v0, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

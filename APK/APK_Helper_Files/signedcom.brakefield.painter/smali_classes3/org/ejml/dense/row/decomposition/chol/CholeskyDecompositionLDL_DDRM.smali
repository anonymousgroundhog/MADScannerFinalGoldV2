.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionLDL_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private L:Lorg/ejml/data/DMatrixRMaj;

.field private d:[D

.field private maxWidth:I

.field private n:I

.field vv:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->vv:[D

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->maxWidth:I

    if-le v2, v3, :cond_0

    .line 92
    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v2, v3}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->setExpectedMaxSize(II)V

    goto :goto_0

    .line 93
    :cond_0
    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v2, v3, :cond_8

    .line 96
    :goto_0
    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v2, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    .line 98
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 99
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    .line 102
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    if-ge v5, v8, :cond_5

    move v8, v5

    .line 103
    :goto_2
    iget v9, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    if-ge v8, v9, :cond_4

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 104
    aget-wide v9, v1, v9

    move v11, v4

    :goto_3
    if-ge v11, v5, :cond_1

    .line 107
    iget v12, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    mul-int v13, v5, v12

    add-int/2addr v13, v11

    aget-wide v13, v1, v13

    mul-int/2addr v12, v8

    add-int/2addr v12, v11

    aget-wide v15, v1, v12

    mul-double/2addr v13, v15

    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->d:[D

    aget-wide v15, v12, v11

    mul-double/2addr v13, v15

    sub-double/2addr v9, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    if-ne v5, v8, :cond_3

    cmpg-double v6, v9, v2

    if-gtz v6, :cond_2

    return v4

    .line 115
    :cond_2
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->d:[D

    aput-wide v9, v6, v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v9, v6, v9

    .line 117
    iget v11, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    mul-int/2addr v11, v5

    add-int/2addr v11, v5

    aput-wide v6, v1, v11

    move-wide v6, v9

    goto :goto_4

    .line 119
    :cond_3
    iget v11, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    mul-int/2addr v11, v8

    add-int/2addr v11, v5

    mul-double/2addr v9, v6

    aput-wide v9, v1, v11

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_5
    :goto_5
    iget v5, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    if-ge v4, v5, :cond_7

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    .line 125
    :goto_6
    iget v7, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->n:I

    if-ge v6, v7, :cond_6

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    .line 126
    aput-wide v2, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    move v4, v5

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    return v1

    .line 94
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can only decompose square matrices"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getD(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->d:[D

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag(Lorg/ejml/data/DMatrixRMaj;I[D)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getD(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->getD(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal()[D
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->d:[D

    return-object v0
.end method

.method public getL()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getL(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getL(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->getL(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->maxWidth:I

    .line 69
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->maxWidth:I

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    .line 71
    iget p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->maxWidth:I

    new-array p2, p1, [D

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->vv:[D

    .line 72
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->d:[D

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only decompose square matrices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

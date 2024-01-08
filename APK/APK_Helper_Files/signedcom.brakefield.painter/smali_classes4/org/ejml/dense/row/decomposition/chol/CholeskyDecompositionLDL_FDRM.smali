.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionLDL_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private L:Lorg/ejml/data/FMatrixRMaj;

.field private d:[F

.field private maxWidth:I

.field private n:I

.field vv:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _getVV()[F
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->vv:[F

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 9

    .line 93
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->maxWidth:I

    if-le v0, v1, :cond_0

    .line 94
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->setExpectedMaxSize(II)V

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_8

    .line 98
    :goto_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    .line 100
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 101
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 104
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    if-ge v2, v4, :cond_5

    move v4, v2

    .line 105
    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    if-ge v4, v5, :cond_4

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    .line 106
    aget v5, p1, v5

    move v6, v1

    :goto_3
    if-ge v6, v2, :cond_1

    .line 109
    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    mul-int v8, v2, v7

    add-int/2addr v8, v6

    aget v8, p1, v8

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    aget v7, p1, v7

    mul-float/2addr v8, v7

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->d:[F

    aget v7, v7, v6

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    if-ne v2, v4, :cond_3

    cmpg-float v3, v5, v0

    if-gtz v3, :cond_2

    return v1

    .line 117
    :cond_2
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->d:[F

    aput v5, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v5, v3, v5

    .line 119
    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v2

    aput v3, p1, v6

    move v3, v5

    goto :goto_4

    .line 121
    :cond_3
    iget v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    mul-float/2addr v5, v3

    aput v5, p1, v6

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_5
    :goto_5
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 127
    :goto_6
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->n:I

    if-ge v3, v4, :cond_6

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    .line 128
    aput v0, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    const/4 p1, 0x1

    return p1

    .line 96
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can only decompose square matrices"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getD(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->d:[F

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->diag(Lorg/ejml/data/FMatrixRMaj;I[F)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getD(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->getD(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal()[F
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->d:[F

    return-object v0
.end method

.method public getL()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getL(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getL(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->getL(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

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

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->maxWidth:I

    .line 71
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->maxWidth:I

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    .line 73
    iget p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->maxWidth:I

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->vv:[F

    .line 74
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->d:[F

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only decompose square matrices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

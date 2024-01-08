.class public abstract Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverLuBase_FDRM.java"


# instance fields
.field protected decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;


# direct methods
.method protected constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->getDecomposition()Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    move-result-object v0

    return-object v0
.end method

.method public improveSol(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    .line 84
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_5

    .line 87
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 91
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 92
    iget-object p2, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 94
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 95
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 97
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_getVV()[F

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    move v6, v4

    :goto_1
    if-ge v6, p1, :cond_1

    mul-int v7, v6, v2

    add-int/2addr v7, v5

    .line 103
    aget v7, v1, v7

    neg-float v7, v7

    move v8, v4

    :goto_2
    if-ge v8, p1, :cond_0

    mul-int v9, v6, p1

    add-int/2addr v9, v8

    .line 106
    aget v9, v0, v9

    mul-int v10, v8, v2

    add-int/2addr v10, v5

    aget v10, p2, v10

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 109
    :cond_0
    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    :cond_1
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v6, v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_solveVectorInternal([F)V

    move v6, v4

    :goto_3
    if-ge v6, p1, :cond_2

    mul-int v7, v6, v2

    add-int/2addr v7, v5

    .line 114
    aget v8, p2, v7

    aget v9, v3, v6

    sub-float/2addr v8, v9

    aput v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must setA() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad shapes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 7

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_getVV()[F

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getLU()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v1

    .line 58
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v3, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v2, v1, :cond_4

    .line 61
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 63
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    if-ne v4, v3, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 67
    :goto_2
    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v4, v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_solveVectorInternal([F)V

    move v4, v2

    move v5, v3

    :goto_3
    if-ge v4, v1, :cond_2

    .line 71
    aget v6, v0, v4

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 40
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 42
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 29
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.class public abstract Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverLuBase_DDRM.java"


# instance fields
.field protected decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;


# direct methods
.method protected constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->getDecomposition()Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    move-result-object v0

    return-object v0
.end method

.method public improveSol(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 82
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_5

    .line 85
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 89
    iget-object v4, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 90
    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 92
    iget v5, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 93
    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 95
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v6}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_getVV()[D

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_3

    move v9, v7

    :goto_1
    if-ge v9, v1, :cond_1

    mul-int v10, v9, v5

    add-int/2addr v10, v8

    .line 101
    aget-wide v10, v4, v10

    neg-double v10, v10

    move v12, v7

    :goto_2
    if-ge v12, v1, :cond_0

    mul-int v13, v9, v1

    add-int/2addr v13, v12

    .line 104
    aget-wide v13, v3, v13

    mul-int v15, v12, v5

    add-int/2addr v15, v8

    aget-wide v15, v2, v15

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 107
    :cond_0
    aput-wide v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v9, v6}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_solveVectorInternal([D)V

    move v9, v7

    :goto_3
    if-ge v9, v1, :cond_2

    mul-int v10, v9, v5

    add-int/2addr v10, v8

    .line 112
    aget-wide v11, v2, v10

    aget-wide v13, v6, v9

    sub-double/2addr v11, v13

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 86
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must setA() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad shapes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 8

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_getVV()[D

    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getLU()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    .line 56
    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v2, v1, :cond_4

    .line 59
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 61
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    if-ne v4, v3, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    const-wide/16 v5, 0x0

    .line 65
    :goto_2
    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_1
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v4, v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_solveVectorInternal([D)V

    move v4, v2

    move v5, v3

    :goto_3
    if-ge v4, v1, :cond_2

    .line 69
    aget-wide v6, v0, v4

    aput-wide v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 28
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

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

    .line 45
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 1

    .line 38
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 40
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 28
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

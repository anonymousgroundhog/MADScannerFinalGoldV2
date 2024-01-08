.class public Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;
.super Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;
.source "LinearSolverLu_FDRM.java"


# instance fields
.field doImprove:Z


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->doImprove:Z

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    .line 42
    iput-boolean p2, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->doImprove:Z

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 9

    .line 47
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->numRows:I

    if-ne v0, v1, :cond_4

    .line 49
    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 51
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 53
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 54
    iget-object v2, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 56
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_getVV()[F

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    move v7, v5

    .line 65
    :goto_1
    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->numCols:I

    if-ge v6, v8, :cond_0

    aget v8, v1, v7

    aput v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v6, v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->_solveVectorInternal([F)V

    move v6, v4

    move v7, v5

    .line 68
    :goto_2
    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->numCols:I

    if-ge v6, v8, :cond_1

    aget v8, v3, v6

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->doImprove:Z

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->improveSol(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    :cond_3
    return-void

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected dimensions for X: X rows = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->numRows:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

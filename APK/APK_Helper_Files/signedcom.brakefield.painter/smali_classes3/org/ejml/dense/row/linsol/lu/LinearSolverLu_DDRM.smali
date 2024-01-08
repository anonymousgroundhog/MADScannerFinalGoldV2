.class public Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;
.super Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;
.source "LinearSolverLu_DDRM.java"


# instance fields
.field doImprove:Z


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->doImprove:Z

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    .line 40
    iput-boolean p2, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->doImprove:Z

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 10

    .line 45
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->numRows:I

    if-ne v0, v1, :cond_4

    .line 47
    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 49
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 51
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 52
    iget-object v2, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 54
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_getVV()[D

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    move v7, v5

    .line 63
    :goto_1
    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->numCols:I

    if-ge v6, v8, :cond_0

    aget-wide v8, v1, v7

    aput-wide v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v6, v3}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->_solveVectorInternal([D)V

    move v6, v4

    move v7, v5

    .line 66
    :goto_2
    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->numCols:I

    if-ge v6, v8, :cond_1

    aget-wide v8, v3, v6

    aput-wide v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->doImprove:Z

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->improveSol(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    :cond_3
    return-void

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected dimensions for X: X rows = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->numRows:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

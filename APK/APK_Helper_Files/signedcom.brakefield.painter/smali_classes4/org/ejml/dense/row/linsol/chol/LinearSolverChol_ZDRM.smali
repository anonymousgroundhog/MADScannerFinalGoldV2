.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverChol_ZDRM.java"


# instance fields
.field decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

.field n:I

.field t:[D

.field vv:[D


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [D

    .line 38
    iput-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    .line 42
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    return-void
.end method

.method private solveInternalL()V
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveL_diagReal([D[DI)V

    .line 121
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveConjTranL_diagReal([D[DI)V

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->invert(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public invert(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 131
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 134
    iget-object v0, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    if-eq v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->setToInverseL([D)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passing in the same matrix that was decomposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public modifiesA()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->_getT()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 47
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget p1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 55
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    .line 56
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->_getT()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setToInverseL([D)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ge v1, v2, :cond_1

    .line 154
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    .line 155
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    mul-int/lit8 v3, v1, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 156
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    invoke-static {v3, v2, v4}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveL_diagReal([D[DI)V

    .line 157
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->t:[D

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    invoke-static {v2, v3, v4}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveConjTranL_diagReal([D[DI)V

    move v2, v0

    .line 158
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ge v2, v3, :cond_0

    .line 159
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    mul-int/lit8 v5, v2, 0x2

    aget-wide v6, v4, v5

    aput-wide v6, p1, v3

    .line 160
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 9

    .line 85
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->numRows:I

    if-ne v0, v1, :cond_4

    .line 87
    iget v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 89
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 91
    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 92
    iget-object p2, p2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 94
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->isLower()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    .line 96
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ge v3, v4, :cond_0

    .line 97
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    mul-int/lit8 v5, v3, 0x2

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x2

    aget-wide v7, p1, v6

    aput-wide v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 98
    aget-wide v6, p1, v6

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->solveInternalL()V

    move v3, v1

    .line 101
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->n:I

    if-ge v3, v4, :cond_1

    mul-int v4, v3, v0

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 102
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;->vv:[D

    mul-int/lit8 v6, v3, 0x2

    aget-wide v7, v5, v6

    aput-wide v7, p2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 103
    aget-wide v5, v5, v6

    aput-wide v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 107
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Implement"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected dimensions for B"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

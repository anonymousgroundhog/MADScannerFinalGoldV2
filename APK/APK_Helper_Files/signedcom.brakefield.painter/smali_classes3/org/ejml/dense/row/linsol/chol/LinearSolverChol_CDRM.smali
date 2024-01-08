.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverChol_CDRM.java"


# instance fields
.field decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

.field n:I

.field t:[F

.field vv:[F


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    .line 44
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    return-void
.end method

.method private solveInternalL()V
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveL_diagReal([F[FI)V

    .line 123
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveConjTranL_diagReal([F[FI)V

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 133
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 136
    iget-object v0, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->setToInverseL([F)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passing in the same matrix that was decomposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->iZaxzjetP:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->invert(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->inputModified()Z

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

    .line 67
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->_getT()Lorg/ejml/data/CMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 49
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget p1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    .line 56
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 57
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    .line 58
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->_getT()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setToInverseL([F)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ge v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 157
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    mul-int/lit8 v3, v1, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 158
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    invoke-static {v3, v2, v4}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveL_diagReal([F[FI)V

    .line 159
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->t:[F

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    invoke-static {v2, v3, v4}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveConjTranL_diagReal([F[FI)V

    move v2, v0

    .line 160
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ge v2, v3, :cond_0

    .line 161
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    aput v4, p1, v3

    .line 162
    iget v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 8

    .line 87
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->numRows:I

    if-ne v0, v1, :cond_4

    .line 89
    iget v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 91
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 93
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 94
    iget-object p2, p2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 96
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->isLower()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    .line 98
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ge v3, v4, :cond_0

    .line 99
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    mul-int/lit8 v5, v3, 0x2

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x2

    aget v7, p1, v6

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 100
    aget v6, p1, v6

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->solveInternalL()V

    move v3, v1

    .line 103
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->n:I

    if-ge v3, v4, :cond_1

    mul-int v4, v3, v0

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 104
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->vv:[F

    mul-int/lit8 v6, v3, 0x2

    aget v7, v5, v6

    aput v7, p2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 105
    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 109
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Implement"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected dimensions for B"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

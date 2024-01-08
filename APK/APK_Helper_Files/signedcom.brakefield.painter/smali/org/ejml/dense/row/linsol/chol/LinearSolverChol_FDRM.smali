.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverChol_FDRM.java"


# instance fields
.field decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

.field n:I

.field t:[F

.field vv:[F


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    return-void
.end method

.method public static solveLower(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[F)V
    .locals 8

    .line 99
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 100
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    .line 102
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v6, v4, v0

    add-int/2addr v6, v3

    aget v5, v5, v6

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    :cond_0
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v4, p3, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveL([F[FI)V

    .line 107
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v4, p3, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveTranL([F[FI)V

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_1

    .line 108
    iget-object v5, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v6, v4, v0

    add-int/2addr v6, v3

    aget v7, p3, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 119
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    if-eq v0, v1, :cond_1

    .line 126
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 128
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->setToInverseL([F)V

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passing in the same matrix that was decomposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->inputModified()Z

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

    .line 64
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->getT()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 47
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    .line 54
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->_getVV()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->vv:[F

    .line 55
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->getT()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setToInverseL([F)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 144
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    aget v2, v4, v2

    move v4, v0

    :goto_1
    if-gt v4, v1, :cond_2

    if-ne v1, v4, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_0
    move v5, v3

    :goto_2
    add-int/lit8 v6, v1, -0x1

    :goto_3
    if-lt v6, v4, :cond_1

    .line 148
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    iget v8, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    mul-int v9, v1, v8

    add-int/2addr v9, v6

    aget v7, v7, v9

    mul-int/2addr v8, v4

    add-int/2addr v8, v6

    aget v8, p1, v8

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 150
    :cond_1
    iget v6, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    div-float/2addr v5, v2

    aput v5, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_7

    .line 156
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    aget v1, v1, v4

    move v4, v0

    :goto_5
    if-gt v4, v2, :cond_6

    if-ge v2, v4, :cond_4

    move v5, v3

    goto :goto_6

    .line 159
    :cond_4
    iget v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    aget v5, p1, v5

    :goto_6
    add-int/lit8 v6, v2, 0x1

    .line 160
    :goto_7
    iget v7, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    if-ge v6, v7, :cond_5

    .line 161
    iget-object v8, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->t:[F

    mul-int v9, v6, v7

    add-int/2addr v9, v2

    aget v8, v8, v9

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    aget v7, p1, v7

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_5
    mul-int v6, v2, v7

    add-int/2addr v6, v4

    mul-int/2addr v7, v4

    add-int/2addr v7, v2

    div-float/2addr v5, v1

    .line 163
    aput v5, p1, v7

    aput v5, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 84
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_1

    .line 89
    iget v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->n:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->vv:[F

    invoke-static {v0, p1, p2, v1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->solveLower(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[F)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Implement"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Must call setA() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

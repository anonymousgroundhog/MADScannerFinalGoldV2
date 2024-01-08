.class public Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;
.super Ljava/lang/Object;
.source "LinearSolverCholesky_FSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverSparse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field AnumCols:I

.field cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

.field gb:Lorg/ejml/data/FGrowArray;

.field gw:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/FGrowArray;

.field reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

.field tmp:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;Lorg/ejml/sparse/ComputePermutation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    .line 50
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    .line 51
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 53
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    .line 59
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    .line 60
    new-instance p1, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-direct {p1, p2, v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TD;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->inputModified()Z

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

    .line 72
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->getL()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->qualityTriangular(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 65
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->AnumCols:I

    .line 66
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->apply(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->setA(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    .line 102
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 104
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->getL()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    .line 106
    iget v1, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 108
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    invoke-static {v2, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v2

    .line 109
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    invoke-static {v3, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v3

    .line 111
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v4}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayPinv()[I

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 113
    :goto_0
    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    move v7, v5

    move v8, v6

    :goto_1
    if-ge v7, v1, :cond_0

    .line 115
    iget-object v9, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v9, v9, v8

    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    iget v9, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v8, v9

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 118
    invoke-static {v4, v2, v3, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permuteInv([I[F[FI)V

    .line 119
    invoke-static {v0, v3}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveL(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    .line 120
    invoke-static {v0, v3}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveTranL(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    .line 121
    invoke-static {v4, v3, v2, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permute([I[F[FI)V

    goto :goto_2

    .line 123
    :cond_1
    invoke-static {v0, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveL(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    .line 124
    invoke-static {v0, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveTranL(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    :goto_2
    move v7, v5

    move v8, v6

    :goto_3
    if-ge v7, v1, :cond_2

    .line 128
    iget-object v9, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v2, v7

    aput v10, v9, v8

    add-int/lit8 v7, v7, 0x1

    iget v9, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v8, v9

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 10

    .line 77
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 79
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->getGw()Lorg/ejml/data/IGrowArray;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->getL()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v9

    .line 83
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v9, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 84
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayPinv()[I

    move-result-object v5

    const/4 v2, 0x1

    .line 86
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v1, v9

    move-object v3, p1

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    .line 87
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveTran(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;->solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

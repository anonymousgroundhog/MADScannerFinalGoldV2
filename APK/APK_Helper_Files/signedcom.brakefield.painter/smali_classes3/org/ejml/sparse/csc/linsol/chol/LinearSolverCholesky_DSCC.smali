.class public Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;
.super Ljava/lang/Object;
.source "LinearSolverCholesky_DSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverSparse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field AnumCols:I

.field cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

.field gb:Lorg/ejml/data/DGrowArray;

.field gw:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/DGrowArray;

.field reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

.field tmp:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;Lorg/ejml/sparse/ComputePermutation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    .line 48
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    .line 49
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 51
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    .line 57
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    .line 58
    new-instance p1, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-direct {p1, p2, v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

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

    .line 142
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->inputModified()Z

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

    .line 70
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->getL()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->qualityTriangular(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 63
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->AnumCols:I

    .line 64
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->apply(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->setA(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 12

    .line 100
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 102
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->getL()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    .line 104
    iget v1, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 106
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    invoke-static {v2, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v2

    .line 107
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    invoke-static {v3, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v3

    .line 109
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v4}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayPinv()[I

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 111
    :goto_0
    iget v7, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    move v7, v5

    move v8, v6

    :goto_1
    if-ge v7, v1, :cond_0

    .line 113
    iget-object v9, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v9, v9, v8

    aput-wide v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    iget v9, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v8, v9

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 116
    invoke-static {v4, v2, v3, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteInv([I[D[DI)V

    .line 117
    invoke-static {v0, v3}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveL(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    .line 118
    invoke-static {v0, v3}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveTranL(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    .line 119
    invoke-static {v4, v3, v2, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permute([I[D[DI)V

    goto :goto_2

    .line 121
    :cond_1
    invoke-static {v0, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveL(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    .line 122
    invoke-static {v0, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveTranL(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    :goto_2
    move v7, v5

    move v8, v6

    :goto_3
    if-ge v7, v1, :cond_2

    .line 126
    iget-object v9, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v10, v2, v7

    aput-wide v10, v9, v8

    add-int/lit8 v7, v7, 0x1

    iget v9, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

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

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 10

    .line 75
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 77
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->getGw()Lorg/ejml/data/IGrowArray;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->cholesky:Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->getL()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v9

    .line 81
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 82
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->reduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayPinv()[I

    move-result-object v5

    const/4 v2, 0x1

    .line 84
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v1, v9

    move-object v3, p1

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    .line 85
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveTran(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;->solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

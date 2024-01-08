.class public Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;
.super Ljava/lang/Object;
.source "LinearSolverLu_DSCC.java"

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

.field Bp:Lorg/ejml/data/DMatrixSparseCSC;

.field decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

.field private final gb:Lorg/ejml/data/DGrowArray;

.field private final gx:Lorg/ejml/data/DGrowArray;

.field tmp:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    .line 43
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    .line 45
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->Bp:Lorg/ejml/data/DMatrixSparseCSC;

    .line 46
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    .line 52
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

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
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->inputModified()Z

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

    .line 63
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getU()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->qualityTriangular(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 57
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->AnumCols:I

    .line 58
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->setA(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 100
    iget v3, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->AnumCols:I

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 102
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getPinv()[I

    move-result-object v3

    .line 103
    iget-object v4, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget v5, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v4

    .line 104
    iget-object v5, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v5

    .line 106
    iget-object v6, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getL()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v6

    .line 107
    iget-object v7, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v7}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getU()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v7

    .line 109
    iget-object v8, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v8}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->isReduceFill()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    iget-object v9, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v9}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getReducePermutation()[I

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    move v11, v10

    .line 113
    :goto_1
    iget v12, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v11, v12, :cond_4

    move v12, v10

    move v13, v11

    .line 115
    :goto_2
    iget v14, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v12, v14, :cond_1

    iget-object v14, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v14, v14, v13

    aput-wide v14, v5, v12

    add-int/lit8 v12, v12, 0x1

    iget v14, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v13, v14

    goto :goto_2

    .line 117
    :cond_1
    iget v12, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v3, v5, v4, v12}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteInv([I[D[DI)V

    .line 118
    invoke-static {v6, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveL(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    .line 119
    invoke-static {v7, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveU(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    if-eqz v8, :cond_2

    .line 122
    iget v12, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v9, v4, v5, v12}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permute([I[D[DI)V

    move-object v12, v5

    goto :goto_3

    :cond_2
    move-object v12, v4

    :goto_3
    move v13, v10

    move v14, v11

    .line 128
    :goto_4
    iget v15, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v13, v15, :cond_3

    iget-object v15, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v16, v12, v13

    aput-wide v16, v15, v14

    add-int/lit8 v13, v13, 0x1

    iget v15, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v14, v15

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 11

    .line 68
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 70
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getL()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getU()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->Bp:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 75
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getPinv()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->Bp:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v2, p1, v3, v4}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permute([ILorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DMatrixSparseCSC;)V

    .line 78
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getGw()Lorg/ejml/data/IGrowArray;

    move-result-object v9

    .line 79
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getGxi()Lorg/ejml/data/IGrowArray;

    move-result-object v10

    .line 81
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    const/4 v2, 0x1

    .line 83
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->Bp:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    const/4 v3, 0x0

    .line 84
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-object v2, v0

    move-object v5, p2

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;->solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

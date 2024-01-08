.class public Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;
.super Ljava/lang/Object;
.source "LinearSolverLu_FSCC.java"

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

.field Bp:Lorg/ejml/data/FMatrixSparseCSC;

.field decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

.field private final gb:Lorg/ejml/data/FGrowArray;

.field private final gx:Lorg/ejml/data/FGrowArray;

.field tmp:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    .line 45
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    .line 47
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->Bp:Lorg/ejml/data/FMatrixSparseCSC;

    .line 48
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    .line 54
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

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

    .line 146
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->inputModified()Z

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
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getU()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->qualityTriangular(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 59
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->AnumCols:I

    .line 60
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->setA(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 102
    iget v3, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->AnumCols:I

    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 104
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getPinv()[I

    move-result-object v3

    .line 105
    iget-object v4, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget v5, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v4

    .line 106
    iget-object v5, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    iget v6, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v5

    .line 108
    iget-object v6, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getL()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v6

    .line 109
    iget-object v7, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v7}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getU()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v7

    .line 111
    iget-object v8, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v8}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->isReduceFill()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    iget-object v9, v0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v9}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getReducePermutation()[I

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    move v11, v10

    .line 115
    :goto_1
    iget v12, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v11, v12, :cond_4

    move v12, v10

    move v13, v11

    .line 117
    :goto_2
    iget v14, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v12, v14, :cond_1

    iget-object v14, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v14, v14, v13

    aput v14, v5, v12

    add-int/lit8 v12, v12, 0x1

    iget v14, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v13, v14

    goto :goto_2

    .line 119
    :cond_1
    iget v12, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v3, v5, v4, v12}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permuteInv([I[F[FI)V

    .line 120
    invoke-static {v6, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveL(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    .line 121
    invoke-static {v7, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveU(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    if-eqz v8, :cond_2

    .line 124
    iget v12, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v9, v4, v5, v12}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permute([I[F[FI)V

    move-object v12, v5

    goto :goto_3

    :cond_2
    move-object v12, v4

    :goto_3
    move v13, v10

    move v14, v11

    .line 130
    :goto_4
    iget v15, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v13, v15, :cond_3

    iget-object v15, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v16, v12, v13

    aput v16, v15, v14

    add-int/lit8 v13, v13, 0x1

    iget v15, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

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

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 11

    .line 70
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 72
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getL()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getU()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->Bp:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 77
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getPinv()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->Bp:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {v2, p1, v3, v4}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permute([ILorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FMatrixSparseCSC;)V

    .line 80
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getGw()Lorg/ejml/data/IGrowArray;

    move-result-object v9

    .line 81
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->decomposition:Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getGxi()Lorg/ejml/data/IGrowArray;

    move-result-object v10

    .line 83
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    const/4 v2, 0x1

    .line 85
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->Bp:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    const/4 v3, 0x0

    .line 86
    iget-object v4, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v2, v0

    move-object v5, p2

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;->solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

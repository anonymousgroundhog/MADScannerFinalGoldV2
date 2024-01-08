.class public Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;
.super Ljava/lang/Object;
.source "LinearSolverQrLeftLooking_DSCC.java"

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
.field private AnumCols:I

.field private AnumRows:I

.field private final gb:Lorg/ejml/data/DGrowArray;

.field private final gbp:Lorg/ejml/data/DGrowArray;

.field private final gw:Lorg/ejml/data/IGrowArray;

.field private final gx:Lorg/ejml/data/DGrowArray;

.field private final qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

.field private final tmp:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    .line 45
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gbp:Lorg/ejml/data/DGrowArray;

    .line 46
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    .line 47
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 49
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    .line 52
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

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

    .line 163
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->inputModified()Z

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

    .line 66
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getR()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->qualityTriangular(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 57
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-gt v0, v1, :cond_1

    .line 59
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumRows:I

    .line 60
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    .line 61
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->isSingular()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->JWpiLACdLGIAnNi:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->setA(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 12

    .line 114
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 116
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gb:Lorg/ejml/data/DGrowArray;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gbp:Lorg/ejml/data/DGrowArray;

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v1

    .line 118
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget v3, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v2

    .line 120
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getPinv()[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 123
    :goto_0
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_4

    move v6, v4

    move v7, v5

    .line 125
    :goto_1
    iget v8, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_0

    iget-object v8, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v7

    aput-wide v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    iget v8, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 128
    :cond_0
    iget v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumRows:I

    invoke-static {v3, v0, v1, v6}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteInv([I[D[DI)V

    move v6, v4

    .line 131
    :goto_2
    iget v7, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    if-ge v6, v7, :cond_1

    .line 132
    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v7}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getV()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v7

    iget-object v8, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v8, v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getBeta(I)D

    move-result-wide v8

    invoke-static {v7, v6, v8, v9, v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;->applyHouseholder(Lorg/ejml/data/DMatrixSparseCSC;ID[D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 135
    :cond_1
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getR()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveU(Lorg/ejml/data/DMatrixSparseCSC;[D)V

    .line 139
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->isFillPermutated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getFillPermutation()[I

    move-result-object v6

    iget v7, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v6, v1, v2, v7}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permute([I[D[DI)V

    move-object v6, v2

    goto :goto_3

    :cond_2
    move-object v6, v1

    :goto_3
    move v7, v4

    move v8, v5

    .line 147
    :goto_4
    iget v9, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v7, v9, :cond_3

    iget-object v9, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v10, v6, v7

    aput-wide v10, v9, v8

    add-int/lit8 v7, v7, 0x1

    iget v9, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v8, v9

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 71
    iget v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v5, v4, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {v4, v2, v3, v5}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 73
    iget-object v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getGwork()Lorg/ejml/data/IGrowArray;

    move-result-object v8

    .line 76
    iget-object v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {v2, v1}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    .line 77
    iget-object v1, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->tmp:Lorg/ejml/data/DMatrixSparseCSC;

    .line 78
    invoke-virtual {v1}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v2

    .line 82
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getPinv()[I

    move-result-object v3

    .line 83
    invoke-static {v3, v1, v2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteRowInv([ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 89
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getV()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v17, v5

    move-object v5, v2

    move/from16 v2, v17

    .line 90
    :goto_0
    iget v6, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->AnumCols:I

    if-ge v2, v6, :cond_0

    .line 91
    iget-object v6, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v6, v2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getBeta(I)D

    move-result-wide v11

    iget-object v15, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v6, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-object v9, v3

    move v10, v2

    move-object v13, v5

    move-object v14, v1

    move-object/from16 v16, v6

    invoke-static/range {v9 .. v16}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;->rank1UpdateMultR(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getR()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 99
    iget-object v7, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget-object v9, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v3, v5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;->solveSparse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

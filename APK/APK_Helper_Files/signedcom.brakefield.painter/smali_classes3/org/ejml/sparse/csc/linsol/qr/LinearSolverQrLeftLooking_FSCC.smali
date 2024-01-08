.class public Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;
.super Ljava/lang/Object;
.source "LinearSolverQrLeftLooking_FSCC.java"

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
.field private AnumCols:I

.field private AnumRows:I

.field private final gb:Lorg/ejml/data/FGrowArray;

.field private final gbp:Lorg/ejml/data/FGrowArray;

.field private final gw:Lorg/ejml/data/IGrowArray;

.field private final gx:Lorg/ejml/data/FGrowArray;

.field private final qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

.field private final tmp:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    .line 47
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gbp:Lorg/ejml/data/FGrowArray;

    .line 48
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    .line 49
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 51
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    .line 54
    iput-object p1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

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

    .line 165
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->inputModified()Z

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

    .line 68
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getR()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->qualityTriangular(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 59
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-gt v0, v1, :cond_1

    .line 61
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumRows:I

    .line 62
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    .line 63
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->isSingular()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t handle wide matrices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->setA(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->setStructureLocked(Z)V

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    .line 116
    iget v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 118
    iget-object v0, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gb:Lorg/ejml/data/FGrowArray;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v0

    .line 119
    iget-object v1, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gbp:Lorg/ejml/data/FGrowArray;

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v1

    .line 120
    iget-object v2, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget v3, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v2

    .line 122
    iget-object v3, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getPinv()[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 125
    :goto_0
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_4

    move v6, v4

    move v7, v5

    .line 127
    :goto_1
    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_0

    iget-object v8, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v8, v8, v7

    aput v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    iget v8, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 130
    :cond_0
    iget v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumRows:I

    invoke-static {v3, v0, v1, v6}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permuteInv([I[F[FI)V

    move v6, v4

    .line 133
    :goto_2
    iget v7, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    if-ge v6, v7, :cond_1

    .line 134
    iget-object v7, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v7}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getV()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v7

    iget-object v8, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v8, v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getBeta(I)F

    move-result v8

    invoke-static {v7, v6, v8, v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;->applyHouseholder(Lorg/ejml/data/FMatrixSparseCSC;IF[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 137
    :cond_1
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getR()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveU(Lorg/ejml/data/FMatrixSparseCSC;[F)V

    .line 141
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->isFillPermutated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    iget-object v6, p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getFillPermutation()[I

    move-result-object v6

    iget v7, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v6, v1, v2, v7}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permute([I[F[FI)V

    move-object v6, v2

    goto :goto_3

    :cond_2
    move-object v6, v1

    :goto_3
    move v7, v4

    move v8, v5

    .line 149
    :goto_4
    iget v9, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v7, v9, :cond_3

    iget-object v9, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v6, v7

    aput v10, v9, v8

    add-int/lit8 v7, v7, 0x1

    iget v9, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

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

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 73
    iget v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    iget v3, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v5, v4, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {v4, v2, v3, v5}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 75
    iget-object v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getGwork()Lorg/ejml/data/IGrowArray;

    move-result-object v8

    .line 78
    iget-object v2, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {v2, v1}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    .line 79
    iget-object v1, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->tmp:Lorg/ejml/data/FMatrixSparseCSC;

    .line 80
    invoke-virtual {v1}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v2

    .line 84
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getPinv()[I

    move-result-object v3

    .line 85
    invoke-static {v3, v1, v2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permuteRowInv([ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 91
    iget-object v3, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getV()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v16, v5

    move-object v5, v2

    move/from16 v2, v16

    .line 92
    :goto_0
    iget v6, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->AnumCols:I

    if-ge v2, v6, :cond_0

    .line 93
    iget-object v6, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v6, v2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getBeta(I)F

    move-result v11

    iget-object v14, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v15, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v9, v3

    move v10, v2

    move-object v12, v5

    move-object v13, v1

    invoke-static/range {v9 .. v15}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;->rank1UpdateMultR(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->qr:Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-virtual {v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getR()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 101
    iget-object v7, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget-object v9, v0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    move-object v3, v5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;[ILorg/ejml/data/FGrowArray;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;->solveSparse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

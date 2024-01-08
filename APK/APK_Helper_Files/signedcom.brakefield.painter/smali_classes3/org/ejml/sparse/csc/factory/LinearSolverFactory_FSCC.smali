.class public Lorg/ejml/sparse/csc/factory/LinearSolverFactory_FSCC;
.super Ljava/lang/Object;
.source "LinearSolverFactory_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cholesky(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 43
    invoke-static {}, Lorg/ejml/sparse/csc/factory/DecompositionFactory_FSCC;->cholesky()Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F32;

    move-result-object v0

    check-cast v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    .line 44
    new-instance v1, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;

    invoke-direct {v1, v0, p0}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_FSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;Lorg/ejml/sparse/ComputePermutation;)V

    return-object v1
.end method

.method public static lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 55
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    .line 56
    new-instance p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_FSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;)V

    return-object p0
.end method

.method public static qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/linsol/LinearSolverSparse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 49
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    .line 50
    new-instance p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_FSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;)V

    return-object p0
.end method

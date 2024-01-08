.class public Lorg/ejml/sparse/csc/factory/LinearSolverFactory_DSCC;
.super Ljava/lang/Object;
.source "LinearSolverFactory_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
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
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 41
    invoke-static {}, Lorg/ejml/sparse/csc/factory/DecompositionFactory_DSCC;->cholesky()Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F64;

    move-result-object v0

    check-cast v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    .line 42
    new-instance v1, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;

    invoke-direct {v1, v0, p0}, Lorg/ejml/sparse/csc/linsol/chol/LinearSolverCholesky_DSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;Lorg/ejml/sparse/ComputePermutation;)V

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
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 53
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    .line 54
    new-instance p0, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/linsol/lu/LinearSolverLu_DSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;)V

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
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 47
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    .line 48
    new-instance p0, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/linsol/qr/LinearSolverQrLeftLooking_DSCC;-><init>(Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;)V

    return-object p0
.end method

.class public Lorg/ejml/sparse/csc/factory/DecompositionFactory_DSCC;
.super Ljava/lang/Object;
.source "DecompositionFactory_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cholesky()Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F64;
    .locals 1

    .line 38
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;-><init>()V

    return-object v0
.end method

.method public static lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 48
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    return-object v0
.end method

.method public static qr(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/decomposition/QRSparseDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/decomposition/QRSparseDecomposition<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 43
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    return-object v0
.end method

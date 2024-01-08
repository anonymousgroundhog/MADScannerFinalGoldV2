.class public Lorg/ejml/sparse/csc/factory/DecompositionFactory_FSCC;
.super Ljava/lang/Object;
.source "DecompositionFactory_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cholesky()Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F32;
    .locals 1

    .line 40
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;-><init>()V

    return-object v0
.end method

.method public static lu(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 50
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

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
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;

    move-result-object p0

    .line 45
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;

    invoke-direct {v0, p0}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;)V

    return-object v0
.end method

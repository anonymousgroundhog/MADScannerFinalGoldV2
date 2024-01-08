.class public Lorg/ejml/dense/row/factory/LinearSolverFactory_ZDRM;
.super Ljava/lang/Object;
.source "LinearSolverFactory_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;

    new-instance v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_ZDRM;-><init>(Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;)V

    return-object p0
.end method

.method public static lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_ZDRM;

    new-instance v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_ZDRM;-><init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;)V

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;-><init>()V

    return-object p0
.end method

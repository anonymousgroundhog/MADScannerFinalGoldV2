.class public Lorg/ejml/dense/row/factory/LinearSolverFactory_CDRM;
.super Ljava/lang/Object;
.source "LinearSolverFactory_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;

    new-instance v0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_CDRM;-><init>(Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;)V

    return-object p0
.end method

.method public static lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;

    new-instance v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;-><init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;)V

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;-><init>()V

    return-object p0
.end method

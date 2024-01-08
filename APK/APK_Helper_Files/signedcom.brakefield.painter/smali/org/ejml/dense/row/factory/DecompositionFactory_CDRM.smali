.class public Lorg/ejml/dense/row/factory/DecompositionFactory_CDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_CDRM;-><init>(Z)V

    return-object p0
.end method

.method public static decomposeSafe(Lorg/ejml/interfaces/decomposition/DecompositionInterface;Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/CMatrixRMaj;",
            ")Z"
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 90
    :cond_0
    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F32<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;-><init>()V

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;-><init>()V

    return-object p0
.end method

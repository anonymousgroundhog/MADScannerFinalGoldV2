.class public Lorg/ejml/dense/row/factory/DecompositionFactory_ZDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionInner_ZDRM;-><init>(Z)V

    return-object p0
.end method

.method public static decomposeSafe(Lorg/ejml/interfaces/decomposition/DecompositionInterface;Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ")Z"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 88
    :cond_0
    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F64<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;-><init>()V

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;-><init>()V

    return-object p0
.end method

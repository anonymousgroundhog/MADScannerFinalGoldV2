.class public Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM;

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM;-><init>(I)V

    return-object p0
.end method

.method public static chol(Z)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 73
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static decomposeSafe(Lorg/ejml/interfaces/decomposition/DecompositionInterface;Lorg/ejml/data/FMatrix;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/FMatrix;",
            ">(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrix;

    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0

    .line 202
    :cond_0
    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-static {p0, p1, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object p0

    .line 139
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;

    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-direct {p1, v0, p0, v1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;F)V

    return-object p1
.end method

.method public static eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 160
    invoke-static {p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    move-result-object p0

    .line 161
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;

    invoke-direct {p2, p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;Z)V

    return-object p2

    .line 163
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;-><init>()V

    .line 164
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;

    invoke-direct {p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;-><init>()V

    .line 165
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;

    invoke-direct {v0, p0, p2, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;Z)V

    return-object v0
.end method

.method public static eig(Z)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 143
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static eig(ZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 171
    invoke-static {v0, p0, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static qr()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;-><init>()V

    return-object v0
.end method

.method public static qr(II)Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;-><init>()V

    return-object p0
.end method

.method public static svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ)",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;-><init>(ZZZZ)V

    return-object p0
.end method

.method public static svd(ZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 104
    invoke-static {v0, v0, p0, p1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;-><init>()V

    return-object p0
.end method

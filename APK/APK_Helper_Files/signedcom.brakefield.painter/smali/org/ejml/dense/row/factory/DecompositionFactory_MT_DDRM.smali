.class public Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM;

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM;-><init>(I)V

    return-object p0
.end method

.method public static chol(Z)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 71
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static decomposeSafe(Lorg/ejml/interfaces/decomposition/DecompositionInterface;Lorg/ejml/data/DMatrix;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/DMatrix;",
            ">(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrix;

    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0

    .line 200
    :cond_0
    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-static {p0, p1, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object p0

    .line 137
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;

    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-direct {p1, v0, p0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;D)V

    return-object p1
.end method

.method public static eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 158
    invoke-static {p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    move-result-object p0

    .line 159
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;

    invoke-direct {p2, p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;Z)V

    return-object p2

    .line 161
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_DDRM;-><init>()V

    .line 162
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;

    invoke-direct {p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;-><init>()V

    .line 163
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;

    invoke-direct {v0, p0, p2, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;Z)V

    return-object v0
.end method

.method public static eig(Z)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 141
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static eig(ZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 169
    invoke-static {v0, p0, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static qr()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;-><init>()V

    return-object v0
.end method

.method public static qr(II)Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;-><init>()V

    return-object p0
.end method

.method public static svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ)",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;-><init>(ZZZZ)V

    return-object p0
.end method

.method public static svd(ZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 102
    invoke-static {v0, v0, p0, p1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_MT_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;-><init>()V

    return-object p0
.end method

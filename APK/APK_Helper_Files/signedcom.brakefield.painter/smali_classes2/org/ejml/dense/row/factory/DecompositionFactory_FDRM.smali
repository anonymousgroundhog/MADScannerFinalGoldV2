.class public Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 75
    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    if-ge p0, v0, :cond_0

    .line 76
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;-><init>(Z)V

    return-object p0

    .line 77
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, v0, :cond_1

    .line 78
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;-><init>(Z)V

    return-object p0

    .line 80
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;-><init>(I)V

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

    .line 91
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static cholLDL()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;-><init>()V

    return-object v0
.end method

.method public static cholLDL(I)Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;-><init>()V

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

    .line 331
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrix;

    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0

    .line 334
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

    .line 204
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;

    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-direct {v0, p0, p1, v1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;-><init>(IZF)V

    return-object v0
.end method

.method public static eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 225
    invoke-static {p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    move-result-object p0

    .line 226
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;

    invoke-direct {p2, p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;Z)V

    return-object p2

    .line 228
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;-><init>(Z)V

    return-object p0
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

    .line 208
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

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

    .line 233
    invoke-static {v0, p0, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static lu()Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

    return-object v0
.end method

.method public static lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

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

    .line 172
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

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

    .line 168
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    return-object p0
.end method

.method public static qrp()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;-><init>()V

    return-object v0
.end method

.method public static qrp(II)Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;-><init>()V

    return-object p0
.end method

.method public static quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)F
    .locals 3

    .line 259
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 260
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 261
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget p2, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p1, p2, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 262
    invoke-static {v0, p3, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 264
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p2

    .line 266
    invoke-static {p0, p1}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->diffNormF(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    div-float/2addr p0, p2

    return p0
.end method

.method public static quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;)F"
        }
    .end annotation

    .line 286
    invoke-static {p1}, Lorg/ejml/dense/row/EigenOps_FDRM;->createMatrixV(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    .line 287
    invoke-static {p1}, Lorg/ejml/dense/row/EigenOps_FDRM;->createMatrixD(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 290
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 291
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 293
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    iget v2, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p0, v2, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 294
    invoke-static {v0, p1, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 296
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 297
    invoke-static {v1, p0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->subtract(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    .line 299
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    .line 300
    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 254
    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p0, v0, v2, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)F

    move-result p0

    return p0
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

    .line 143
    new-instance p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;-><init>(ZZZZ)V

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

    .line 155
    invoke-static {v0, v0, p0, p1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object p0

    return-object p0
.end method

.method public static tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x708

    if-lt p0, v0, :cond_0

    .line 315
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;-><init>()V

    return-object p0

    .line 317
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;-><init>()V

    return-object p0
.end method

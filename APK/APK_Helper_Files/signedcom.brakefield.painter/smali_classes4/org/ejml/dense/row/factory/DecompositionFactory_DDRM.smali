.class public Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;
.super Ljava/lang/Object;
.source "DecompositionFactory_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 73
    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    if-ge p0, v0, :cond_0

    .line 74
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;-><init>(Z)V

    return-object p0

    .line 75
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, v0, :cond_1

    .line 76
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;-><init>(Z)V

    return-object p0

    .line 78
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;-><init>(I)V

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

    .line 89
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->chol(IZ)Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static cholLDL()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;-><init>()V

    return-object v0
.end method

.method public static cholLDL(I)Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;-><init>()V

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

    .line 329
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrix;

    invoke-interface {p0, p1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    return p0

    .line 332
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

    .line 202
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;

    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;-><init>(IZD)V

    return-object v0
.end method

.method public static eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 223
    invoke-static {p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    move-result-object p0

    .line 224
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;

    invoke-direct {p2, p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;Z)V

    return-object p2

    .line 226
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;-><init>(Z)V

    return-object p0
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

    .line 206
    invoke-static {v0, p0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

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

    .line 231
    invoke-static {v0, p0, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static lu()Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

    return-object v0
.end method

.method public static lu(II)Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/LUDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

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

    .line 170
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

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

    .line 166
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    return-object p0
.end method

.method public static qrp()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;-><init>()V

    return-object v0
.end method

.method public static qrp(II)Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;-><init>()V

    return-object p0
.end method

.method public static quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D
    .locals 3

    .line 257
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 258
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 259
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget p2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p1, p2, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 260
    invoke-static {v0, p3, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 262
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p2

    .line 264
    invoke-static {p0, p1}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->diffNormF(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;)D"
        }
    .end annotation

    .line 284
    invoke-static {p1}, Lorg/ejml/dense/row/EigenOps_DDRM;->createMatrixV(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    .line 285
    invoke-static {p1}, Lorg/ejml/dense/row/EigenOps_DDRM;->createMatrixD(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 288
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 289
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 291
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 292
    invoke-static {v0, p1, p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 294
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 295
    invoke-static {v1, p0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->subtract(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    .line 297
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    .line 298
    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p0, v0, v2, p1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p0

    return-wide p0
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

    .line 141
    new-instance p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;-><init>(ZZZZ)V

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

    .line 153
    invoke-static {v0, v0, p0, p1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object p0

    return-object p0
.end method

.method public static tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x708

    if-lt p0, v0, :cond_0

    .line 313
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;-><init>()V

    return-object p0

    .line 315
    :cond_0
    new-instance p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;-><init>()V

    return-object p0
.end method

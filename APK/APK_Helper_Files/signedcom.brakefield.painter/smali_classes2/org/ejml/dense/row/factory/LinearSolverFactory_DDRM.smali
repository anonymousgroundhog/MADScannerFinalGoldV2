.class public Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;
.super Ljava/lang/Object;
.source "LinearSolverFactory_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustable()Lorg/ejml/dense/row/linsol/AdjustableLinearSolver_DDRM;
    .locals 1

    .line 193
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;-><init>()V

    return-object v0
.end method

.method public static chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static general(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    .line 78
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 101
    sget p0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    if-ge p1, p0, :cond_0

    .line 102
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;-><init>()V

    return-object p0

    .line 104
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object p1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, p1, :cond_1

    .line 105
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_DDRM;-><init>()V

    return-object p0

    .line 107
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;-><init>()V

    return-object p0
.end method

.method public static leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;-><init>()V

    if-eqz p1, :cond_0

    .line 160
    new-instance p1, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;

    invoke-direct {p1, v0, p0}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;Z)V

    return-object p1

    .line 162
    :cond_0
    new-instance p1, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;

    invoke-direct {p1, v0, p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;Z)V

    return-object p1
.end method

.method public static linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;

    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    return-object p0
.end method

.method public static lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static pseudoInverse(Z)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 183
    new-instance p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static qrp(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 117
    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    const/4 v1, 0x1

    if-ge p0, v0, :cond_0

    .line 118
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;

    invoke-direct {p0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;-><init>(Z)V

    .line 119
    new-instance v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;

    invoke-direct {v0, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;)V

    return-object v0

    .line 121
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, v0, :cond_1

    .line 122
    new-instance p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;-><init>()V

    return-object p0

    .line 124
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;

    invoke-direct {p0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;-><init>(Z)V

    .line 125
    new-instance v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;

    invoke-direct {v0, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;)V

    return-object v0
.end method

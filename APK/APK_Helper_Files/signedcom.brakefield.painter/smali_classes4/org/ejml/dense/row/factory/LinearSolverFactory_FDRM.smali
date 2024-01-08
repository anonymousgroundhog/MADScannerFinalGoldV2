.class public Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;
.super Ljava/lang/Object;
.source "LinearSolverFactory_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustable()Lorg/ejml/dense/row/linsol/AdjustableLinearSolver_FDRM;
    .locals 1

    .line 195
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;-><init>()V

    return-object v0
.end method

.method public static chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static general(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    .line 80
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0

    .line 82
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 103
    sget p0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    if-ge p1, p0, :cond_0

    .line 104
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;-><init>()V

    return-object p0

    .line 106
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object p1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, p1, :cond_1

    .line 107
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_FDRM;-><init>()V

    return-object p0

    .line 109
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;-><init>()V

    return-object p0
.end method

.method public static leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;-><init>()V

    if-eqz p1, :cond_0

    .line 162
    new-instance p1, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;

    invoke-direct {p1, v0, p0}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;Z)V

    return-object p1

    .line 164
    :cond_0
    new-instance p1, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;

    invoke-direct {p1, v0, p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;Z)V

    return-object p1
.end method

.method public static linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;

    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    return-object p0
.end method

.method public static lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static pseudoInverse(Z)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 185
    new-instance p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static qrp(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->leastSquaresQrPivot(ZZ)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 119
    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    const/4 v1, 0x1

    if-ge p0, v0, :cond_0

    .line 120
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;

    invoke-direct {p0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;-><init>(Z)V

    .line 121
    new-instance v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;

    invoke-direct {v0, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;)V

    return-object v0

    .line 123
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, v0, :cond_1

    .line 124
    new-instance p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;-><init>()V

    return-object p0

    .line 126
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;

    invoke-direct {p0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;-><init>(Z)V

    .line 127
    new-instance v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;

    invoke-direct {v0, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;)V

    return-object v0
.end method

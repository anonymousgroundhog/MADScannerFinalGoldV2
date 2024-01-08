.class public Lorg/ejml/dense/row/factory/LinearSolverFactory_MT_DDRM;
.super Ljava/lang/Object;
.source "LinearSolverFactory_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 41
    invoke-static {p0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_MT_DDRM;->symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

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

    .line 60
    sget p0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    if-ge p1, p0, :cond_0

    .line 61
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;-><init>()V

    return-object p0

    .line 63
    :cond_0
    sget-object p0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object p1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne p0, p1, :cond_1

    .line 64
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_DDRM;

    new-instance p1, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;

    invoke-direct {p1}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;-><init>()V

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_DDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-object p0

    .line 66
    :cond_1
    new-instance p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;

    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;-><init>()V

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

    .line 48
    invoke-static {p0, p1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_MT_DDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object p0

    return-object p0
.end method

.method public static symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;

    new-instance v0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_MT_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_MT_DDRB;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-object p0
.end method

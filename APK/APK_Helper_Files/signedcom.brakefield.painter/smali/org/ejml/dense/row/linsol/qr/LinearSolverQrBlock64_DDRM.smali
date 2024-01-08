.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;
.source "LinearSolverQrBlock64_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_DDRB;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method

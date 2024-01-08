.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrBlock64_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;
.source "LinearSolverQrBlock64_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_FDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_FDRB;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method

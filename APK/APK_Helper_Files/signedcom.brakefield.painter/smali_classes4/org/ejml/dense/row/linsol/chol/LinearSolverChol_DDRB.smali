.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;
.super Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;
.source "LinearSolverChol_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;-><init>()V

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

    .line 42
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->blockB:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 56
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->blockB:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    .line 59
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->blockB:Lorg/ejml/data/DMatrixRBlock;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 61
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->blockB:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRB;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

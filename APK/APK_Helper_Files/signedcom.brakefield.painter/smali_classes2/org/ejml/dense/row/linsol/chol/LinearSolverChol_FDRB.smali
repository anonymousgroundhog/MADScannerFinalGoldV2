.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;
.super Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;
.source "LinearSolverChol_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;-><init>()V

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

    .line 44
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->blockB:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->blockB:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    .line 61
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->blockB:Lorg/ejml/data/FMatrixRBlock;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 63
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->blockB:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRB;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

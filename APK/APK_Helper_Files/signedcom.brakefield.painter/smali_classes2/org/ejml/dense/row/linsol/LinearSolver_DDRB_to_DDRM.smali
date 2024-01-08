.class public Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;
.super Ljava/lang/Object;
.source "LinearSolver_DDRB_to_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected blockA:Lorg/ejml/data/DMatrixRBlock;

.field protected blockB:Lorg/ejml/data/DMatrixRBlock;

.field protected blockX:Lorg/ejml/data/DMatrixRBlock;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    .line 39
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockA:Lorg/ejml/data/DMatrixRBlock;

    .line 41
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    .line 43
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockX:Lorg/ejml/data/DMatrixRBlock;

    .line 46
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TD;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 96
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    .line 98
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {v0, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockA:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    .line 60
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockA:Lorg/ejml/data/DMatrixRBlock;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 77
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockX:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V

    .line 81
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockB:Lorg/ejml/data/DMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockX:Lorg/ejml/data/DMatrixRBlock;

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 83
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->blockX:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/LinearSolver_DDRB_to_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

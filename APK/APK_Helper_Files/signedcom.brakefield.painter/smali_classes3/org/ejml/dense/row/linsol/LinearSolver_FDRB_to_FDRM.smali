.class public Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;
.super Ljava/lang/Object;
.source "LinearSolver_FDRB_to_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected blockA:Lorg/ejml/data/FMatrixRBlock;

.field protected blockB:Lorg/ejml/data/FMatrixRBlock;

.field protected blockX:Lorg/ejml/data/FMatrixRBlock;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    .line 41
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockA:Lorg/ejml/data/FMatrixRBlock;

    .line 43
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    .line 45
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockX:Lorg/ejml/data/FMatrixRBlock;

    .line 48
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

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

    .line 115
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 98
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    .line 100
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {v0, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

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

    .line 67
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 60
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockA:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    .line 62
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockA:Lorg/ejml/data/FMatrixRBlock;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockX:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 81
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V

    .line 83
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockB:Lorg/ejml/data/FMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockX:Lorg/ejml/data/FMatrixRBlock;

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 85
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->blockX:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/LinearSolver_FDRB_to_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

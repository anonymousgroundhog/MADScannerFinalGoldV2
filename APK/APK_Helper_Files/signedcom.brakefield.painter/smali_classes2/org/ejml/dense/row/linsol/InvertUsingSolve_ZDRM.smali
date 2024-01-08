.class public Lorg/ejml/dense/row/linsol/InvertUsingSolve_ZDRM;
.super Ljava/lang/Object;
.source "InvertUsingSolve_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 45
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, p1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 47
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_ZDRM;->setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 49
    invoke-interface {p0, p2, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 36
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, p1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 38
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_ZDRM;->setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 40
    invoke-interface {p0, p3, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

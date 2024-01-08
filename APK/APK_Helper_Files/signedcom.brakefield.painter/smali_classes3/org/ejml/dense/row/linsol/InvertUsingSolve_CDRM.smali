.class public Lorg/ejml/dense/row/linsol/InvertUsingSolve_CDRM;
.super Ljava/lang/Object;
.source "InvertUsingSolve_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/CMatrixRMaj;",
            "Lorg/ejml/data/CMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 47
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, p1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 49
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_CDRM;->setIdentity(Lorg/ejml/data/CMatrixRMaj;)V

    .line 51
    invoke-interface {p0, p2, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/CMatrixRMaj;",
            "Lorg/ejml/data/CMatrixRMaj;",
            "Lorg/ejml/data/CMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 38
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, p1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 40
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->setIdentity(Lorg/ejml/data/CMatrixRMaj;)V

    .line 42
    invoke-interface {p0, p3, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

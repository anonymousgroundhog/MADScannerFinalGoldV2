.class public Lorg/ejml/dense/row/linsol/InvertUsingSolve_FDRM;
.super Ljava/lang/Object;
.source "InvertUsingSolve_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/FMatrix1Row;",
            "Lorg/ejml/data/FMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 50
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p1, v0, :cond_0

    .line 54
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 56
    invoke-interface {p0, p2, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A and A_inv must have the same dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/FMatrix1Row;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 39
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p1, v0, :cond_0

    .line 43
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 45
    invoke-interface {p0, p3, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A and A_inv must have the same dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

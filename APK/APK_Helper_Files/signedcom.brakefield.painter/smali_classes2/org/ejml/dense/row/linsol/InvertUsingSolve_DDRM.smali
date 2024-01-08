.class public Lorg/ejml/dense/row/linsol/InvertUsingSolve_DDRM;
.super Ljava/lang/Object;
.source "InvertUsingSolve_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/DMatrix1Row;",
            "Lorg/ejml/data/DMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 48
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p1, v0, :cond_0

    .line 52
    invoke-static {p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 54
    invoke-interface {p0, p2, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lcom/google/android/gms/common/util/jw/utcqmHsaH;->UPHLFvhyuwxiVW:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/DMatrix1Row;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            ")V"
        }
    .end annotation

    .line 37
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p1, v0, :cond_0

    .line 41
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 43
    invoke-interface {p0, p3, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->IiFiiWOo:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

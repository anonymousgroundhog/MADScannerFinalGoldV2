.class public Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;
.super Ljava/lang/Object;
.source "LinearSolverUnrolled_DDRM.java"

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
.field A:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TD;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 6

    .line 57
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_1

    .line 59
    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    invoke-virtual {p1, v1, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

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

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported by this solver."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 38
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 42
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

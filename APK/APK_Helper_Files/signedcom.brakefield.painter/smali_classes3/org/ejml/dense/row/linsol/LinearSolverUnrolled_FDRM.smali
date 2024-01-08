.class public Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;
.super Ljava/lang/Object;
.source "LinearSolverUnrolled_FDRM.java"

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
.field A:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_1

    .line 61
    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

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

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported by this solver."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 40
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 44
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/LinearSolverUnrolled_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

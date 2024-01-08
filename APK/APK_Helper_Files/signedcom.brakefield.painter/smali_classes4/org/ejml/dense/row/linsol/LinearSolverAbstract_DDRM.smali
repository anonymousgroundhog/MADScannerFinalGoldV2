.class public abstract Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.super Ljava/lang/Object;
.source "LinearSolverAbstract_DDRM.java"

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
.field protected A:Lorg/ejml/data/DMatrixRMaj;

.field protected numCols:I

.field protected numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _setA(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 50
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->numRows:I

    .line 51
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->numCols:I

    return-void
.end method

.method public getA()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/linsol/InvertUsingSolve_DDRM;->invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixRMaj;)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

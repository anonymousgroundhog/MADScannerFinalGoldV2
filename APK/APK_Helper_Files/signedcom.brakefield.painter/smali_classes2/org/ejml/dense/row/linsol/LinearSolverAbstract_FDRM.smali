.class public abstract Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.super Ljava/lang/Object;
.source "LinearSolverAbstract_FDRM.java"

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
.field protected A:Lorg/ejml/data/FMatrixRMaj;

.field protected numCols:I

.field protected numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _setA(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 52
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->numRows:I

    .line 53
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->numCols:I

    return-void
.end method

.method public getA()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/linsol/InvertUsingSolve_FDRM;->invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixRMaj;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must call setA() first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

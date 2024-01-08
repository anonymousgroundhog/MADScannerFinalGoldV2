.class public abstract Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.super Ljava/lang/Object;
.source "LinearSolverAbstract_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Lorg/ejml/data/ZMatrixRMaj;

.field protected numCols:I

.field protected numRows:I

.field protected stride:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _setA(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->A:Lorg/ejml/data/ZMatrixRMaj;

    .line 51
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->numRows:I

    .line 52
    iget p1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->numCols:I

    mul-int/lit8 p1, p1, 0x2

    .line 53
    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->stride:I

    return-void
.end method

.method public getA()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->A:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->invert(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public invert(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;->A:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/linsol/InvertUsingSolve_ZDRM;->invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

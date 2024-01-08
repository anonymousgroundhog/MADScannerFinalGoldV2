.class public abstract Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.super Ljava/lang/Object;
.source "LinearSolverAbstract_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Lorg/ejml/data/CMatrixRMaj;

.field protected numCols:I

.field protected numRows:I

.field protected stride:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _setA(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->A:Lorg/ejml/data/CMatrixRMaj;

    .line 53
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->numRows:I

    .line 54
    iget p1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->numCols:I

    mul-int/lit8 p1, p1, 0x2

    .line 55
    iput p1, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->stride:I

    return-void
.end method

.method public getA()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->A:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->A:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/linsol/InvertUsingSolve_CDRM;->invert(Lorg/ejml/interfaces/linsol/LinearSolverDense;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;->invert(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

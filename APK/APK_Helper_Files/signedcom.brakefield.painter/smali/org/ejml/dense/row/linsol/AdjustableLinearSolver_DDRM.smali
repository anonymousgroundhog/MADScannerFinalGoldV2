.class public interface abstract Lorg/ejml/dense/row/linsol/AdjustableLinearSolver_DDRM;
.super Ljava/lang/Object;
.source "AdjustableLinearSolver_DDRM.java"

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


# virtual methods
.method public abstract addRowToA([DI)Z
.end method

.method public abstract removeRowFromA(I)Z
.end method

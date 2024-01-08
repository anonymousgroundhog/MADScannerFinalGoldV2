.class public interface abstract Lorg/ejml/interfaces/linsol/LinearSolverSparse;
.super Ljava/lang/Object;
.source "LinearSolverSparse.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/ejml/data/Matrix;",
        "D::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolver<",
        "TS;TD;>;"
    }
.end annotation


# virtual methods
.method public abstract isStructureLocked()Z
.end method

.method public abstract setStructureLocked(Z)V
.end method

.method public abstract solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation
.end method

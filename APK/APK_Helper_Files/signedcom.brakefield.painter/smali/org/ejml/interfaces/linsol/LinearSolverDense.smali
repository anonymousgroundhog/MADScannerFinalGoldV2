.class public interface abstract Lorg/ejml/interfaces/linsol/LinearSolverDense;
.super Ljava/lang/Object;
.source "LinearSolverDense.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolver<",
        "TT;TT;>;"
    }
.end annotation


# virtual methods
.method public abstract invert(Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

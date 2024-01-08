.class public interface abstract Lorg/ejml/interfaces/linsol/LinearSolver;
.super Ljava/lang/Object;
.source "LinearSolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/ejml/data/Matrix;",
        "D::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Decomposition::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TDecomposition;"
        }
    .end annotation
.end method

.method public abstract modifiesA()Z
.end method

.method public abstract modifiesB()Z
.end method

.method public abstract quality()D
.end method

.method public abstract setA(Lorg/ejml/data/Matrix;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)V"
        }
    .end annotation
.end method

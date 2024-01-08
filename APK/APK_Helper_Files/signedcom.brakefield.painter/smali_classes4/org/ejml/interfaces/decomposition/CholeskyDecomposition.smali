.class public interface abstract Lorg/ejml/interfaces/decomposition/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MatrixType::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "TMatrixType;>;"
    }
.end annotation


# virtual methods
.method public abstract getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract isLower()Z
.end method

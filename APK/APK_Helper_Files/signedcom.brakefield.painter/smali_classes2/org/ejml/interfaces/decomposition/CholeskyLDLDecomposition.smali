.class public interface abstract Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition;
.super Ljava/lang/Object;
.source "CholeskyLDLDecomposition.java"

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
.method public abstract getD(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract getL(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method

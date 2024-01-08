.class public interface abstract Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition;
.super Ljava/lang/Object;
.source "TridiagonalSimilarDecomposition.java"

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
.method public abstract getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;Z)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method

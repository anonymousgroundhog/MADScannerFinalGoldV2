.class public interface abstract Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition;
.super Ljava/lang/Object;
.source "BidiagonalDecomposition.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getB(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method

.method public abstract getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation
.end method

.method public abstract getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation
.end method

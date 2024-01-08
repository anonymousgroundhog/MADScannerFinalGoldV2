.class public interface abstract Lorg/ejml/interfaces/decomposition/EigenDecomposition;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"

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
.method public abstract getEigenVector(I)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getNumberOfEigenvalues()I
.end method

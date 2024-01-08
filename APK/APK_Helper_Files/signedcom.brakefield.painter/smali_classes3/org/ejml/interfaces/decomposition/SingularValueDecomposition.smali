.class public interface abstract Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"

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
.method public abstract getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method

.method public abstract getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method

.method public abstract getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract isCompact()Z
.end method

.method public abstract numCols()I
.end method

.method public abstract numRows()I
.end method

.method public abstract numberOfSingularValues()I
.end method

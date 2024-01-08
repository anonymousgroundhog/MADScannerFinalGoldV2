.class public interface abstract Lorg/ejml/interfaces/decomposition/LUDecomposition;
.super Ljava/lang/Object;
.source "LUDecomposition.java"

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
.method public abstract getLower(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
.end method

.method public abstract getUpper(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract isSingular()Z
.end method

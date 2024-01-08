.class public interface abstract Lorg/ejml/sparse/csc/decomposition/qr/QrpSparseDecomposition;
.super Ljava/lang/Object;
.source "QrpSparseDecomposition.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getColPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getColPivots()[I
.end method

.method public abstract getRank()I
.end method

.method public abstract getRowPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getRowPivots()[I
.end method

.method public abstract isColumnPivot()Z
.end method

.method public abstract isRowPivot()Z
.end method

.class public interface abstract Lorg/ejml/simple/SimpleSparseOperations;
.super Ljava/lang/Object;
.source "SimpleSparseOperations.java"

# interfaces
.implements Lorg/ejml/simple/SimpleOperations;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/ejml/data/MatrixSparse;",
        "D::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleOperations<",
        "TS;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract extractDiag(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TD;)V"
        }
    .end annotation
.end method

.method public abstract mult(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TD;TD;)V"
        }
    .end annotation
.end method

.method public abstract multTransA(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TD;TD;)V"
        }
    .end annotation
.end method

.class public interface abstract Lorg/ejml/interfaces/decomposition/DecompositionInterface;
.super Ljava/lang/Object;
.source "DecompositionInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract decompose(Lorg/ejml/data/Matrix;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract inputModified()Z
.end method

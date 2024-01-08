.class public interface abstract Lorg/ejml/simple/SimpleOperations;
.super Ljava/lang/Object;
.source "SimpleOperations.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract changeSign(Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract conditionP2(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract determinant(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;)V"
        }
    .end annotation
.end method

.method public abstract dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)D"
        }
    .end annotation
.end method

.method public abstract elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract elementMinAbs(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;)V"
        }
    .end annotation
.end method

.method public abstract elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract elementSum(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIITT;II)V"
        }
    .end annotation
.end method

.method public abstract fill(Lorg/ejml/data/Matrix;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation
.end method

.method public abstract get(Lorg/ejml/data/Matrix;II)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)D"
        }
    .end annotation
.end method

.method public abstract get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lorg/ejml/data/Complex_F64;",
            ")V"
        }
    .end annotation
.end method

.method public abstract hasUncountable(Lorg/ejml/data/Matrix;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;D)Z"
        }
    .end annotation
.end method

.method public abstract kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;)V"
        }
    .end annotation
.end method

.method public abstract minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract normF(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;DTT;TT;)V"
        }
    .end annotation
.end method

.method public abstract plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;)V"
        }
    .end annotation
.end method

.method public abstract plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;TT;)V"
        }
    .end annotation
.end method

.method public abstract plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
.end method

.method public abstract pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;DTT;)V"
        }
    .end annotation
.end method

.method public abstract set(Lorg/ejml/data/Matrix;IID)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IID)V"
        }
    .end annotation
.end method

.method public abstract set(Lorg/ejml/data/Matrix;IIDD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIDD)V"
        }
    .end annotation
.end method

.method public varargs abstract setColumn(Lorg/ejml/data/Matrix;II[D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II[D)V"
        }
    .end annotation
.end method

.method public abstract setIdentity(Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public varargs abstract setRow(Lorg/ejml/data/Matrix;II[D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II[D)V"
        }
    .end annotation
.end method

.method public abstract solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract trace(Lorg/ejml/data/Matrix;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation
.end method

.method public abstract transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract zero(Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

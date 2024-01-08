.class public interface abstract Lorg/ejml/data/FMatrixFixed;
.super Ljava/lang/Object;
.source "FMatrixFixed.java"

# interfaces
.implements Lorg/ejml/data/FMatrix;


# virtual methods
.method public create(II)Lorg/ejml/data/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">(II)TT;"
        }
    .end annotation

    .line 31
    invoke-interface {p0}, Lorg/ejml/data/FMatrixFixed;->getNumRows()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lorg/ejml/data/FMatrixFixed;->getNumCols()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 32
    invoke-interface {p0}, Lorg/ejml/data/FMatrixFixed;->createLike()Lorg/ejml/data/Matrix;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Fixed sized matrices can\'t be used to create matrices of arbitrary shape"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

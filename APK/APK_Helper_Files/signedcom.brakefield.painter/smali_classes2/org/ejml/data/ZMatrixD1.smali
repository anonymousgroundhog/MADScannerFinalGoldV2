.class public abstract Lorg/ejml/data/ZMatrixD1;
.super Ljava/lang/Object;
.source "ZMatrixD1.java"

# interfaces
.implements Lorg/ejml/data/ZMatrix;
.implements Lorg/ejml/data/ReshapeMatrix;


# instance fields
.field public data:[D

.field public numCols:I

.field public numRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    return-void
.end method


# virtual methods
.method public getData()[D
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    return-object v0
.end method

.method public abstract getIndex(II)I
.end method

.method public getNumCols()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 2

    .line 127
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    return v0
.end method

.method public set(Lorg/ejml/data/ZMatrixD1;)V
    .locals 3

    .line 83
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    .line 89
    iget-object p1, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    iget-object v1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Lorg/ejml/MatrixDimensionException;

    const-string v0, "The two matrices do not have compatible shapes."

    invoke-direct {p1, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData([D)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    return-void
.end method

.method public setNumCols(I)V
    .locals 0

    .line 123
    iput p1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .line 114
    iput p1, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    return-void
.end method

.class public abstract Lorg/ejml/data/DMatrixD1;
.super Ljava/lang/Object;
.source "DMatrixD1.java"

# interfaces
.implements Lorg/ejml/data/ReshapeMatrix;
.implements Lorg/ejml/data/DMatrix;


# instance fields
.field public data:[D

.field public numCols:I

.field public numRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    return-void
.end method


# virtual methods
.method public div(ID)D
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v1, v0, p1

    div-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public get(I)D
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getData()[D
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    return-object v0
.end method

.method public abstract getIndex(II)I
.end method

.method public getNumCols()I
    .locals 1

    .line 267
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    return v0
.end method

.method public iterator(ZIIII)Lorg/ejml/data/DMatrixIterator;
    .locals 8

    .line 241
    new-instance v7, Lorg/ejml/data/DMatrixIterator;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/DMatrixIterator;-><init>(Lorg/ejml/data/DMatrixD1;ZIIII)V

    return-object v7
.end method

.method public minus(ID)D
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v1, v0, p1

    sub-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public plus(ID)D
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public print()V
    .locals 2

    .line 246
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 251
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public reshape(II)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    return-void
.end method

.method public abstract reshape(IIZ)V
.end method

.method public set(ID)D
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aput-wide p2, v0, p1

    return-wide p2
.end method

.method public set(Lorg/ejml/data/DMatrixD1;)V
    .locals 3

    .line 82
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 84
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    .line 86
    iget-object p1, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setData([D)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    return-void
.end method

.method public setNumCols(I)V
    .locals 0

    .line 285
    iput p1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .line 276
    iput p1, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    return-void
.end method

.method public times(ID)D
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v1, v0, p1

    mul-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

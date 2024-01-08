.class public abstract Lorg/ejml/data/FMatrixD1;
.super Ljava/lang/Object;
.source "FMatrixD1.java"

# interfaces
.implements Lorg/ejml/data/ReshapeMatrix;
.implements Lorg/ejml/data/FMatrix;


# instance fields
.field public data:[F

.field public numCols:I

.field public numRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    return-void
.end method


# virtual methods
.method public div(IF)F
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v1, v0, p1

    div-float/2addr v1, p2

    aput v1, v0, p1

    return v1
.end method

.method public get(I)F
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget p1, v0, p1

    return p1
.end method

.method public getData()[F
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    return-object v0
.end method

.method public abstract getIndex(II)I
.end method

.method public getNumCols()I
    .locals 1

    .line 269
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    return v0
.end method

.method public iterator(ZIIII)Lorg/ejml/data/FMatrixIterator;
    .locals 8

    .line 243
    new-instance v7, Lorg/ejml/data/FMatrixIterator;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/FMatrixIterator;-><init>(Lorg/ejml/data/FMatrixD1;ZIIII)V

    return-object v7
.end method

.method public minus(IF)F
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v1, v0, p1

    sub-float/2addr v1, p2

    aput v1, v0, p1

    return v1
.end method

.method public plus(IF)F
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    return v1
.end method

.method public print()V
    .locals 2

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public reshape(II)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    return-void
.end method

.method public abstract reshape(IIZ)V
.end method

.method public set(IF)F
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aput p2, v0, p1

    return p2
.end method

.method public set(Lorg/ejml/data/FMatrixD1;)V
    .locals 3

    .line 84
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 86
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    .line 88
    iget-object p1, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setData([F)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    return-void
.end method

.method public setNumCols(I)V
    .locals 0

    .line 287
    iput p1, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .line 278
    iput p1, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    return-void
.end method

.method public times(IF)F
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v1, v0, p1

    mul-float/2addr v1, p2

    aput v1, v0, p1

    return v1
.end method

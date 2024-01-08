.class public Lorg/ejml/dense/block/decomposition/bidiagonal/BidiagonalHelper_DDRB;
.super Ljava/lang/Object;
.source "BidiagonalHelper_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidiagOuterBlocks(ILorg/ejml/data/DSubmatrixD1;[D[D)Z
    .locals 9

    .line 41
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 50
    invoke-static {p0, p1, p2, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeHouseHolderCol(ILorg/ejml/data/DSubmatrixD1;[DI)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 54
    :cond_0
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v2, v4

    aget-wide v2, p2, v2

    invoke-static {p0, p1, v4, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->rank1UpdateMultR_Col(ILorg/ejml/data/DSubmatrixD1;ID)V

    .line 57
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v2, v4

    aget-wide v2, p2, v2

    invoke-static {p0, p1, v4, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->rank1UpdateMultR_TopRow(ILorg/ejml/data/DSubmatrixD1;ID)V

    .line 59
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "After column stuff"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    iget-object v2, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixD1;->print()V

    .line 63
    invoke-static {p0, p1, p3, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeHouseHolderRow(ILorg/ejml/data/DSubmatrixD1;[DI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v8, v4, 0x1

    .line 67
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v2, v4

    aget-wide v6, p3, v2

    move v2, p0

    move-object v3, p1

    move v5, v8

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->rank1UpdateMultL_Row(ILorg/ejml/data/DSubmatrixD1;IID)V

    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "After update row"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget-object v2, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixD1;->print()V

    .line 77
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "After row stuff"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    iget-object v2, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixD1;->print()V

    move v4, v8

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

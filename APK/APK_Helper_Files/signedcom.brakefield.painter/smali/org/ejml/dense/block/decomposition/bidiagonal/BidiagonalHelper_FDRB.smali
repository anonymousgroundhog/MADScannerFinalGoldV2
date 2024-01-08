.class public Lorg/ejml/dense/block/decomposition/bidiagonal/BidiagonalHelper_FDRB;
.super Ljava/lang/Object;
.source "BidiagonalHelper_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidiagOuterBlocks(ILorg/ejml/data/FSubmatrixD1;[F[F)Z
    .locals 5

    .line 43
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 44
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 52
    invoke-static {p0, p1, p2, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeHouseHolderCol(ILorg/ejml/data/FSubmatrixD1;[FI)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 56
    :cond_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    aget v3, p2, v3

    invoke-static {p0, p1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->rank1UpdateMultR_Col(ILorg/ejml/data/FSubmatrixD1;IF)V

    .line 59
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    aget v3, p2, v3

    invoke-static {p0, p1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->rank1UpdateMultR_TopRow(ILorg/ejml/data/FSubmatrixD1;IF)V

    .line 61
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "After column stuff"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    iget-object v3, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    invoke-virtual {v3}, Lorg/ejml/data/FMatrixD1;->print()V

    .line 65
    invoke-static {p0, p1, p3, v2}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeHouseHolderRow(ILorg/ejml/data/FSubmatrixD1;[FI)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 69
    iget v4, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v4, v2

    aget v4, p3, v4

    invoke-static {p0, p1, v2, v3, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->rank1UpdateMultL_Row(ILorg/ejml/data/FSubmatrixD1;IIF)V

    .line 71
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "After update row"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget-object v2, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    invoke-virtual {v2}, Lorg/ejml/data/FMatrixD1;->print()V

    .line 79
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "After row stuff"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    iget-object v2, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    invoke-virtual {v2}, Lorg/ejml/data/FMatrixD1;->print()V

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

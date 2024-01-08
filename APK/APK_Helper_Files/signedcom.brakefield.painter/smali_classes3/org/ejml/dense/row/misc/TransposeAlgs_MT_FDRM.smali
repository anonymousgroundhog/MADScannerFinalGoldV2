.class public Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;
.super Ljava/lang/Object;
.source "TransposeAlgs_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static block(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 2

    .line 69
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v1, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FMatrix1Row;ILorg/ejml/data/FMatrix1Row;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p2, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IIILpabeles/concurrency/IntRangeConsumer;)V

    return-void
.end method

.method static synthetic lambda$block$1(Lorg/ejml/data/FMatrix1Row;ILorg/ejml/data/FMatrix1Row;II)V
    .locals 9

    sub-int/2addr p4, p3

    .line 72
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_2

    .line 76
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    :goto_1
    if-ge v0, v2, :cond_1

    add-int v3, p3, p4

    move v4, p3

    move v5, v0

    :goto_2
    if-ge v4, v3, :cond_0

    .line 90
    iget-object v6, p2, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v8, v8, v5

    aput v8, v6, v4

    .line 88
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_2

    .line 92
    :cond_0
    iget v3, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$square$0(Lorg/ejml/data/FMatrix1Row;I)V
    .locals 5

    .line 43
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 44
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v1

    .line 46
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v3

    :goto_0
    add-int/2addr v1, p1

    if-ge v0, v2, :cond_0

    .line 48
    iget-object p1, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget p1, p1, v0

    .line 49
    iget-object v3, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    iget-object v4, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v4, v4, v1

    aput v4, v3, v0

    .line 50
    iget-object v3, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aput p1, v3, v1

    add-int/lit8 v0, v0, 0x1

    .line 47
    iget p1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$standard$2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 5

    .line 106
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v0, p2

    .line 109
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    iget-object v2, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v4, v4, p2

    aput v4, v2, v0

    .line 112
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr p2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static square(Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 42
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v1, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/FMatrix1Row;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public static standard(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 105
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    new-instance v1, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

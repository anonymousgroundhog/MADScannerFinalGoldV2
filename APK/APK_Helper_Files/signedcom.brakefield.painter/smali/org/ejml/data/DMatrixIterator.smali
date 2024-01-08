.class public Lorg/ejml/data/DMatrixIterator;
.super Ljava/lang/Object;
.source "DMatrixIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/ejml/data/DMatrixD1;

.field private index:I

.field private minCol:I

.field private minRow:I

.field private rowMajor:Z

.field private size:I

.field subCol:I

.field subRow:I

.field private submatrixStride:I


# direct methods
.method public constructor <init>(Lorg/ejml/data/DMatrixD1;ZIIII)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    if-lt p6, p4, :cond_4

    if-lt p5, p3, :cond_3

    .line 72
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ge p6, v0, :cond_2

    .line 74
    iget v0, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ge p5, v0, :cond_1

    .line 77
    iput-object p1, p0, Lorg/ejml/data/DMatrixIterator;->a:Lorg/ejml/data/DMatrixD1;

    .line 78
    iput-boolean p2, p0, Lorg/ejml/data/DMatrixIterator;->rowMajor:Z

    .line 79
    iput p4, p0, Lorg/ejml/data/DMatrixIterator;->minCol:I

    .line 80
    iput p3, p0, Lorg/ejml/data/DMatrixIterator;->minRow:I

    sub-int/2addr p6, p4

    add-int/lit8 p6, p6, 0x1

    sub-int/2addr p5, p3

    add-int/lit8 p5, p5, 0x1

    mul-int p1, p6, p5

    .line 82
    iput p1, p0, Lorg/ejml/data/DMatrixIterator;->size:I

    if-eqz p2, :cond_0

    .line 85
    iput p6, p0, Lorg/ejml/data/DMatrixIterator;->submatrixStride:I

    goto :goto_0

    .line 87
    :cond_0
    iput p5, p0, Lorg/ejml/data/DMatrixIterator;->submatrixStride:I

    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxRow must be < numCRows"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxCol must be < numCols"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxRow has to be more than or equal to minCol"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxCol has to be more than or equal to minCol"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 92
    iget v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/DMatrixIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowMajor()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixIterator;->rowMajor:Z

    return v0
.end method

.method public next()Ljava/lang/Double;
    .locals 4

    .line 97
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixIterator;->rowMajor:Z

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/DMatrixIterator;->submatrixStride:I

    div-int v2, v0, v1

    iput v2, p0, Lorg/ejml/data/DMatrixIterator;->subRow:I

    .line 99
    rem-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/DMatrixIterator;->subCol:I

    goto :goto_0

    .line 101
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/DMatrixIterator;->submatrixStride:I

    rem-int v2, v0, v1

    iput v2, p0, Lorg/ejml/data/DMatrixIterator;->subRow:I

    .line 102
    div-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/DMatrixIterator;->subCol:I

    .line 104
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/DMatrixIterator;->index:I

    .line 105
    iget-object v0, p0, Lorg/ejml/data/DMatrixIterator;->a:Lorg/ejml/data/DMatrixD1;

    iget v1, p0, Lorg/ejml/data/DMatrixIterator;->subRow:I

    iget v2, p0, Lorg/ejml/data/DMatrixIterator;->minRow:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DMatrixIterator;->subCol:I

    iget v3, p0, Lorg/ejml/data/DMatrixIterator;->minCol:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixD1;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixIterator;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(D)V
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/ejml/data/DMatrixIterator;->a:Lorg/ejml/data/DMatrixD1;

    iget v1, p0, Lorg/ejml/data/DMatrixIterator;->subRow:I

    iget v2, p0, Lorg/ejml/data/DMatrixIterator;->minRow:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DMatrixIterator;->subCol:I

    iget v3, p0, Lorg/ejml/data/DMatrixIterator;->minCol:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/ejml/data/DMatrixD1;->set(IID)V

    return-void
.end method

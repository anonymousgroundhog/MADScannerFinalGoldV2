.class public Lorg/ejml/dense/row/misc/TransposeAlgs_FDRM;
.super Ljava/lang/Object;
.source "TransposeAlgs_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static block(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_3

    .line 74
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    add-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 77
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v4, v1

    move v5, v0

    .line 80
    :goto_1
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_2

    .line 81
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sub-int/2addr v6, v5

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v4

    :goto_2
    if-ge v4, v6, :cond_1

    add-int v7, v1, v2

    move v8, v1

    move v9, v4

    :goto_3
    if-ge v8, v7, :cond_0

    .line 95
    iget-object v10, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v11, v8, 0x1

    iget-object v12, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v12, v12, v9

    aput v12, v10, v8

    .line 93
    iget v8, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v9, v8

    move v8, v11

    goto :goto_3

    .line 97
    :cond_0
    iget v7, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v5, p2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static square(Lorg/ejml/data/FMatrix1Row;)V
    .locals 7

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_1

    .line 44
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 45
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v3, v2

    .line 47
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v4, v2

    :goto_1
    add-int/2addr v4, v0

    if-ge v1, v3, :cond_0

    .line 49
    iget-object v0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v1

    .line 50
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v4

    aput v6, v5, v1

    .line 51
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aput v0, v5, v4

    add-int/lit8 v1, v1, 0x1

    .line 48
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standard(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 7

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_1

    .line 113
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    .line 116
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v2, v1

    move v3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 118
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v3

    aput v6, v4, v1

    .line 119
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v3, v1

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

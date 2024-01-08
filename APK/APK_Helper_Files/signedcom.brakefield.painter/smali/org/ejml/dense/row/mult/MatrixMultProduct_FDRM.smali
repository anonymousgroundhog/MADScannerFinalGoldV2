.class public Lorg/ejml/dense/row/mult/MatrixMultProduct_FDRM;
.super Ljava/lang/Object;
.source "MatrixMultProduct_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inner_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 11

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_4

    .line 98
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 99
    iget-object v2, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v2, v2, v0

    move v3, v0

    .line 100
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_0

    .line 101
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v3

    mul-float/2addr v6, v2

    aput v6, v4, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 104
    :goto_2
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 105
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    .line 106
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 107
    iget-object v4, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v4, v4, v3

    move v5, v0

    .line 108
    :goto_3
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_1

    .line 109
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v8, v6, v2

    iget-object v9, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v4

    add-float/2addr v8, v3

    aput v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    move v3, v10

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    :cond_2
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    move v3, v0

    move v2, v1

    .line 115
    :goto_4
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_3

    .line 116
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    iget-object v5, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v1

    add-int/lit8 v3, v3, 0x1

    .line 115
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v1, v2

    move v2, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static inner_reorder_lower(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 13

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    .line 166
    invoke-virtual {p1, v0, v0}, Lorg/ejml/data/FMatrix1Row;->reshape(II)V

    .line 168
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_0

    .line 171
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    aget v6, v4, v5

    iget-object v7, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v7, v7, v2

    iget-object v8, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v8, v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 174
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_2

    mul-int v4, v3, v0

    .line 176
    iget-object v5, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int v6, v2, v4

    aget v5, v5, v6

    mul-int v6, v2, v0

    move v7, v1

    :goto_3
    if-gt v7, v2, :cond_1

    .line 179
    iget-object v8, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v9, v6, 0x1

    aget v10, v8, v6

    iget-object v11, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v12, v4, 0x1

    aget v4, v11, v4

    mul-float/2addr v4, v5

    add-float/2addr v10, v4

    aput v10, v8, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v9

    move v4, v12

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static inner_reorder_upper(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 11

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_3

    .line 138
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 139
    iget-object v2, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v2, v2, v0

    move v3, v0

    .line 140
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_0

    .line 141
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v6, v6, v3

    mul-float/2addr v6, v2

    aput v6, v4, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 144
    :goto_2
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v1, v2, :cond_2

    .line 145
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    .line 146
    iget v3, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 147
    iget-object v4, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v4, v4, v3

    move v5, v0

    .line 148
    :goto_3
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_1

    .line 149
    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v8, v6, v2

    iget-object v9, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v10, v3, 0x1

    aget v3, v9, v3

    mul-float/2addr v3, v4

    add-float/2addr v8, v3

    aput v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    move v3, v10

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static inner_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 10

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_2

    move v1, v0

    .line 70
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 71
    iget v2, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 72
    iget v3, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 76
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    const/4 v5, 0x0

    move v6, v0

    move v7, v1

    :goto_2
    if-ge v6, v4, :cond_0

    .line 78
    iget-object v8, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v8, v8, v6

    iget-object v9, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v9, v9, v7

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 77
    iget v8, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v6, v8

    iget v8, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v7, v8

    goto :goto_2

    .line 80
    :cond_0
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    iget-object v6, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aput v5, v6, v3

    aput v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static outer(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 10

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_2

    .line 43
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    move v3, v0

    move v2, v1

    .line 45
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_1

    .line 46
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v4, v0

    .line 47
    iget v5, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    mul-int/2addr v5, v3

    .line 49
    iget v6, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v4, v6, :cond_0

    .line 51
    iget-object v8, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v8, v8, v4

    iget-object v9, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 53
    :cond_0
    iget-object v4, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    iget-object v5, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    add-int/lit8 v6, v1, 0x1

    aput v7, v5, v1

    aput v7, v4, v2

    add-int/lit8 v3, v3, 0x1

    .line 45
    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/2addr v2, v1

    move v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

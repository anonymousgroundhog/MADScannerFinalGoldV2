.class public Lorg/ejml/dense/row/mult/MatrixMultProduct_DDRM;
.super Ljava/lang/Object;
.source "MatrixMultProduct_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inner_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 95
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v2, v3, :cond_4

    .line 96
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    .line 97
    iget-object v4, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v4, v4, v2

    move v6, v2

    .line 98
    :goto_1
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_0

    .line 99
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v3, 0x1

    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v6

    mul-double/2addr v9, v4

    aput-wide v9, v7, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 102
    :goto_2
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_2

    .line 103
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    .line 104
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 105
    iget-object v6, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v6, v6, v5

    move v8, v2

    .line 106
    :goto_3
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v8, v9, :cond_1

    .line 107
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, v9, v4

    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v5, 0x1

    aget-wide v15, v13, v5

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    aput-wide v11, v9, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v10

    move v5, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 111
    :cond_2
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    move v5, v2

    move v4, v3

    .line 113
    :goto_4
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_3

    .line 114
    iget-object v6, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v4

    aput-wide v9, v6, v3

    add-int/lit8 v5, v5, 0x1

    .line 113
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v4

    move v4, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static inner_reorder_lower(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 163
    iget v2, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    .line 164
    invoke-virtual {v1, v2, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 166
    iget-object v3, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    move v5, v3

    :goto_1
    if-gt v5, v4, :cond_0

    .line 169
    iget-object v6, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-int v7, v4, v2

    add-int/2addr v7, v5

    aget-wide v8, v6, v7

    iget-object v10, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v10, v10, v4

    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 172
    :goto_2
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_2

    mul-int v6, v5, v2

    .line 174
    iget-object v7, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int v8, v4, v6

    aget-wide v7, v7, v8

    mul-int v9, v4, v2

    move v10, v3

    :goto_3
    if-gt v10, v4, :cond_1

    .line 177
    iget-object v11, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v9, 0x1

    aget-wide v13, v11, v9

    iget-object v15, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v6, 0x1

    aget-wide v17, v15, v6

    mul-double v17, v17, v7

    add-double v13, v13, v17

    aput-wide v13, v11, v9

    add-int/lit8 v10, v10, 0x1

    move v9, v12

    move/from16 v6, v16

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static inner_reorder_upper(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 135
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v2, v3, :cond_3

    .line 136
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    .line 137
    iget-object v4, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v4, v4, v2

    move v6, v2

    .line 138
    :goto_1
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_0

    .line 139
    iget-object v7, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v3, 0x1

    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v6

    mul-double/2addr v9, v4

    aput-wide v9, v7, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 142
    :goto_2
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_2

    .line 143
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    .line 144
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 145
    iget-object v6, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v6, v6, v5

    move v8, v2

    .line 146
    :goto_3
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v8, v9, :cond_1

    .line 147
    iget-object v9, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, v9, v4

    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v5, 0x1

    aget-wide v15, v13, v5

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    aput-wide v11, v9, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v10

    move v5, v14

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

.method public static inner_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 13

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_2

    move v1, v0

    .line 68
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_1

    .line 69
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 70
    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 74
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    const-wide/16 v5, 0x0

    move v7, v0

    move v8, v1

    :goto_2
    if-ge v7, v4, :cond_0

    .line 76
    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v7

    iget-object v11, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 75
    iget v9, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v9

    iget v9, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v9

    goto :goto_2

    .line 78
    :cond_0
    iget-object v4, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    iget-object v7, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aput-wide v5, v7, v3

    aput-wide v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static outer(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 13

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_2

    .line 41
    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    move v3, v0

    move v2, v1

    .line 43
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_1

    .line 44
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v0

    .line 45
    iget v5, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v3

    .line 47
    iget v6, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v6, v4

    const-wide/16 v7, 0x0

    :goto_2
    if-ge v4, v6, :cond_0

    .line 49
    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v4

    iget-object v11, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 51
    :cond_0
    iget-object v4, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    iget-object v5, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v6, v1, 0x1

    aput-wide v7, v5, v1

    aput-wide v7, v4, v2

    add-int/lit8 v3, v3, 0x1

    .line 43
    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v2, v1

    move v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.class public Lorg/ejml/dense/row/misc/TransposeAlgs_DDRM;
.super Ljava/lang/Object;
.source "TransposeAlgs_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static block(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    .line 70
    :goto_0
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_3

    .line 72
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v4

    .line 75
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v4

    move v8, v3

    .line 78
    :goto_1
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v8, v9, :cond_2

    .line 79
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sub-int/2addr v9, v8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    :goto_2
    if-ge v7, v9, :cond_1

    add-int v10, v4, v5

    move v11, v4

    move v12, v7

    :goto_3
    if-ge v11, v10, :cond_0

    .line 93
    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v11, 0x1

    iget-object v15, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v15, v15, v12

    aput-wide v15, v13, v11

    .line 91
    iget v11, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v12, v11

    move v11, v14

    goto :goto_3

    .line 95
    :cond_0
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v8, v2

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static square(Lorg/ejml/data/DMatrix1Row;)V
    .locals 9

    const/4 v0, 0x0

    .line 41
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_1

    .line 42
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 43
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v3, v2

    .line 45
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v2

    :goto_1
    add-int/2addr v4, v0

    if-ge v1, v3, :cond_0

    .line 47
    iget-object v0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v5, v0, v1

    .line 48
    iget-object v0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    iget-object v7, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v4

    aput-wide v7, v0, v1

    .line 49
    iget-object v0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aput-wide v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 46
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standard(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 8

    const/4 v0, 0x0

    .line 110
    :goto_0
    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v0, v1, :cond_1

    .line 111
    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v1, v0

    .line 114
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v2, v1

    move v3, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 116
    iget-object v4, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v1

    .line 117
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v1

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

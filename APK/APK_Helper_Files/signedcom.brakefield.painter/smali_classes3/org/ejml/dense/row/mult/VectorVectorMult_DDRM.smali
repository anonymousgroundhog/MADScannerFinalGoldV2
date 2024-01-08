.class public Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;
.super Ljava/lang/Object;
.source "VectorVectorMult_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterProd(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrix1Row;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 188
    iget v3, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    .line 189
    iget v4, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p0, v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move v5, v6

    move v7, v5

    :goto_0
    if-ge v5, v3, :cond_3

    .line 194
    invoke-virtual {v0, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v8

    move v10, v6

    :goto_1
    if-ge v10, v4, :cond_0

    add-int/lit8 v11, v7, 0x1

    .line 196
    invoke-virtual {v1, v10}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v12

    mul-double/2addr v12, v8

    invoke-virtual {v2, v7, v12, v13}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v10, v10, 0x1

    move v7, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    move v7, v5

    :goto_2
    if-ge v5, v3, :cond_3

    .line 201
    invoke-virtual {v0, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v8

    move v10, v6

    :goto_3
    if-ge v10, v4, :cond_2

    add-int/lit8 v11, v7, 0x1

    mul-double v12, p0, v8

    .line 203
    invoke-virtual {v1, v10}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-virtual {v2, v7, v12, v13}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v10, v10, 0x1

    move v7, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static householder(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 9

    .line 226
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 230
    invoke-virtual {p2, v4}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    invoke-virtual {p3, v4}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 233
    invoke-virtual {p3, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    invoke-virtual {p2, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, p0

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    invoke-virtual {p4, v3, v4, v5}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 50
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 54
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static innerProdA(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 17

    move-object/from16 v0, p1

    .line 71
    iget v1, v0, Lorg/ejml/data/DMatrixD1;->numRows:I

    .line 72
    iget v2, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    .line 74
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 76
    invoke-virtual/range {p2 .. p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v2, :cond_1

    move v9, v3

    move-wide v10, v4

    :goto_1
    if-ge v9, v1, :cond_0

    move-object/from16 v12, p0

    .line 85
    invoke-virtual {v12, v9}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v13

    invoke-virtual {v0, v9, v6}, Lorg/ejml/data/DMatrixD1;->unsafe_get(II)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p0

    move-object/from16 v9, p2

    .line 88
    invoke-virtual {v9, v6}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v13

    mul-double/2addr v10, v13

    add-double/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v7

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in y"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static innerProdTranA(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 16

    move-object/from16 v0, p1

    .line 106
    iget v1, v0, Lorg/ejml/data/DMatrixD1;->numRows:I

    .line 108
    iget v2, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v1, v2, :cond_4

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 113
    invoke-virtual/range {p2 .. p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    move-wide v6, v3

    :goto_0
    if-ge v5, v1, :cond_1

    move v8, v2

    move-wide v9, v3

    :goto_1
    if-ge v8, v1, :cond_0

    move-object/from16 v11, p0

    .line 122
    invoke-virtual {v11, v8}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v12

    invoke-virtual {v0, v5, v8}, Lorg/ejml/data/DMatrixD1;->unsafe_get(II)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v8, p2

    .line 125
    invoke-virtual {v8, v5}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v12

    mul-double/2addr v9, v12

    add-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v6

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in y"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static outerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrix1Row;)V
    .locals 11

    .line 153
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    .line 154
    iget v1, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 158
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_0

    add-int/lit8 v8, v4, 0x1

    .line 160
    invoke-virtual {p1, v7}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v9

    mul-double/2addr v9, v5

    invoke-virtual {p2, v4, v9, v10}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 18

    .line 288
    invoke-virtual/range {p3 .. p3}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    move-object/from16 v4, p3

    .line 292
    iget-object v5, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    move-object/from16 v8, p2

    .line 295
    iget-object v9, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v10, v3, 0x1

    aget-wide v11, v9, v3

    mul-double v13, p0, v5

    move-object/from16 v15, p4

    iget-object v1, v15, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v16, v1, v7

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    aput-wide v11, v9, v3

    add-int/lit8 v7, v7, 0x1

    move v3, v10

    goto :goto_1

    :cond_0
    move-object/from16 v8, p2

    move-object/from16 v15, p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 18

    .line 258
    invoke-virtual/range {p3 .. p3}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    move-object/from16 v4, p3

    .line 262
    iget-object v5, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    move-object/from16 v8, p5

    .line 265
    iget-object v9, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object/from16 v10, p2

    iget-object v11, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v11, v11, v3

    mul-double v13, p0, v5

    move-object/from16 v15, p4

    iget-object v1, v15, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v16, v1, v7

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    aput-wide v11, v9, v3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p2

    move-object/from16 v15, p4

    move-object/from16 v8, p5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

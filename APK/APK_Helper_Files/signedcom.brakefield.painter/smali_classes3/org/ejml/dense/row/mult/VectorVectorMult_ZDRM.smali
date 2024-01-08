.class public Lorg/ejml/dense/row/mult/VectorVectorMult_ZDRM;
.super Ljava/lang/Object;
.source "VectorVectorMult_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static innerProd(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Lorg/ejml/data/Complex_F64;

    invoke-direct {v2}, Lorg/ejml/data/Complex_F64;-><init>()V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    iput-wide v3, v2, Lorg/ejml/data/Complex_F64;->real:D

    .line 55
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 58
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    .line 59
    iget-object v7, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v8

    .line 61
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v11, v7, v4

    .line 62
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v7, v7, v8

    .line 64
    iget-wide v13, v2, Lorg/ejml/data/Complex_F64;->real:D

    mul-double v15, v5, v11

    mul-double v17, v9, v7

    sub-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v2, Lorg/ejml/data/Complex_F64;->real:D

    .line 65
    iget-wide v13, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v5, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    add-double/2addr v13, v5

    iput-wide v13, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static innerProdH(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Lorg/ejml/data/Complex_F64;

    invoke-direct {v2}, Lorg/ejml/data/Complex_F64;-><init>()V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 93
    iput-wide v3, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    iput-wide v3, v2, Lorg/ejml/data/Complex_F64;->real:D

    .line 96
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 99
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    .line 100
    iget-object v7, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, v7, v8

    .line 102
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v11, v7, v4

    .line 103
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v7, v7, v8

    neg-double v7, v7

    .line 105
    iget-wide v13, v2, Lorg/ejml/data/Complex_F64;->real:D

    mul-double v15, v5, v11

    mul-double v17, v9, v7

    sub-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v2, Lorg/ejml/data/Complex_F64;->real:D

    .line 106
    iget-wide v13, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v5, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    add-double/2addr v13, v5

    iput-wide v13, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static outerProd(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 129
    iget v3, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 130
    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 134
    iget-object v8, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v9, v6, 0x2

    aget-wide v10, v8, v9

    .line 135
    iget-object v8, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v4, :cond_0

    .line 139
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v13, v14, v13

    .line 140
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v15, 0x1

    aget-wide v17, v5, v15

    .line 142
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v7, 0x1

    mul-double v19, v10, v13

    mul-double v21, v8, v17

    sub-double v19, v19, v21

    aput-wide v19, v5, v7

    .line 143
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v15, 0x1

    mul-double v17, v17, v10

    mul-double/2addr v13, v8

    add-double v17, v17, v13

    aput-wide v17, v5, v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v16

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static outerProdH(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 165
    iget v3, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 166
    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 170
    iget-object v8, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v9, v6, 0x2

    aget-wide v10, v8, v9

    .line 171
    iget-object v8, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v4, :cond_0

    .line 175
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v13, v14, v13

    .line 176
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v15, 0x1

    aget-wide v0, v5, v15

    neg-double v0, v0

    .line 178
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v7, 0x1

    mul-double v17, v10, v13

    mul-double v19, v8, v0

    sub-double v17, v17, v19

    aput-wide v17, v5, v7

    .line 179
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v15, 0x1

    mul-double/2addr v0, v10

    mul-double/2addr v13, v8

    add-double/2addr v0, v13

    aput-wide v0, v5, v15

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, v16

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

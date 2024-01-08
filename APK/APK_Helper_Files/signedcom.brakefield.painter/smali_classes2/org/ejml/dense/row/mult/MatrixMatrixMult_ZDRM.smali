.class public Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;
.super Ljava/lang/Object;
.source "MatrixMatrixMult_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static multAddTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 1226
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 1228
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1234
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1236
    :goto_1
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_1

    mul-int/lit8 v8, v4, 0x2

    .line 1238
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v7, v9, :cond_0

    .line 1244
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v8

    .line 1245
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v8, 0x1

    move/from16 v17, v4

    aget-wide v3, v3, v16

    neg-double v3, v3

    move/from16 v16, v9

    .line 1246
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v9, v7

    .line 1247
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v18, 0x1

    move/from16 v21, v6

    aget-wide v6, v7, v18

    neg-double v6, v6

    mul-double v22, v14, v19

    mul-double v24, v3, v6

    sub-double v22, v22, v24

    add-double v10, v10, v22

    mul-double/2addr v14, v6

    mul-double v3, v3, v19

    add-double/2addr v14, v3

    add-double/2addr v12, v14

    .line 1250
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    move v7, v9

    move/from16 v9, v16

    move/from16 v4, v17

    move/from16 v6, v21

    goto :goto_2

    :cond_0
    move/from16 v17, v4

    move/from16 v21, v6

    .line 1253
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v5, 0x1

    aget-wide v8, v3, v5

    mul-double v14, p0, v10

    mul-double v18, p2, v12

    sub-double v14, v14, v18

    add-double/2addr v8, v14

    aput-wide v8, v3, v5

    .line 1254
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v4, 0x1

    aget-wide v8, v3, v4

    mul-double v12, v12, p0

    mul-double v10, v10, p2

    add-double/2addr v12, v10

    add-double/2addr v8, v12

    aput-wide v8, v3, v4

    add-int/lit8 v6, v21, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    add-int/lit8 v4, v17, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1229
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 585
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 587
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 593
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 595
    :goto_1
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_1

    mul-int/lit8 v8, v4, 0x2

    .line 597
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v7, v9, :cond_0

    .line 603
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v8

    .line 604
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v8, 0x1

    move/from16 v17, v4

    aget-wide v3, v3, v16

    neg-double v3, v3

    move/from16 v16, v9

    .line 605
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v9, v7

    .line 606
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v18, 0x1

    move/from16 v21, v6

    aget-wide v6, v7, v18

    neg-double v6, v6

    mul-double v22, v14, v19

    mul-double v24, v3, v6

    sub-double v22, v22, v24

    add-double v10, v10, v22

    mul-double/2addr v14, v6

    mul-double v3, v3, v19

    add-double/2addr v14, v3

    add-double/2addr v12, v14

    .line 609
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    move v7, v9

    move/from16 v9, v16

    move/from16 v4, v17

    move/from16 v6, v21

    goto :goto_2

    :cond_0
    move/from16 v17, v4

    move/from16 v21, v6

    .line 612
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v5, 0x1

    aget-wide v8, v3, v5

    add-double/2addr v8, v10

    aput-wide v8, v3, v5

    .line 613
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v4, 0x1

    aget-wide v8, v3, v4

    add-double/2addr v8, v12

    aput-wide v8, v3, v4

    add-int/lit8 v6, v21, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    add-int/lit8 v4, v17, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 588
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransAB_aux(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 1263
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_7

    .line 1265
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    if-nez p7, :cond_0

    .line 1269
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    goto :goto_0

    :cond_0
    move-object/from16 v3, p7

    .line 1271
    :goto_0
    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v4, :cond_5

    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1275
    :goto_1
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v5, v7, :cond_5

    mul-int/lit8 v7, v5, 0x2

    const/4 v8, 0x0

    .line 1277
    :goto_2
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v8, v9, :cond_2

    mul-int/lit8 v9, v8, 0x2

    .line 1278
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v10, v10, v7

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    .line 1279
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    aput-wide v10, v3, v9

    .line 1280
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 1283
    :goto_3
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v7, v8, :cond_4

    .line 1285
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x2

    const-wide/16 v9, 0x0

    move-wide v11, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1289
    :goto_4
    iget v15, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v13, v15, :cond_3

    add-int/lit8 v15, v14, 0x1

    .line 1290
    aget-wide v16, v3, v14

    add-int/lit8 v14, v15, 0x1

    move/from16 v18, v5

    .line 1291
    aget-wide v4, v3, v15

    neg-double v4, v4

    .line 1292
    iget-object v15, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v8, 0x1

    aget-wide v20, v15, v8

    .line 1293
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v19, 0x1

    aget-wide v0, v8, v19

    neg-double v0, v0

    mul-double v22, v16, v20

    mul-double v24, v4, v0

    sub-double v22, v22, v24

    add-double v9, v9, v22

    mul-double v16, v16, v0

    mul-double v4, v4, v20

    add-double v16, v16, v4

    add-double v11, v11, v16

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move v8, v15

    move/from16 v5, v18

    goto :goto_4

    :cond_3
    move/from16 v18, v5

    .line 1297
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v1, v6, 0x1

    aget-wide v4, v0, v6

    mul-double v13, p0, v9

    mul-double v15, p2, v11

    sub-double/2addr v13, v15

    add-double/2addr v4, v13

    aput-wide v4, v0, v6

    .line 1298
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v4, v0, v1

    mul-double v11, v11, p0

    mul-double v8, p2, v9

    add-double/2addr v11, v8

    add-double/2addr v4, v11

    aput-wide v4, v0, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v5, v18

    goto :goto_3

    :cond_4
    move/from16 v18, v5

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_5
    :goto_5
    return-void

    .line 1266
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransAB_aux(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 622
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_7

    .line 624
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    if-nez p3, :cond_0

    .line 628
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    .line 630
    :goto_0
    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v4, :cond_5

    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 634
    :goto_1
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v5, v7, :cond_5

    mul-int/lit8 v7, v5, 0x2

    const/4 v8, 0x0

    .line 636
    :goto_2
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v8, v9, :cond_2

    mul-int/lit8 v9, v8, 0x2

    .line 637
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v10, v10, v7

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    .line 638
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v7, 0x1

    aget-wide v10, v10, v11

    aput-wide v10, v3, v9

    .line 639
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 642
    :goto_3
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v7, v8, :cond_4

    .line 644
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x2

    const-wide/16 v9, 0x0

    move-wide v11, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 648
    :goto_4
    iget v15, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v13, v15, :cond_3

    add-int/lit8 v15, v14, 0x1

    .line 649
    aget-wide v16, v3, v14

    add-int/lit8 v14, v15, 0x1

    move/from16 v18, v5

    .line 650
    aget-wide v4, v3, v15

    neg-double v4, v4

    .line 651
    iget-object v15, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v8, 0x1

    aget-wide v20, v15, v8

    .line 652
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v19, 0x1

    aget-wide v0, v8, v19

    neg-double v0, v0

    mul-double v22, v16, v20

    mul-double v24, v4, v0

    sub-double v22, v22, v24

    add-double v9, v9, v22

    mul-double v16, v16, v0

    mul-double v4, v4, v20

    add-double v16, v16, v4

    add-double v11, v11, v16

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v15

    move/from16 v5, v18

    goto :goto_4

    :cond_3
    move/from16 v18, v5

    .line 656
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v1, v6, 0x1

    aget-wide v4, v0, v6

    add-double/2addr v4, v9

    aput-wide v4, v0, v6

    .line 657
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v4, v0, v1

    add-double/2addr v4, v11

    aput-wide v4, v0, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v18

    goto :goto_3

    :cond_4
    move/from16 v18, v5

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    :goto_5
    return-void

    .line 625
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransA_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_7

    if-eq v1, v2, :cond_7

    .line 1098
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    .line 1100
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_5

    .line 1104
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 1110
    :goto_0
    iget v5, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_4

    .line 1111
    iget v5, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 1114
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v7, v4, 0x2

    aget-wide v8, v6, v7

    .line 1115
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v10, 0x1

    add-int/2addr v7, v10

    aget-wide v6, v6, v7

    mul-double v11, p0, v8

    mul-double v13, p2, v6

    add-double/2addr v11, v13

    mul-double v6, v6, p0

    mul-double v8, v8, p2

    sub-double/2addr v6, v8

    .line 1119
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    move v9, v3

    move v13, v5

    :goto_1
    if-ge v9, v8, :cond_1

    .line 1122
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v9, 0x1

    aget-wide v16, v14, v9

    .line 1123
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v9, v15

    .line 1124
    iget-object v9, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v20, v9, v13

    mul-double v22, v11, v16

    mul-double v24, v6, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v9, v13

    .line 1125
    iget-object v9, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    aget-wide v20, v9, v15

    mul-double v18, v18, v11

    mul-double v16, v16, v6

    sub-double v18, v18, v16

    add-double v20, v20, v18

    aput-wide v20, v9, v15

    move v9, v14

    goto :goto_1

    .line 1128
    :cond_1
    :goto_2
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v10, v6, :cond_3

    .line 1129
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v6

    .line 1130
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v11

    mul-double v13, p0, v6

    mul-double v15, p2, v11

    add-double/2addr v13, v15

    mul-double v11, v11, p0

    mul-double v6, v6, p2

    sub-double/2addr v11, v6

    .line 1133
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    move v7, v5

    :goto_3
    if-ge v9, v6, :cond_2

    .line 1137
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v9, 0x1

    aget-wide v8, v8, v9

    .line 1138
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v15

    .line 1139
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v20, v3, v7

    mul-double v22, v13, v8

    mul-double v24, v11, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v3, v7

    .line 1140
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v15, 0x1

    aget-wide v20, v3, v15

    mul-double v18, v18, v13

    mul-double/2addr v8, v11

    sub-double v18, v18, v8

    add-double v20, v20, v18

    aput-wide v20, v3, v15

    move/from16 v9, v17

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    :goto_4
    return-void

    .line 1101
    :cond_5
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_7

    if-eq v1, v2, :cond_7

    .line 462
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    .line 464
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_5

    .line 468
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 473
    :goto_0
    iget v5, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_4

    .line 474
    iget v5, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 477
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v7, v4, 0x2

    aget-wide v8, v6, v7

    .line 478
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v10, 0x1

    add-int/2addr v7, v10

    aget-wide v6, v6, v7

    .line 480
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    move v12, v3

    move v13, v5

    :goto_1
    if-ge v12, v11, :cond_1

    .line 483
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v14, v12

    .line 484
    iget-object v12, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v12, v15

    .line 485
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v20, v12, v13

    mul-double v22, v8, v16

    mul-double v24, v6, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v12, v13

    .line 486
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    aget-wide v20, v12, v15

    mul-double v18, v18, v8

    mul-double v16, v16, v6

    sub-double v18, v18, v16

    add-double v20, v20, v18

    aput-wide v20, v12, v15

    move v12, v14

    goto :goto_1

    .line 489
    :cond_1
    :goto_2
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v10, v6, :cond_3

    .line 490
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v6

    .line 491
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v8

    .line 492
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v12

    move v13, v5

    :goto_3
    if-ge v12, v11, :cond_2

    .line 496
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v14, v12

    .line 497
    iget-object v12, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v12, v15

    .line 498
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v20, v12, v13

    mul-double v22, v6, v16

    mul-double v24, v8, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v12, v13

    .line 499
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    aget-wide v20, v12, v15

    mul-double v18, v18, v6

    mul-double v16, v16, v8

    sub-double v18, v18, v16

    add-double v20, v20, v18

    aput-wide v20, v12, v15

    move v12, v14

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_4
    return-void

    .line 465
    :cond_5
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->NfsvbmmvgilpQSe:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransA_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 1150
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 1152
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1158
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    .line 1159
    :goto_1
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v4, 0x2

    mul-int/lit8 v8, v6, 0x2

    .line 1162
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v8, v9, :cond_0

    .line 1169
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v7

    .line 1170
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v7, 0x1

    aget-wide v16, v3, v16

    .line 1171
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v18, v3, v8

    .line 1172
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v20, v8, 0x1

    aget-wide v20, v3, v20

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    add-double v22, v22, v24

    add-double v10, v10, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    add-double/2addr v12, v14

    .line 1175
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    .line 1168
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    goto :goto_2

    .line 1178
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v8, v3, v5

    mul-double v14, p0, v10

    mul-double v16, p2, v12

    sub-double v14, v14, v16

    add-double/2addr v8, v14

    aput-wide v8, v3, v5

    .line 1179
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v7, 0x1

    aget-wide v8, v3, v7

    mul-double v12, v12, p0

    mul-double v10, v10, p2

    add-double/2addr v12, v10

    add-double/2addr v8, v12

    aput-wide v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1153
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransA_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 509
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 511
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 517
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    .line 518
    :goto_1
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v4, 0x2

    mul-int/lit8 v8, v6, 0x2

    .line 521
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v8, v9, :cond_0

    .line 528
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v7

    .line 529
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v7, 0x1

    aget-wide v16, v3, v16

    .line 530
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v18, v3, v8

    .line 531
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v20, v8, 0x1

    aget-wide v20, v3, v20

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    add-double v22, v22, v24

    add-double v10, v10, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    add-double/2addr v12, v14

    .line 534
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    .line 527
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    goto :goto_2

    .line 537
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v8, v3, v5

    add-double/2addr v8, v10

    aput-wide v8, v3, v5

    .line 538
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v7, 0x1

    aget-wide v8, v3, v7

    add-double/2addr v8, v12

    aput-wide v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 512
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 28

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 1188
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 1190
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1197
    :goto_0
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v4, v7, :cond_2

    .line 1198
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1200
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    const-wide/16 v10, 0x0

    move v14, v5

    move-wide v12, v10

    :goto_2
    if-ge v14, v7, :cond_0

    .line 1207
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    .line 1208
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v18, v3, v16

    .line 1209
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v20, v3, v9

    .line 1210
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v16, 0x1

    aget-wide v22, v3, v16

    mul-double v24, v14, v20

    mul-double v26, v18, v22

    add-double v24, v24, v26

    add-double v10, v10, v24

    mul-double v18, v18, v20

    mul-double v14, v14, v22

    sub-double v18, v18, v14

    add-double v12, v12, v18

    move/from16 v14, v17

    goto :goto_2

    .line 1215
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, v3, v6

    mul-double v17, p0, v10

    mul-double v19, p2, v12

    sub-double v17, v17, v19

    add-double v15, v15, v17

    aput-wide v15, v3, v6

    .line 1216
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v14, 0x1

    aget-wide v15, v3, v14

    mul-double v12, v12, p0

    mul-double v10, v10, p2

    add-double/2addr v12, v10

    add-double/2addr v15, v12

    aput-wide v15, v3, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1218
    :cond_1
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1191
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAddTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 547
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 549
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 556
    :goto_0
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v4, v7, :cond_2

    .line 557
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 559
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    const-wide/16 v10, 0x0

    move v14, v5

    move-wide v12, v10

    :goto_2
    if-ge v14, v7, :cond_0

    .line 566
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    .line 567
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v18, v3, v16

    .line 568
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v20, v3, v9

    .line 569
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v16, 0x1

    aget-wide v22, v3, v16

    mul-double v24, v14, v20

    mul-double v26, v18, v22

    add-double v24, v24, v26

    add-double v10, v10, v24

    mul-double v18, v18, v20

    mul-double v14, v14, v22

    sub-double v18, v18, v14

    add-double v12, v12, v18

    move/from16 v14, v17

    goto :goto_2

    .line 574
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, v3, v6

    add-double/2addr v15, v10

    aput-wide v15, v3, v6

    .line 575
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v14, 0x1

    aget-wide v10, v3, v14

    add-double/2addr v10, v12

    aput-wide v10, v3, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 577
    :cond_1
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 550
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAdd_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_7

    if-eq v1, v2, :cond_7

    .line 988
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    .line 990
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_5

    .line 994
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 1000
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 1001
    invoke-virtual/range {p5 .. p5}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    .line 1002
    invoke-virtual/range {p6 .. p6}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v5

    .line 1003
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/2addr v6, v4

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    .line 1005
    :goto_0
    iget v10, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_4

    mul-int v10, v8, v3

    add-int/lit8 v11, v4, 0x0

    .line 1013
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    .line 1014
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v13, 0x1

    aget-wide v16, v10, v13

    mul-double v18, p0, v14

    mul-double v20, p2, v16

    sub-double v18, v18, v20

    mul-double v16, v16, p0

    mul-double v13, p2, v14

    add-double v16, v16, v13

    move v10, v7

    move v13, v9

    :goto_1
    if-ge v10, v11, :cond_1

    .line 1019
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v10, 0x1

    aget-wide v20, v14, v10

    .line 1020
    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v22, v10, v15

    .line 1022
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v24, v10, v13

    mul-double v26, v18, v20

    mul-double v28, v16, v22

    sub-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v10, v13

    .line 1023
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    aget-wide v24, v10, v15

    mul-double v22, v22, v18

    mul-double v20, v20, v16

    add-double v22, v22, v20

    add-double v24, v24, v22

    aput-wide v24, v10, v15

    move v10, v14

    goto :goto_1

    :cond_1
    :goto_2
    if-eq v10, v6, :cond_3

    add-int v11, v10, v4

    .line 1031
    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    .line 1032
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    mul-double v17, p0, v12

    mul-double v19, p2, v14

    sub-double v17, v17, v19

    mul-double v14, v14, p0

    mul-double v12, v12, p2

    add-double/2addr v14, v12

    move v12, v9

    :goto_3
    if-ge v10, v11, :cond_2

    .line 1037
    iget-object v13, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v10, 0x1

    aget-wide v20, v13, v10

    .line 1038
    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v19, 0x1

    aget-wide v22, v10, v19

    .line 1040
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v12, 0x1

    aget-wide v24, v10, v12

    mul-double v26, v17, v20

    mul-double v28, v14, v22

    sub-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v10, v12

    .line 1041
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v19, 0x1

    aget-wide v24, v10, v19

    mul-double v22, v22, v17

    mul-double v20, v20, v14

    add-double v22, v22, v20

    add-double v24, v24, v22

    aput-wide v24, v10, v19

    move v10, v13

    goto :goto_3

    :cond_2
    move/from16 v12, v16

    goto :goto_2

    :cond_3
    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_4
    return-void

    .line 991
    :cond_5
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAdd_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_7

    if-eq v1, v2, :cond_7

    .line 356
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    .line 358
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_5

    .line 362
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 369
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    .line 370
    invoke-virtual/range {p2 .. p2}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v5

    .line 371
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/2addr v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 373
    :goto_0
    iget v10, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_4

    mul-int v10, v8, v3

    add-int/lit8 v11, v4, 0x0

    .line 381
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    .line 382
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v13, 0x1

    aget-wide v16, v10, v13

    move v13, v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    .line 385
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, v7, v10

    .line 386
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v18, 0x1

    aget-wide v21, v7, v18

    .line 388
    iget-object v7, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v13, 0x1

    aget-wide v23, v7, v13

    mul-double v25, v14, v19

    mul-double v27, v16, v21

    sub-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v7, v13

    .line 389
    iget-object v7, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v18, 0x1

    aget-wide v23, v7, v18

    mul-double v21, v21, v14

    mul-double v19, v19, v16

    add-double v21, v21, v19

    add-double v23, v23, v21

    aput-wide v23, v7, v18

    goto :goto_1

    :cond_1
    :goto_2
    if-eq v10, v6, :cond_3

    add-int v7, v10, v4

    .line 397
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v12, 0x1

    aget-wide v11, v11, v12

    .line 398
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v13, v14, v13

    move/from16 v16, v9

    :goto_3
    if-ge v10, v7, :cond_2

    .line 401
    iget-object v0, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v0, v10

    .line 402
    iget-object v0, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v17, 0x1

    aget-wide v20, v0, v17

    .line 404
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v22, v0, v16

    mul-double v24, v11, v18

    mul-double v26, v13, v20

    sub-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v0, v16

    .line 405
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v17, 0x1

    aget-wide v22, v0, v17

    mul-double v20, v20, v11

    mul-double v18, v18, v13

    add-double v20, v20, v18

    add-double v22, v22, v20

    aput-wide v22, v0, v17

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move v12, v15

    goto :goto_2

    :cond_3
    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    :goto_4
    return-void

    .line 359
    :cond_5
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAdd_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 1053
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 1055
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    .line 1062
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 1063
    invoke-virtual/range {p5 .. p5}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1065
    :goto_0
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v9, :cond_2

    const/4 v9, 0x0

    .line 1066
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v9, 0x2

    add-int v11, v7, v3

    const-wide/16 v12, 0x0

    move v5, v7

    move-wide v14, v12

    :goto_2
    if-ge v5, v11, :cond_0

    move/from16 v16, v11

    .line 1074
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v5, 0x1

    aget-wide v18, v11, v5

    .line 1075
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v17, 0x1

    aget-wide v20, v5, v17

    .line 1077
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v22, v5, v10

    .line 1078
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v24, v5, v17

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    add-double v12, v12, v26

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v14, v18

    add-int/2addr v10, v4

    move v5, v11

    move/from16 v11, v16

    goto :goto_2

    .line 1086
    :cond_0
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v8, 0x1

    aget-wide v16, v5, v8

    mul-double v18, p0, v12

    mul-double v20, p2, v14

    sub-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v5, v8

    .line 1087
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v16, v5, v10

    mul-double v14, v14, p0

    mul-double v11, p2, v12

    add-double/2addr v14, v11

    add-double v16, v16, v14

    aput-wide v16, v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1056
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multAdd_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 417
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 419
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    .line 426
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 427
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 429
    :goto_0
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v9, :cond_2

    const/4 v9, 0x0

    .line 430
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v9, 0x2

    add-int v11, v7, v3

    const-wide/16 v12, 0x0

    move v5, v7

    move-wide v14, v12

    :goto_2
    if-ge v5, v11, :cond_0

    move/from16 v16, v11

    .line 438
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v5, 0x1

    aget-wide v18, v11, v5

    .line 439
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v17, 0x1

    aget-wide v20, v5, v17

    .line 441
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v22, v5, v10

    .line 442
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v24, v5, v17

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    add-double v12, v12, v26

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v14, v18

    add-int/2addr v10, v4

    move v5, v11

    move/from16 v11, v16

    goto :goto_2

    .line 450
    :cond_0
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v8, 0x1

    aget-wide v16, v5, v8

    add-double v16, v16, v12

    aput-wide v16, v5, v8

    .line 451
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v11, v5, v10

    add-double/2addr v11, v14

    aput-wide v11, v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 420
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/utils/ifg/GJoEneiVdp;->ZEdCGIzGFuyEnrS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 906
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 908
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 914
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 916
    :goto_1
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_1

    mul-int/lit8 v8, v4, 0x2

    .line 918
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v7, v9, :cond_0

    .line 924
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v8

    .line 925
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v8, 0x1

    move/from16 v17, v4

    aget-wide v3, v3, v16

    neg-double v3, v3

    move/from16 v16, v9

    .line 926
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v9, v7

    .line 927
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v18, 0x1

    move/from16 v21, v6

    aget-wide v6, v7, v18

    neg-double v6, v6

    mul-double v22, v14, v19

    mul-double v24, v3, v6

    sub-double v22, v22, v24

    add-double v10, v10, v22

    mul-double/2addr v14, v6

    mul-double v3, v3, v19

    add-double/2addr v14, v3

    add-double/2addr v12, v14

    .line 930
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    move v7, v9

    move/from16 v9, v16

    move/from16 v4, v17

    move/from16 v6, v21

    goto :goto_2

    :cond_0
    move/from16 v17, v4

    move/from16 v21, v6

    .line 933
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v5, 0x1

    mul-double v8, p0, v10

    mul-double v14, p2, v12

    sub-double/2addr v8, v14

    aput-wide v8, v3, v5

    .line 934
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v4, 0x1

    mul-double v8, p0, v12

    mul-double v10, v10, p2

    add-double/2addr v8, v10

    aput-wide v8, v3, v4

    add-int/lit8 v6, v21, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    add-int/lit8 v4, v17, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 909
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 274
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 276
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 284
    :goto_1
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v8, :cond_1

    mul-int/lit8 v8, v4, 0x2

    .line 286
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v7, v9, :cond_0

    .line 292
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v8

    .line 293
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v8, 0x1

    move/from16 v17, v4

    aget-wide v3, v3, v16

    neg-double v3, v3

    move/from16 v16, v9

    .line 294
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v9, v7

    .line 295
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v18, 0x1

    move/from16 v21, v6

    aget-wide v6, v7, v18

    neg-double v6, v6

    mul-double v22, v14, v19

    mul-double v24, v3, v6

    sub-double v22, v22, v24

    add-double v10, v10, v22

    mul-double/2addr v14, v6

    mul-double v3, v3, v19

    add-double/2addr v14, v3

    add-double/2addr v12, v14

    .line 298
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    move v7, v9

    move/from16 v9, v16

    move/from16 v4, v17

    move/from16 v6, v21

    goto :goto_2

    :cond_0
    move/from16 v17, v4

    move/from16 v21, v6

    .line 301
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v5, 0x1

    aput-wide v10, v3, v5

    .line 302
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v4, 0x1

    aput-wide v12, v3, v4

    add-int/lit8 v6, v21, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    add-int/lit8 v4, v17, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 277
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransAB_aux(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_9

    if-eq v1, v2, :cond_9

    .line 943
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_8

    .line 945
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_7

    if-nez p7, :cond_0

    .line 949
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    goto :goto_0

    :cond_0
    move-object/from16 v3, p7

    .line 951
    :goto_0
    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 956
    :goto_1
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v7, v9, :cond_5

    mul-int/lit8 v9, v7, 0x2

    const/4 v10, 0x0

    .line 958
    :goto_2
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v10, v11, :cond_2

    mul-int/lit8 v11, v10, 0x2

    .line 959
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v12, v12, v9

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    .line 960
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v9, 0x1

    aget-wide v12, v12, v13

    aput-wide v12, v3, v11

    .line 961
    iget v11, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 964
    :goto_3
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_4

    .line 966
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v10, v9

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    .line 970
    :goto_4
    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v11, v4, :cond_3

    add-int/lit8 v4, v16, 0x1

    .line 971
    aget-wide v16, v3, v16

    add-int/lit8 v18, v4, 0x1

    .line 972
    aget-wide v5, v3, v4

    neg-double v4, v5

    .line 973
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v10, 0x1

    aget-wide v20, v6, v10

    .line 974
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v19, 0x1

    aget-wide v0, v6, v19

    neg-double v0, v0

    mul-double v22, v16, v20

    mul-double v24, v4, v0

    sub-double v22, v22, v24

    add-double v12, v12, v22

    mul-double v16, v16, v0

    mul-double v4, v4, v20

    add-double v16, v16, v4

    add-double v14, v14, v16

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v16, v18

    goto :goto_4

    .line 978
    :cond_3
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v1, v8, 0x1

    mul-double v4, p0, v12

    mul-double v10, p2, v14

    sub-double/2addr v4, v10

    aput-wide v4, v0, v8

    .line 979
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v1, 0x1

    mul-double v4, p0, v14

    mul-double v10, p2, v12

    add-double/2addr v4, v10

    aput-wide v4, v0, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 952
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 946
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_8
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransAB_aux(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_9

    if-eq v1, v2, :cond_9

    .line 311
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_8

    .line 313
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_7

    if-nez p3, :cond_0

    .line 317
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    .line 319
    :goto_0
    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 324
    :goto_1
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v7, v9, :cond_5

    mul-int/lit8 v9, v7, 0x2

    const/4 v10, 0x0

    .line 326
    :goto_2
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v10, v11, :cond_2

    mul-int/lit8 v11, v10, 0x2

    .line 327
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v12, v12, v9

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    .line 328
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v9, 0x1

    aget-wide v12, v12, v13

    aput-wide v12, v3, v11

    .line 329
    iget v11, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 332
    :goto_3
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v9, v10, :cond_4

    .line 334
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v10, v9

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    .line 338
    :goto_4
    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v11, v4, :cond_3

    add-int/lit8 v4, v16, 0x1

    .line 339
    aget-wide v16, v3, v16

    add-int/lit8 v18, v4, 0x1

    .line 340
    aget-wide v5, v3, v4

    neg-double v4, v5

    .line 341
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v10, 0x1

    aget-wide v20, v6, v10

    .line 342
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v19, 0x1

    aget-wide v0, v6, v19

    neg-double v0, v0

    mul-double v22, v16, v20

    mul-double v24, v4, v0

    sub-double v22, v22, v24

    add-double v12, v12, v22

    mul-double v16, v16, v0

    mul-double v4, v4, v20

    add-double v16, v16, v4

    add-double v14, v14, v16

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v18

    goto :goto_4

    .line 346
    :cond_3
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v1, v8, 0x1

    aput-wide v12, v0, v8

    .line 347
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v1, 0x1

    aput-wide v14, v0, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 320
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 314
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_8
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 777
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    .line 779
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    .line 783
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_5

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 790
    :goto_0
    iget v5, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_4

    .line 791
    iget v5, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 794
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v7, v4, 0x2

    aget-wide v8, v6, v7

    .line 795
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v10, 0x1

    add-int/2addr v7, v10

    aget-wide v6, v6, v7

    mul-double v11, p0, v8

    mul-double v13, p2, v6

    add-double/2addr v11, v13

    mul-double v6, v6, p0

    mul-double v8, v8, p2

    sub-double/2addr v6, v8

    .line 799
    iget v8, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    move v9, v3

    move v13, v5

    :goto_1
    if-ge v9, v8, :cond_1

    .line 802
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v9, 0x1

    aget-wide v16, v14, v9

    .line 803
    iget-object v9, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v9, v15

    .line 804
    iget-object v9, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    mul-double v20, v11, v16

    mul-double v22, v6, v18

    add-double v20, v20, v22

    aput-wide v20, v9, v13

    .line 805
    iget-object v9, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    mul-double v18, v18, v11

    mul-double v16, v16, v6

    sub-double v18, v18, v16

    aput-wide v18, v9, v15

    move v9, v14

    goto :goto_1

    .line 808
    :cond_1
    :goto_2
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v10, v6, :cond_3

    .line 809
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v6

    .line 810
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v11

    mul-double v13, p0, v6

    mul-double v15, p2, v11

    add-double/2addr v13, v15

    mul-double v11, v11, p0

    mul-double v6, v6, p2

    sub-double/2addr v11, v6

    .line 813
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    move v7, v5

    :goto_3
    if-ge v9, v6, :cond_2

    .line 817
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v9, 0x1

    aget-wide v8, v8, v9

    .line 818
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v15

    .line 819
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v20, v3, v7

    mul-double v22, v13, v8

    mul-double v24, v11, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v3, v7

    .line 820
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v15, 0x1

    aget-wide v20, v3, v15

    mul-double v18, v18, v13

    mul-double/2addr v8, v11

    sub-double v18, v18, v8

    add-double v20, v20, v18

    aput-wide v20, v3, v15

    move/from16 v9, v17

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    .line 784
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 780
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 150
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    .line 152
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    .line 156
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_5

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 162
    :goto_0
    iget v5, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_4

    .line 163
    iget v5, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 166
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v7, v4, 0x2

    aget-wide v8, v6, v7

    .line 167
    iget-object v6, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v10, 0x1

    add-int/2addr v7, v10

    aget-wide v6, v6, v7

    .line 169
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    move v12, v3

    move v13, v5

    :goto_1
    if-ge v12, v11, :cond_1

    .line 172
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v14, v12

    .line 173
    iget-object v12, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v12, v15

    .line 174
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    mul-double v20, v8, v16

    mul-double v22, v6, v18

    add-double v20, v20, v22

    aput-wide v20, v12, v13

    .line 175
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    mul-double v18, v18, v8

    mul-double v16, v16, v6

    sub-double v18, v18, v16

    aput-wide v18, v12, v15

    move v12, v14

    goto :goto_1

    .line 178
    :cond_1
    :goto_2
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v10, v6, :cond_3

    .line 179
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v6

    .line 180
    invoke-virtual {v0, v10, v4}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v8

    .line 181
    iget v11, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v12

    move v13, v5

    :goto_3
    if-ge v12, v11, :cond_2

    .line 185
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v14, v12

    .line 186
    iget-object v12, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v18, v12, v15

    .line 187
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v20, v12, v13

    mul-double v22, v6, v16

    mul-double v24, v8, v18

    add-double v22, v22, v24

    add-double v20, v20, v22

    aput-wide v20, v12, v13

    .line 188
    iget-object v12, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    aget-wide v20, v12, v15

    mul-double v18, v18, v6

    mul-double v16, v16, v8

    sub-double v18, v18, v16

    add-double v20, v20, v18

    aput-wide v20, v12, v15

    move v12, v14

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    .line 157
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 153
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 830
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 832
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 838
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    .line 839
    :goto_1
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v4, 0x2

    mul-int/lit8 v8, v6, 0x2

    .line 842
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v8, v9, :cond_0

    .line 849
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v7

    .line 850
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v7, 0x1

    aget-wide v16, v3, v16

    .line 851
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v18, v3, v8

    .line 852
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v20, v8, 0x1

    aget-wide v20, v3, v20

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    add-double v22, v22, v24

    add-double v10, v10, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    add-double/2addr v12, v14

    .line 855
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    .line 848
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    goto :goto_2

    .line 858
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v5, 0x1

    mul-double v8, p0, v10

    mul-double v14, p2, v12

    sub-double/2addr v8, v14

    aput-wide v8, v3, v5

    .line 859
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v7, 0x1

    mul-double v8, p0, v12

    mul-double v10, v10, p2

    add-double/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 833
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 198
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 200
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 206
    :goto_0
    iget v6, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    .line 207
    :goto_1
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v4, 0x2

    mul-int/lit8 v8, v6, 0x2

    .line 210
    iget v9, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    if-ge v8, v9, :cond_0

    .line 217
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v14, v14, v7

    .line 218
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v7, 0x1

    aget-wide v16, v3, v16

    .line 219
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v18, v3, v8

    .line 220
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v20, v8, 0x1

    aget-wide v20, v3, v20

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    add-double v22, v22, v24

    add-double v10, v10, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    add-double/2addr v12, v14

    .line 223
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    .line 216
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    goto :goto_2

    .line 226
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v5, 0x1

    aput-wide v10, v3, v5

    .line 227
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v7, 0x1

    aput-wide v12, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 201
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 28

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 868
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 870
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 877
    :goto_0
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v4, v7, :cond_2

    .line 878
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 880
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    const-wide/16 v10, 0x0

    move v14, v5

    move-wide v12, v10

    :goto_2
    if-ge v14, v7, :cond_0

    .line 887
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    .line 888
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v18, v3, v16

    .line 889
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v20, v3, v9

    .line 890
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v16, 0x1

    aget-wide v22, v3, v16

    mul-double v24, v14, v20

    mul-double v26, v18, v22

    add-double v24, v24, v26

    add-double v10, v10, v24

    mul-double v18, v18, v20

    mul-double v14, v14, v22

    sub-double v18, v18, v14

    add-double v12, v12, v18

    move/from16 v14, v17

    goto :goto_2

    .line 895
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v6, 0x1

    mul-double v15, p0, v10

    mul-double v17, p2, v12

    sub-double v15, v15, v17

    aput-wide v15, v3, v6

    .line 896
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v14, 0x1

    mul-double v12, v12, p0

    mul-double v10, v10, p2

    add-double/2addr v12, v10

    aput-wide v12, v3, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 898
    :cond_1
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 871
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 236
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_4

    .line 238
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 245
    :goto_0
    iget v7, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v4, v7, :cond_2

    .line 246
    iget v7, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 248
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_1

    const-wide/16 v10, 0x0

    move v14, v5

    move-wide v12, v10

    :goto_2
    if-ge v14, v7, :cond_0

    .line 255
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    .line 256
    iget-object v3, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v18, v3, v16

    .line 257
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v20, v3, v9

    .line 258
    iget-object v3, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v16, 0x1

    aget-wide v22, v3, v16

    mul-double v24, v14, v20

    mul-double v26, v18, v22

    add-double v24, v24, v26

    add-double v10, v10, v24

    mul-double v18, v18, v20

    mul-double v14, v14, v22

    sub-double v18, v18, v14

    add-double v12, v12, v18

    move/from16 v14, v17

    goto :goto_2

    .line 263
    :cond_0
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v6, 0x1

    aput-wide v10, v3, v6

    .line 264
    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v6, v14, 0x1

    aput-wide v12, v3, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 266
    :cond_1
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 239
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->TWetTHlNx:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 666
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    .line 668
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    .line 672
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_5

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 679
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 680
    invoke-virtual/range {p5 .. p5}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    .line 681
    invoke-virtual/range {p6 .. p6}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v5

    .line 682
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/2addr v6, v4

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    .line 684
    :goto_0
    iget v10, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_4

    mul-int v10, v8, v3

    add-int/lit8 v11, v4, 0x0

    .line 692
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    .line 693
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v13, 0x1

    aget-wide v16, v10, v13

    mul-double v18, p0, v14

    mul-double v20, p2, v16

    sub-double v18, v18, v20

    mul-double v16, v16, p0

    mul-double v13, p2, v14

    add-double v16, v16, v13

    move v10, v7

    move v13, v9

    :goto_1
    if-ge v10, v11, :cond_1

    .line 698
    iget-object v14, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v10, 0x1

    aget-wide v20, v14, v10

    .line 699
    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v15, 0x1

    aget-wide v22, v10, v15

    .line 701
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    mul-double v24, v18, v20

    mul-double v26, v16, v22

    sub-double v24, v24, v26

    aput-wide v24, v10, v13

    .line 702
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v15, 0x1

    mul-double v22, v22, v18

    mul-double v20, v20, v16

    add-double v22, v22, v20

    aput-wide v22, v10, v15

    move v10, v14

    goto :goto_1

    :cond_1
    :goto_2
    if-eq v10, v6, :cond_3

    add-int v11, v10, v4

    .line 710
    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    .line 711
    iget-object v15, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v14, 0x1

    aget-wide v14, v15, v14

    mul-double v17, p0, v12

    mul-double v19, p2, v14

    sub-double v17, v17, v19

    mul-double v14, v14, p0

    mul-double v12, v12, p2

    add-double/2addr v14, v12

    move v12, v9

    :goto_3
    if-ge v10, v11, :cond_2

    .line 716
    iget-object v13, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v10, 0x1

    aget-wide v20, v13, v10

    .line 717
    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v19, 0x1

    aget-wide v22, v10, v19

    .line 719
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v19, v12, 0x1

    aget-wide v24, v10, v12

    mul-double v26, v17, v20

    mul-double v28, v14, v22

    sub-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v10, v12

    .line 720
    iget-object v10, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v19, 0x1

    aget-wide v24, v10, v19

    mul-double v22, v22, v17

    mul-double v20, v20, v14

    add-double v22, v22, v20

    add-double v24, v24, v22

    aput-wide v24, v10, v19

    move v10, v13

    goto :goto_3

    :cond_2
    move/from16 v12, v16

    goto :goto_2

    :cond_3
    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    .line 673
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 669
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    .line 43
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_7

    .line 45
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_6

    .line 49
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eqz v3, :cond_5

    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 56
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    .line 58
    invoke-virtual/range {p2 .. p2}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v5

    .line 59
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/2addr v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 61
    :goto_0
    iget v10, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v8, v10, :cond_4

    mul-int v10, v8, v3

    add-int/lit8 v11, v4, 0x0

    .line 69
    iget-object v12, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    .line 70
    iget-object v10, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v13, 0x1

    aget-wide v16, v10, v13

    move v13, v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    .line 73
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, v7, v10

    .line 74
    iget-object v7, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v18, 0x1

    aget-wide v21, v7, v18

    .line 76
    iget-object v7, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v18, v13, 0x1

    mul-double v23, v14, v19

    mul-double v25, v16, v21

    sub-double v23, v23, v25

    aput-wide v23, v7, v13

    .line 77
    iget-object v7, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v18, 0x1

    mul-double v21, v21, v14

    mul-double v19, v19, v16

    add-double v21, v21, v19

    aput-wide v21, v7, v18

    goto :goto_1

    :cond_1
    :goto_2
    if-eq v10, v6, :cond_3

    add-int v7, v10, v4

    .line 85
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v12, 0x1

    aget-wide v11, v11, v12

    .line 86
    iget-object v14, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v13, 0x1

    aget-wide v13, v14, v13

    move/from16 v16, v9

    :goto_3
    if-ge v10, v7, :cond_2

    .line 89
    iget-object v0, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v0, v10

    .line 90
    iget-object v0, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v17, 0x1

    aget-wide v20, v0, v17

    .line 92
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v16, 0x1

    aget-wide v22, v0, v16

    mul-double v24, v11, v18

    mul-double v26, v13, v20

    sub-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v0, v16

    .line 93
    iget-object v0, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v17, 0x1

    aget-wide v22, v0, v17

    mul-double v20, v20, v11

    mul-double v18, v18, v13

    add-double v20, v20, v18

    add-double v22, v22, v20

    aput-wide v22, v0, v17

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move v12, v15

    goto :goto_2

    :cond_3
    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    const-wide/16 v0, 0x0

    .line 50
    invoke-static {v2, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void

    .line 46
    :cond_6
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_7
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 732
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 734
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    .line 741
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 742
    invoke-virtual/range {p5 .. p5}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 744
    :goto_0
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v9, :cond_2

    const/4 v9, 0x0

    .line 745
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v9, 0x2

    add-int v11, v7, v3

    const-wide/16 v12, 0x0

    move v5, v7

    move-wide v14, v12

    :goto_2
    if-ge v5, v11, :cond_0

    move/from16 v16, v11

    .line 753
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v5, 0x1

    aget-wide v18, v11, v5

    .line 754
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v17, 0x1

    aget-wide v20, v5, v17

    .line 756
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v22, v5, v10

    .line 757
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v24, v5, v17

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    add-double v12, v12, v26

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v14, v18

    add-int/2addr v10, v4

    move v5, v11

    move/from16 v11, v16

    goto :goto_2

    .line 765
    :cond_0
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v8, 0x1

    mul-double v16, p0, v12

    mul-double v18, p2, v14

    sub-double v16, v16, v18

    aput-wide v16, v5, v8

    .line 766
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v10, 0x1

    mul-double v14, v14, p0

    mul-double v11, p2, v12

    add-double/2addr v14, v11

    aput-wide v14, v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 735
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_5

    .line 105
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_4

    .line 107
    iget v3, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v3

    .line 115
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 117
    :goto_0
    iget v9, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v6, v9, :cond_2

    const/4 v9, 0x0

    .line 118
    :goto_1
    iget v10, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v9, 0x2

    add-int v11, v7, v3

    const-wide/16 v12, 0x0

    move v5, v7

    move-wide v14, v12

    :goto_2
    if-ge v5, v11, :cond_0

    move/from16 v16, v11

    .line 126
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v5, 0x1

    aget-wide v18, v11, v5

    .line 127
    iget-object v5, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v17, 0x1

    aget-wide v20, v5, v17

    .line 129
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v22, v5, v10

    .line 130
    iget-object v5, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v24, v5, v17

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    add-double v12, v12, v26

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v14, v18

    add-int/2addr v10, v4

    move v5, v11

    move/from16 v11, v16

    goto :goto_2

    .line 138
    :cond_0
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v8, 0x1

    aput-wide v12, v5, v8

    .line 139
    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v10, 0x1

    aput-wide v14, v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 108
    :cond_3
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_4
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

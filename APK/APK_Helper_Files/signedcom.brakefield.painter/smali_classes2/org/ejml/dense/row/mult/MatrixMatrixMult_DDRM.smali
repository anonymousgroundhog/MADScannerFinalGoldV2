.class public Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;
.super Ljava/lang/Object;
.source "MatrixMatrixMult_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 1022
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 1023
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 1024
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 1028
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_4

    .line 1029
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    move v6, v3

    move v7, v6

    .line 1031
    :goto_3
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_3

    .line 1033
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v7

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_4
    if-ge v7, v8, :cond_2

    .line 1038
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    mul-double v12, v12, v16

    add-double/2addr v9, v12

    .line 1039
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v7

    move v7, v15

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v5, 0x1

    mul-double v9, v9, p0

    .line 1042
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 499
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 500
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 501
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 505
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_4

    .line 506
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    move v6, v3

    move v7, v6

    .line 508
    :goto_3
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_3

    .line 510
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v7

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_4
    if-ge v7, v8, :cond_2

    .line 515
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    mul-double v12, v12, v16

    add-double/2addr v9, v12

    .line 516
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v7

    move v7, v15

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 519
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAddTransAB_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 1054
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 1055
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 1056
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v3, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    if-nez p5, :cond_2

    .line 1058
    iget v3, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array v3, v3, [D

    goto :goto_2

    :cond_2
    move-object/from16 v3, p5

    .line 1060
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v5, :cond_7

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_3

    goto :goto_7

    :cond_3
    move v5, v4

    move v6, v5

    .line 1064
    :goto_3
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v7, :cond_7

    move v7, v4

    .line 1065
    :goto_4
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v8, :cond_4

    .line 1066
    invoke-virtual {v0, v7, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v8

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v4

    .line 1069
    :goto_5
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v7, v8, :cond_6

    const-wide/16 v8, 0x0

    move v10, v4

    .line 1072
    :goto_6
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v10, v11, :cond_5

    .line 1073
    aget-wide v11, v3, v10

    invoke-virtual {v1, v7, v10}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v6, 0x1

    mul-double/2addr v8, p0

    .line 1075
    invoke-virtual {v2, v6, v8, v9}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v7, v7, 0x1

    move v6, v10

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_7
    return-void
.end method

.method public static multAddTransAB_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 531
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 532
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 533
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    if-nez p3, :cond_2

    .line 535
    iget p3, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array p3, p3, [D

    .line 537
    :cond_2
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    move v0, v1

    move v2, v0

    .line 541
    :goto_2
    iget v3, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v0, v3, :cond_7

    move v3, v1

    .line 542
    :goto_3
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_4

    .line 543
    invoke-virtual {p0, v3, v0}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v1

    .line 546
    :goto_4
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_6

    const-wide/16 v4, 0x0

    move v6, v1

    .line 549
    :goto_5
    iget v7, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_5

    .line 550
    aget-wide v7, p3, v6

    invoke-virtual {p1, v3, v6}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v2, 0x1

    .line 552
    invoke-virtual {p2, v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method public static multAddTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 956
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 957
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const/4 v7, 0x0

    sget-object v7, Lkotlin/sequences/xWeI/PLNIgvxmKA;->vnm:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 958
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "C is not compatible with A and B"

    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 960
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v5, :cond_6

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    move v5, v3

    .line 964
    :goto_2
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_6

    .line 965
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 968
    iget-object v7, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v5

    mul-double v7, v7, p0

    .line 970
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v3

    move v10, v3

    move v11, v6

    :goto_3
    if-ge v10, v9, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 973
    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v10

    mul-double v3, v7, v15

    invoke-virtual {v2, v11, v3, v4}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v11, v12

    move v10, v14

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    .line 976
    :goto_4
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_5

    .line 977
    invoke-virtual {v0, v3, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    mul-double v7, v7, p0

    .line 978
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v4, v10

    move v9, v6

    :goto_5
    if-ge v10, v4, :cond_4

    .line 982
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v9, 0x1

    aget-wide v14, v11, v9

    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v13, v10

    mul-double v18, v18, v7

    add-double v14, v14, v18

    aput-wide v14, v11, v9

    move v9, v12

    move/from16 v10, v17

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 433
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 434
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 435
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "C is not compatible with A and B"

    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 437
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v5, :cond_6

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    move v5, v3

    .line 441
    :goto_2
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_6

    .line 442
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 445
    iget-object v7, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v5

    .line 447
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v3

    move v10, v3

    move v11, v6

    :goto_3
    if-ge v10, v9, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 450
    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v10

    mul-double v3, v7, v15

    invoke-virtual {v2, v11, v3, v4}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v11, v12

    move v10, v14

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    .line 453
    :goto_4
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_5

    .line 454
    invoke-virtual {v0, v3, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    .line 455
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v4, v10

    move v9, v6

    :goto_5
    if-ge v10, v4, :cond_4

    .line 459
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v9, 0x1

    aget-wide v14, v11, v9

    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v13, v10

    mul-double v18, v18, v7

    add-double v14, v14, v18

    aput-wide v14, v11, v9

    move v9, v12

    move/from16 v10, v17

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method

.method public static multAddTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 993
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 994
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 995
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 998
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_4

    .line 999
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    move v6, v3

    .line 1000
    :goto_3
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_3

    .line 1003
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move v11, v4

    move v10, v6

    :goto_4
    if-ge v10, v7, :cond_2

    .line 1008
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 1009
    iget v12, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v12

    .line 1007
    iget v12, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v10, v12

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v5, 0x1

    mul-double v8, v8, p0

    .line 1012
    invoke-virtual {v2, v5, v8, v9}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAddTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 470
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 471
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 472
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v1, v0

    .line 475
    :goto_2
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_4

    .line 476
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v2, v1

    move v3, v0

    .line 477
    :goto_3
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_3

    .line 480
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    const-wide/16 v5, 0x0

    move v8, v1

    move v7, v3

    :goto_4
    if-ge v7, v4, :cond_2

    .line 485
    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 486
    iget v9, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v9

    .line 484
    iget v9, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v9

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 489
    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 1085
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 1086
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 1087
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 1090
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_4

    .line 1091
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    .line 1092
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    .line 1093
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v6

    move v8, v3

    move v9, v8

    .line 1095
    :goto_3
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v8, v10, :cond_3

    const-wide/16 v10, 0x0

    move v12, v6

    :goto_4
    if-ge v12, v7, :cond_2

    .line 1100
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    iget-object v15, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v15, v9

    mul-double v12, v12, v17

    add-double/2addr v10, v12

    move v12, v14

    move/from16 v9, v16

    goto :goto_4

    :cond_2
    add-int/lit8 v12, v5, 0x1

    mul-double v10, v10, p0

    .line 1103
    invoke-virtual {v2, v5, v10, v11}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v8, v8, 0x1

    move v5, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 562
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 563
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v7, 0x0

    sget-object v7, Lcom/google/android/material/navigation/PjId/DFPED;->vMrV:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 564
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 567
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_4

    .line 568
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    .line 569
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    .line 570
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v6

    move v8, v3

    move v9, v8

    .line 572
    :goto_3
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v8, v10, :cond_3

    const-wide/16 v10, 0x0

    move v12, v6

    :goto_4
    if-ge v12, v7, :cond_2

    .line 577
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    iget-object v15, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v15, v9

    mul-double v12, v12, v17

    add-double/2addr v10, v12

    move v12, v14

    move/from16 v9, v16

    goto :goto_4

    :cond_2
    add-int/lit8 v12, v5, 0x1

    .line 580
    invoke-virtual {v2, v5, v10, v11}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v8, v8, 0x1

    move v5, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAdd_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 928
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 929
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 930
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v3, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    if-nez p5, :cond_2

    .line 932
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array v3, v3, [D

    goto :goto_2

    :cond_2
    move-object/from16 v3, p5

    :goto_2
    move v5, v4

    .line 934
    :goto_3
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_6

    move v6, v4

    .line 936
    :goto_4
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v7, :cond_3

    .line 937
    invoke-virtual {v1, v6, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v4

    move v7, v6

    .line 941
    :goto_5
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_5

    const-wide/16 v8, 0x0

    move v10, v4

    .line 943
    :goto_6
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v10, v11, :cond_4

    .line 944
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v7, 0x1

    aget-wide v13, v11, v7

    add-int/lit8 v7, v10, 0x1

    aget-wide v10, v3, v10

    mul-double/2addr v13, v10

    add-double/2addr v8, v13

    move v10, v7

    move v7, v12

    goto :goto_6

    .line 946
    :cond_4
    iget v10, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    mul-double/2addr v8, p0

    invoke-virtual {v2, v10, v8, v9}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static multAdd_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 405
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 406
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v4, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v2, v3, v4}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 407
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v3, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "C is not compatible with A and B"

    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    if-nez p3, :cond_2

    .line 409
    iget p3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array p3, p3, [D

    :cond_2
    move v0, v1

    .line 411
    :goto_2
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v0, v2, :cond_6

    move v2, v1

    .line 413
    :goto_3
    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v2, v3, :cond_3

    .line 414
    invoke-virtual {p1, v2, v0}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v1

    move v3, v2

    .line 418
    :goto_4
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_5

    const-wide/16 v4, 0x0

    move v6, v1

    .line 420
    :goto_5
    iget v7, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v7, :cond_4

    .line 421
    iget-object v7, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, v7, v3

    add-int/lit8 v3, v6, 0x1

    aget-wide v6, p3, v6

    mul-double/2addr v9, v6

    add-double/2addr v4, v9

    move v6, v3

    move v3, v8

    goto :goto_5

    .line 423
    :cond_4
    iget v6, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    invoke-virtual {p2, v6, v4, v5}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static multAdd_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 853
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 854
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 855
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 857
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 860
    :cond_2
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    move v5, v3

    .line 863
    :goto_2
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_6

    .line 864
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 865
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v5

    .line 870
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v3

    .line 872
    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, v9, v7

    mul-double v11, v11, p0

    move v7, v3

    move v9, v6

    :goto_3
    if-ge v7, v8, :cond_3

    add-int/lit8 v13, v9, 0x1

    .line 875
    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    move/from16 v18, v4

    mul-double v3, v11, v16

    invoke-virtual {v2, v9, v3, v4}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v9, v13

    move v7, v15

    move/from16 v4, v18

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_4
    if-eq v7, v4, :cond_5

    .line 881
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v7

    .line 883
    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v10, 0x1

    aget-wide v10, v8, v10

    mul-double v10, v10, p0

    move v8, v6

    :goto_5
    if-ge v7, v3, :cond_4

    .line 886
    iget-object v12, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v13, v8, 0x1

    aget-wide v15, v12, v8

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v14, v7

    mul-double v19, v19, v10

    add-double v15, v15, v19

    aput-wide v15, v12, v8

    move v8, v13

    move/from16 v7, v18

    goto :goto_5

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method

.method public static multAdd_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 330
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 331
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 332
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    .line 334
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v4, :cond_2

    goto :goto_6

    .line 337
    :cond_2
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    move v5, v3

    .line 340
    :goto_2
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_6

    .line 341
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 342
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v5

    .line 347
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v3

    .line 349
    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, v9, v7

    move v7, v3

    move v9, v6

    :goto_3
    if-ge v7, v8, :cond_3

    add-int/lit8 v13, v9, 0x1

    .line 352
    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    move/from16 v18, v4

    mul-double v3, v11, v16

    invoke-virtual {v2, v9, v3, v4}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    move v9, v13

    move v7, v15

    move/from16 v4, v18

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_4
    if-eq v7, v4, :cond_5

    .line 358
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v7

    .line 360
    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v10, 0x1

    aget-wide v10, v8, v10

    move v8, v6

    :goto_5
    if-ge v7, v3, :cond_4

    .line 363
    iget-object v12, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v13, v8, 0x1

    aget-wide v15, v12, v8

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v14, v7

    mul-double v19, v19, v10

    add-double v15, v15, v19

    aput-wide v15, v12, v8

    move v8, v13

    move/from16 v7, v18

    goto :goto_5

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method

.method public static multAdd_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 897
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 898
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 899
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 902
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_4

    .line 903
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    .line 904
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    move v7, v3

    .line 905
    :goto_3
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v8, :cond_3

    .line 910
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v8, v6

    const-wide/16 v9, 0x0

    move v11, v6

    move v12, v7

    :goto_4
    if-ge v11, v8, :cond_2

    .line 912
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v11, 0x1

    aget-wide v15, v13, v11

    iget-object v11, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v17, v11, v12

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    .line 913
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v12, v11

    move v11, v14

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v5, 0x1

    mul-double v9, v9, p0

    .line 916
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multAdd_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 374
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 375
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const/4 v7, 0x0

    sget-object v7, Lorg/ejml/dense/row/decompose/EB/JlKLR;->fRxbrbfpcSBgj:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 376
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v5, v6, :cond_1

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "C is not compatible with A and B"

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertShape(ZLjava/lang/String;)V

    move v4, v3

    .line 379
    :goto_2
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_4

    .line 380
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    .line 381
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    move v7, v3

    .line 382
    :goto_3
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v8, :cond_3

    .line 387
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v8, v6

    const-wide/16 v9, 0x0

    move v11, v6

    move v12, v7

    :goto_4
    if-ge v11, v8, :cond_2

    .line 389
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v11, 0x1

    aget-wide v15, v13, v11

    iget-object v11, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v17, v11, v12

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    .line 390
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v12, v11

    move v11, v14

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 393
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->plus(ID)D

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 761
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 762
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 763
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 767
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_3

    .line 768
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    move v6, v3

    move v7, v6

    .line 770
    :goto_2
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_2

    .line 772
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v7

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_3
    if-ge v7, v8, :cond_1

    .line 777
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    mul-double v12, v12, v16

    add-double/2addr v9, v12

    .line 778
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v7

    move v7, v15

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v5, 0x1

    mul-double v9, v9, p0

    .line 781
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 238
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 239
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 240
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 244
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_3

    .line 245
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    move v6, v3

    move v7, v6

    .line 247
    :goto_2
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_2

    .line 249
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v7

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_3
    if-ge v7, v8, :cond_1

    .line 254
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    mul-double v12, v12, v16

    add-double/2addr v9, v12

    .line 255
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v7

    move v7, v15

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v5, 0x1

    .line 258
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransAB_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 793
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 794
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 795
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    if-nez p5, :cond_1

    .line 797
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array v4, v4, [D

    goto :goto_1

    :cond_1
    move-object/from16 v4, p5

    .line 799
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_7

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    move v5, v3

    move v8, v5

    .line 804
    :goto_2
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v9, :cond_6

    move v9, v3

    .line 805
    :goto_3
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v9, v10, :cond_3

    .line 806
    invoke-virtual {v0, v9, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v10

    aput-wide v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v3

    .line 809
    :goto_4
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v9, v10, :cond_5

    move v10, v3

    move-wide v11, v6

    .line 812
    :goto_5
    iget v13, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v10, v13, :cond_4

    .line 813
    aget-wide v13, v4, v10

    invoke-virtual {v1, v9, v10}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v8, 0x1

    mul-double v11, v11, p0

    .line 815
    invoke-virtual {v2, v8, v11, v12}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 800
    :cond_7
    :goto_6
    invoke-static {v2, v6, v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransAB_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 270
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 271
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 272
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    if-nez p3, :cond_1

    .line 274
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array v4, v4, [D

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    .line 276
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_7

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    move v5, v3

    move v8, v5

    .line 281
    :goto_2
    iget v9, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v9, :cond_6

    move v9, v3

    .line 282
    :goto_3
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v9, v10, :cond_3

    .line 283
    invoke-virtual {v0, v9, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v10

    aput-wide v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v3

    .line 286
    :goto_4
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v9, v10, :cond_5

    move v10, v3

    move-wide v11, v6

    .line 289
    :goto_5
    iget v13, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v10, v13, :cond_4

    .line 290
    aget-wide v13, v4, v10

    invoke-virtual {v1, v9, v10}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v8, 0x1

    .line 292
    invoke-virtual {v2, v8, v11, v12}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 277
    :cond_7
    :goto_6
    invoke-static {v2, v6, v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 694
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 695
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 696
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 698
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v5, :cond_6

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    move v5, v3

    .line 703
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_5

    .line 704
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 707
    iget-object v7, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v5

    mul-double v7, v7, p0

    .line 709
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v3

    move v10, v3

    move v11, v6

    :goto_2
    if-ge v10, v9, :cond_2

    add-int/lit8 v12, v11, 0x1

    .line 712
    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v10

    mul-double v3, v7, v15

    invoke-virtual {v2, v11, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v11, v12

    move v10, v14

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 715
    :goto_3
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_4

    .line 716
    invoke-virtual {v0, v3, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    mul-double v7, v7, p0

    .line 717
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v4, v10

    move v9, v6

    :goto_4
    if-ge v10, v4, :cond_3

    .line 721
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v9, 0x1

    aget-wide v14, v11, v9

    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v13, v10

    mul-double v18, v18, v7

    add-double v14, v14, v18

    aput-wide v14, v11, v9

    move v9, v12

    move/from16 v10, v17

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 699
    invoke-static {v2, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 171
    invoke-static {v5, v6}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 172
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v7, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v5, v6, v7}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 173
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 175
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v5, :cond_6

    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    move v5, v3

    .line 180
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_5

    .line 181
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 184
    iget-object v7, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v7, v7, v5

    .line 186
    iget v9, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v9, v3

    move v10, v3

    move v11, v6

    :goto_2
    if-ge v10, v9, :cond_2

    add-int/lit8 v12, v11, 0x1

    .line 189
    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v10

    mul-double v3, v7, v15

    invoke-virtual {v2, v11, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v11, v12

    move v10, v14

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 192
    :goto_3
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v3, v4, :cond_4

    .line 193
    invoke-virtual {v0, v3, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    .line 194
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v4, v10

    move v9, v6

    :goto_4
    if-ge v10, v4, :cond_3

    .line 198
    iget-object v11, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v9, 0x1

    aget-wide v14, v11, v9

    iget-object v13, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v17, v10, 0x1

    aget-wide v18, v13, v10

    mul-double v18, v18, v7

    add-double v14, v14, v18

    aput-wide v14, v11, v9

    move v9, v12

    move/from16 v10, v17

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 176
    invoke-static {v2, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static multTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 732
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 733
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 734
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 737
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v4, v5, :cond_3

    .line 738
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    move v6, v3

    .line 739
    :goto_2
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v6, v7, :cond_2

    .line 742
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move v11, v4

    move v10, v6

    :goto_3
    if-ge v10, v7, :cond_1

    .line 747
    iget-object v12, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v12, v12, v11

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v14, v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 748
    iget v12, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v11, v12

    .line 746
    iget v12, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v10, v12

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v5, 0x1

    mul-double v8, v8, p0

    .line 751
    invoke-virtual {v2, v5, v8, v9}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 13

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 209
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 210
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 211
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v1, v0

    .line 214
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_3

    .line 215
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v2, v1

    move v3, v0

    .line 216
    :goto_2
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v3, v4, :cond_2

    .line 219
    iget v4, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    const-wide/16 v5, 0x0

    move v8, v1

    move v7, v3

    :goto_3
    if-ge v7, v4, :cond_1

    .line 224
    iget-object v9, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v11, v11, v7

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 225
    iget v9, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v9

    .line 223
    iget v9, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v9

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 228
    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 825
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 826
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 827
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 830
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_3

    .line 831
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    .line 832
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    .line 833
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v6

    move v8, v3

    move v9, v8

    .line 835
    :goto_2
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v8, v10, :cond_2

    const-wide/16 v10, 0x0

    move v12, v6

    :goto_3
    if-ge v12, v7, :cond_1

    .line 840
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    iget-object v15, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v15, v9

    mul-double v12, v12, v17

    add-double/2addr v10, v12

    move v12, v14

    move/from16 v9, v16

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v5, 0x1

    mul-double v10, v10, p0

    .line 843
    invoke-virtual {v2, v5, v10, v11}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v8, v8, 0x1

    move v5, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    sget-object v5, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->FTSTEm:Ljava/lang/String;

    .line 302
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 303
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 304
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 307
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_3

    .line 308
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    mul-int/2addr v5, v4

    .line 309
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    .line 310
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v7, v6

    move v8, v3

    move v9, v8

    .line 312
    :goto_2
    iget v10, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v8, v10, :cond_2

    const-wide/16 v10, 0x0

    move v12, v6

    :goto_3
    if-ge v12, v7, :cond_1

    .line 317
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v12, v13, v12

    iget-object v15, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v15, v9

    mul-double v12, v12, v17

    add-double/2addr v10, v12

    move v12, v14

    move/from16 v9, v16

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v5, 0x1

    .line 320
    invoke-virtual {v2, v5, v10, v11}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v8, v8, 0x1

    move v5, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static mult_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 666
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 667
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 668
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    if-nez p5, :cond_1

    .line 670
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array v4, v4, [D

    goto :goto_1

    :cond_1
    move-object/from16 v4, p5

    :goto_1
    move v5, v3

    .line 672
    :goto_2
    iget v6, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v5, v6, :cond_5

    move v6, v3

    .line 674
    :goto_3
    iget v7, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v7, :cond_2

    .line 675
    invoke-virtual {v1, v6, v5}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    move v6, v3

    move v7, v6

    .line 679
    :goto_4
    iget v8, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v8, :cond_4

    const-wide/16 v8, 0x0

    move v10, v3

    .line 681
    :goto_5
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v10, v11, :cond_3

    .line 682
    iget-object v11, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v12, v7, 0x1

    aget-wide v13, v11, v7

    add-int/lit8 v7, v10, 0x1

    aget-wide v10, v4, v10

    mul-double/2addr v13, v10

    add-double/2addr v8, v13

    move v10, v7

    move v7, v12

    goto :goto_5

    .line 684
    :cond_3
    iget v10, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    mul-double/2addr v8, p0

    invoke-virtual {v2, v10, v8, v9}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static mult_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V
    .locals 11

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 143
    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 144
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v3, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v1, v2, v3}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 145
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    if-nez p3, :cond_1

    .line 147
    iget p3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    new-array p3, p3, [D

    :cond_1
    move v1, v0

    .line 149
    :goto_1
    iget v2, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v1, v2, :cond_5

    move v2, v0

    .line 151
    :goto_2
    iget v3, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v2, v3, :cond_2

    .line 152
    invoke-virtual {p1, v2, v1}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    move v3, v2

    .line 156
    :goto_3
    iget v4, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v2, v4, :cond_4

    const-wide/16 v4, 0x0

    move v6, v0

    .line 158
    :goto_4
    iget v7, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v6, v7, :cond_3

    .line 159
    iget-object v7, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, v7, v3

    add-int/lit8 v3, v6, 0x1

    aget-wide v6, p3, v6

    mul-double/2addr v9, v6

    add-double/2addr v4, v9

    move v6, v3

    move v3, v8

    goto :goto_4

    .line 161
    :cond_3
    iget v6, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-virtual {p2, v6, v4, v5}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static mult_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 590
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 591
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 592
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 594
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 598
    :cond_1
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    move v5, v3

    .line 601
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_5

    .line 602
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 603
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v5

    .line 608
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v3

    .line 610
    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, v9, v7

    mul-double v11, v11, p0

    move v7, v3

    move v9, v6

    :goto_2
    if-ge v7, v8, :cond_2

    add-int/lit8 v13, v9, 0x1

    .line 613
    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    move/from16 v18, v4

    mul-double v3, v11, v16

    invoke-virtual {v2, v9, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v9, v13

    move v7, v15

    move/from16 v4, v18

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_3
    if-eq v7, v4, :cond_4

    .line 619
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v7

    .line 621
    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v10, 0x1

    aget-wide v10, v8, v10

    mul-double v10, v10, p0

    move v8, v6

    :goto_4
    if-ge v7, v3, :cond_3

    .line 624
    iget-object v12, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v13, v8, 0x1

    aget-wide v15, v12, v8

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v14, v7

    mul-double v19, v19, v10

    add-double v15, v15, v19

    aput-wide v15, v12, v8

    move v8, v13

    move/from16 v7, v18

    goto :goto_4

    :cond_3
    move v10, v9

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 595
    invoke-static {v2, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static mult_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 67
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 68
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 69
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    .line 71
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-eqz v4, :cond_6

    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-nez v4, :cond_1

    goto :goto_5

    .line 75
    :cond_1
    iget v4, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v4, v5

    move v5, v3

    .line 78
    :goto_1
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v5, v6, :cond_5

    .line 79
    iget v6, v2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v5

    .line 80
    iget v7, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v7, v5

    .line 85
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v8, v3

    .line 87
    iget-object v9, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, v9, v7

    move v7, v3

    move v9, v6

    :goto_2
    if-ge v7, v8, :cond_2

    add-int/lit8 v13, v9, 0x1

    .line 90
    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v15, v7, 0x1

    aget-wide v16, v14, v7

    move/from16 v18, v4

    mul-double v3, v11, v16

    invoke-virtual {v2, v9, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    move v9, v13

    move v7, v15

    move/from16 v4, v18

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_3
    if-eq v7, v4, :cond_4

    .line 96
    iget v3, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v3, v7

    .line 98
    iget-object v8, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v9, v10, 0x1

    aget-wide v10, v8, v10

    move v8, v6

    :goto_4
    if-ge v7, v3, :cond_3

    .line 101
    iget-object v12, v2, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v13, v8, 0x1

    aget-wide v15, v12, v8

    iget-object v14, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v18, v7, 0x1

    aget-wide v19, v14, v7

    mul-double v19, v19, v10

    add-double v15, v15, v19

    aput-wide v15, v12, v8

    move v8, v13

    move/from16 v7, v18

    goto :goto_4

    :cond_3
    move v10, v9

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-wide/16 v0, 0x0

    .line 72
    invoke-static {v2, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public static mult_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Neither \'A\' or \'B\' can be the same matrix as \'C\'"

    .line 635
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 636
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 637
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 640
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_3

    .line 641
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    .line 642
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    move v7, v3

    .line 643
    :goto_2
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v8, :cond_2

    .line 648
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v8, v6

    const-wide/16 v9, 0x0

    move v11, v6

    move v12, v7

    :goto_3
    if-ge v11, v8, :cond_1

    .line 650
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v11, 0x1

    aget-wide v15, v13, v11

    iget-object v11, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v17, v11, v12

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    .line 651
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v12, v11

    move v11, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v5, 0x1

    mul-double v9, v9, p0

    .line 654
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static mult_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/exoplayer2/upstream/cache/lCg/RbrVQrmMpaaGj;->HAEohLSyNPL:Ljava/lang/String;

    .line 112
    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    .line 113
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const-string v6, "The \'A\' and \'B\' matrices do not have compatible dimensions"

    invoke-static {v4, v5, v6}, Lorg/ejml/UtilEjml;->assertShape(IILjava/lang/String;)V

    .line 114
    iget v4, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-virtual {v2, v4, v5}, Lorg/ejml/data/DMatrix1Row;->reshape(II)V

    move v4, v3

    .line 117
    :goto_1
    iget v5, v0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ge v4, v5, :cond_3

    .line 118
    iget v5, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v5, v4

    .line 119
    iget v6, v0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    mul-int/2addr v6, v4

    move v7, v3

    .line 120
    :goto_2
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v7, v8, :cond_2

    .line 125
    iget v8, v1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    add-int/2addr v8, v6

    const-wide/16 v9, 0x0

    move v11, v6

    move v12, v7

    :goto_3
    if-ge v11, v8, :cond_1

    .line 127
    iget-object v13, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    add-int/lit8 v14, v11, 0x1

    aget-wide v15, v13, v11

    iget-object v11, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v17, v11, v12

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    .line 128
    iget v11, v1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/2addr v12, v11

    move v11, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v5, 0x1

    .line 131
    invoke-virtual {v2, v5, v9, v10}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

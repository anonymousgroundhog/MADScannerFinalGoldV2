.class public Lorg/ejml/dense/block/InnerRankUpdate_DDRB;
.super Ljava/lang/Object;
.source "InnerRankUpdate_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static multTransABlockMinus([D[DIIIIII)V
    .locals 15

    mul-int v0, p5, p7

    add-int v0, p3, v0

    move/from16 v1, p2

    move/from16 v2, p3

    :goto_0
    if-eq v2, v0, :cond_2

    add-int v3, v1, p6

    add-int v4, v2, p7

    move/from16 v5, p4

    :goto_1
    if-eq v1, v3, :cond_1

    add-int/lit8 v6, v1, 0x1

    .line 219
    aget-wide v7, p0, v1

    move v1, v2

    :goto_2
    if-eq v1, v4, :cond_0

    add-int/lit8 v9, v5, 0x1

    .line 223
    aget-wide v10, p1, v5

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p0, v1

    mul-double/2addr v13, v7

    sub-double/2addr v10, v13

    aput-wide v10, p1, v5

    move v5, v9

    move v1, v12

    goto :goto_2

    :cond_0
    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransABlockMinus_U([D[DIIIIII)V
    .locals 16

    move/from16 v0, p6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move/from16 v3, p5

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int v5, v4, v0

    add-int/2addr v5, v2

    add-int v5, v5, p2

    .line 252
    aget-wide v5, p0, v5

    mul-int v7, v4, p7

    add-int v7, v7, p3

    add-int/2addr v7, v2

    mul-int v8, v2, p7

    add-int v8, v8, p4

    add-int/2addr v8, v2

    sub-int v9, v8, v2

    add-int v9, v9, p7

    :goto_2
    if-eq v8, v9, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 260
    aget-wide v11, p1, v8

    add-int/lit8 v13, v7, 0x1

    aget-wide v14, p0, v7

    mul-double/2addr v14, v5

    sub-double/2addr v11, v14

    aput-wide v11, p1, v8

    move v8, v10

    move v7, v13

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus([D[DIIIIII)V
    .locals 16

    const/4 v0, 0x0

    move/from16 v1, p4

    move/from16 v3, p6

    move v2, v0

    move/from16 v0, p2

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v0, p5

    add-int v5, v1, p7

    move/from16 v6, p3

    :goto_1
    if-eq v1, v5, :cond_1

    const-wide/16 v7, 0x0

    move v9, v0

    move v10, v6

    :goto_2
    if-eq v9, v4, :cond_0

    add-int/lit8 v11, v9, 0x1

    .line 300
    aget-wide v12, p0, v9

    add-int/lit8 v9, v10, 0x1

    aget-wide v14, p0, v10

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    move v10, v9

    move v9, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v1, 0x1

    .line 302
    aget-wide v10, p1, v1

    sub-double/2addr v10, v7

    aput-wide v10, p1, v1

    add-int v6, v6, p5

    move v1, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus_L([D[DIIIIII)V
    .locals 17

    const/4 v0, 0x0

    move/from16 v1, p6

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    mul-int v3, v2, p5

    add-int v3, v3, p2

    add-int v4, v3, p5

    mul-int v5, v2, p7

    add-int v5, v5, p4

    move/from16 v7, p3

    move v6, v0

    :goto_1
    if-gt v6, v2, :cond_1

    const-wide/16 v8, 0x0

    move v10, v3

    move v11, v7

    :goto_2
    if-eq v10, v4, :cond_0

    add-int/lit8 v12, v10, 0x1

    .line 340
    aget-wide v13, p0, v10

    add-int/lit8 v10, v11, 0x1

    aget-wide v15, p0, v11

    mul-double/2addr v13, v15

    add-double/2addr v8, v13

    move v11, v10

    move v10, v12

    goto :goto_2

    :cond_0
    add-int v10, v5, v6

    .line 342
    aget-wide v11, p1, v10

    sub-double/2addr v11, v8

    aput-wide v11, p1, v10

    add-int/lit8 v6, v6, 0x1

    add-int v7, v7, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rankNUpdate(IDLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 50
    iget v3, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_4

    .line 54
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 56
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 58
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_2

    .line 62
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_1

    .line 64
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v4, v3

    add-int v16, v5, v6

    .line 65
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 67
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v18, v5, v6

    .line 68
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int v5, v5, v18

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 70
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    move v15, v5

    :goto_1
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v15, v5, :cond_0

    .line 72
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 74
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int v5, v5, v18

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v15, v6

    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v19

    add-int v12, v5, v6

    .line 75
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v15, v3

    add-int v11, v5, v6

    .line 77
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v8, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v9, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    move-wide/from16 v5, p1

    move/from16 v10, v16

    move v13, v3

    move/from16 v14, v17

    move/from16 v21, v15

    move/from16 v15, v20

    invoke-static/range {v5 .. v15}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA(D[D[D[DIIIIII)V

    add-int v15, v21, v0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    return-void

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->REYvPguwReFdcqK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static symmRankNMinus_L(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 147
    iget v3, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_5

    .line 151
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v4, v5

    .line 153
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_4

    .line 155
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 159
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v4, v5, :cond_2

    .line 160
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 161
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v4

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v6, v13

    add-int v14, v5, v6

    .line 163
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v15, v5, v6

    .line 164
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 166
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move v12, v5

    :goto_1
    if-gt v12, v4, :cond_1

    .line 168
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v12

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 170
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v12, v6

    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v16

    add-int v9, v5, v6

    .line 171
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v12

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int v6, v6, v17

    add-int v8, v5, v6

    if-ne v4, v12, :cond_0

    .line 174
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    move v7, v14

    move v10, v3

    move v11, v13

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_DDRB;->multTransBBlockMinus_L([D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v12

    .line 177
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    move v7, v14

    move v10, v3

    move v11, v13

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_DDRB;->multTransBBlockMinus([D[DIIIIII)V

    :goto_2
    add-int v12, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_2
    return-void

    .line 156
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->UefmDQhF:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static symmRankNMinus_U(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 96
    iget v3, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_5

    .line 100
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    .line 102
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_4

    .line 104
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_3

    .line 109
    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_2

    .line 111
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v4, v3

    add-int v13, v5, v6

    .line 112
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 114
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v5, v4, v5

    iget v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int v15, v5, v6

    .line 115
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v15

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v12, v4

    .line 117
    :goto_1
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v12, v5, :cond_1

    .line 119
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v12

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 121
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v15

    iget v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v12, v6

    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int v6, v6, v16

    add-int v9, v5, v6

    .line 122
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v12, v3

    add-int v8, v5, v6

    if-ne v4, v12, :cond_0

    .line 126
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    move v7, v13

    move v10, v3

    move v11, v14

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_DDRB;->multTransABlockMinus_U([D[DIIIIII)V

    goto :goto_2

    :cond_0
    move/from16 v18, v12

    .line 129
    iget-object v5, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    move v7, v13

    move v10, v3

    move v11, v14

    move/from16 v12, v17

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/block/InnerRankUpdate_DDRB;->multTransABlockMinus([D[DIIIIII)V

    :goto_2
    add-int v12, v18, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_2
    return-void

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/app/bGP/xwFdypMN;->rvwtihCVgUbaX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

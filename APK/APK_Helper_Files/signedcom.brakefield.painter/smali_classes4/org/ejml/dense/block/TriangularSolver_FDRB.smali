.class public Lorg/ejml/dense/block/TriangularSolver_FDRB;
.super Ljava/lang/Object;
.source "TriangularSolver_FDRB.java"


# direct methods
.method public static synthetic $r8$lambda$pq654f7UQ7aW8eY1DSwJEDd0k2c()Lorg/ejml/data/FGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lorg/ejml/data/FSubmatrixD1;",
            "Lorg/ejml/data/FSubmatrixD1;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez p1, :cond_5

    if-nez p4, :cond_0

    .line 70
    new-instance v3, Lpabeles/concurrency/GrowArray;

    new-instance v4, Lorg/ejml/dense/block/TriangularSolver_FDRB$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/ejml/dense/block/TriangularSolver_FDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, v4}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lpabeles/concurrency/GrowArray;->reset()V

    move-object/from16 v3, p4

    .line 74
    :goto_0
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-ne v4, v5, :cond_4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ne v4, v5, :cond_4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-ne v4, v5, :cond_4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ne v4, v5, :cond_4

    mul-int v4, v0, v0

    .line 79
    invoke-virtual {v3}, Lpabeles/concurrency/GrowArray;->grow()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/data/FGrowArray;

    invoke-virtual {v3, v4}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object v3

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    .line 81
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v13, v4, v5

    .line 83
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget-object v14, v4, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 84
    iget-object v2, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget-object v2, v2, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 86
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v4, v5

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v5, v13

    add-int v15, v4, v5

    const/4 v12, 0x0

    move v11, v12

    :goto_1
    if-ge v11, v13, :cond_3

    .line 90
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v5, v11

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 92
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v5, v11

    mul-int/2addr v4, v5

    add-int/2addr v4, v15

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v5, v11

    mul-int/2addr v5, v10

    add-int v9, v4, v5

    move v8, v12

    :goto_2
    if-ge v8, v11, :cond_2

    .line 97
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v5, v8

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/4 v4, 0x0

    .line 99
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([FF)V

    move v7, v8

    :goto_3
    if-ge v7, v11, :cond_1

    .line 102
    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 104
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v5, v11

    mul-int/2addr v4, v5

    add-int/2addr v4, v15

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v5, v7

    mul-int/2addr v5, v10

    add-int v18, v4, v5

    .line 105
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v5, v7

    mul-int/2addr v4, v5

    add-int/2addr v4, v15

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v5, v8

    mul-int v5, v5, v17

    add-int v19, v4, v5

    const/16 v20, 0x0

    move-object v4, v14

    move-object v5, v2

    move-object v6, v3

    move/from16 v21, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move/from16 p1, v9

    move/from16 v9, v20

    move/from16 p3, v10

    move/from16 v19, v11

    move/from16 v11, v17

    move/from16 p4, v13

    move v13, v12

    move/from16 v12, v16

    .line 107
    invoke-static/range {v4 .. v12}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultMinus([F[F[FIIIIII)V

    add-int v7, v21, v0

    move/from16 v9, p1

    move v12, v13

    move/from16 v8, v18

    move/from16 v11, v19

    move/from16 v13, p4

    goto :goto_3

    :cond_1
    move/from16 v18, v8

    move/from16 p1, v9

    move/from16 p3, v10

    move/from16 v19, v11

    move/from16 p4, v13

    move v13, v12

    .line 110
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v11, v19, v5

    mul-int/2addr v4, v11

    add-int/2addr v4, v15

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int v8, v18, v5

    move/from16 v11, p3

    mul-int v10, v11, v8

    add-int v12, v4, v10

    const/4 v10, 0x0

    move-object v4, v14

    move-object v5, v3

    move v6, v11

    move/from16 v7, v16

    move v8, v11

    .line 112
    invoke-static/range {v4 .. v10}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveL([F[FIIIII)V

    mul-int v4, v16, v11

    .line 113
    invoke-static {v3, v13, v2, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v18, v0

    move v10, v11

    move v12, v13

    move/from16 v11, v19

    move/from16 v13, p4

    goto/16 :goto_2

    :cond_2
    move v4, v9

    move/from16 v19, v11

    move/from16 p4, v13

    move v11, v10

    move v13, v12

    .line 116
    invoke-static {v14, v2, v11, v4, v4}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->invertLower([F[FIII)V

    add-int v11, v19, v0

    move/from16 v13, p4

    goto/16 :goto_1

    :cond_3
    return-void

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T and T_inv must be at the same elements in the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper triangular matrices not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invert(IZLorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lorg/ejml/data/FSubmatrixD1;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_4

    if-nez p3, :cond_0

    .line 137
    new-instance v2, Lpabeles/concurrency/GrowArray;

    new-instance v3, Lorg/ejml/dense/block/TriangularSolver_FDRB$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/ejml/dense/block/TriangularSolver_FDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lpabeles/concurrency/GrowArray;->reset()V

    move-object/from16 v2, p3

    :goto_0
    mul-int v3, v0, v0

    .line 142
    invoke-virtual {v2}, Lpabeles/concurrency/GrowArray;->grow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/FGrowArray;

    invoke-virtual {v2, v3}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    move-result-object v2

    iget-object v2, v2, Lorg/ejml/data/FGrowArray;->data:[F

    .line 144
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v12, v3, v4

    .line 146
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget-object v13, v3, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 147
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v4, v12

    add-int v14, v3, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_3

    .line 150
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v4, v11

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 152
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v4, v11

    mul-int/2addr v3, v4

    add-int/2addr v3, v14

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v11

    mul-int/2addr v4, v10

    add-int v9, v3, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_2

    .line 155
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v8

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/4 v3, 0x0

    .line 157
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    move v7, v8

    :goto_3
    if-ge v7, v11, :cond_1

    .line 160
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v7

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 162
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v4, v11

    mul-int/2addr v3, v4

    add-int/2addr v3, v14

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v7

    mul-int/2addr v4, v10

    add-int v6, v3, v4

    .line 163
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v4, v7

    mul-int/2addr v3, v4

    add-int/2addr v3, v14

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v8

    mul-int v4, v4, v17

    add-int v18, v3, v4

    const/16 v19, 0x0

    move-object v3, v13

    move-object v4, v13

    move-object v5, v2

    move/from16 v20, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move/from16 p1, v9

    move v9, v10

    move v15, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move/from16 v11, v16

    .line 165
    invoke-static/range {v3 .. v11}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultMinus([F[F[FIIIIII)V

    add-int v7, v20, v0

    move/from16 v9, p1

    move v10, v15

    move/from16 v11, v17

    move/from16 v8, v18

    goto :goto_3

    :cond_1
    move/from16 v18, v8

    move/from16 p1, v9

    move v15, v10

    move/from16 v17, v11

    .line 168
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int v11, v17, v4

    mul-int/2addr v3, v11

    add-int/2addr v3, v14

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int v8, v18, v4

    mul-int v10, v15, v8

    add-int/2addr v10, v3

    const/4 v9, 0x0

    move-object v3, v13

    move-object v4, v2

    move v5, v15

    move/from16 v6, v16

    move v7, v15

    move/from16 v8, p1

    .line 170
    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveL([F[FIIIII)V

    mul-int v3, v16, v15

    const/4 v4, 0x0

    .line 171
    invoke-static {v2, v4, v13, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v18, v0

    move/from16 v9, p1

    move v10, v15

    move/from16 v11, v17

    goto/16 :goto_2

    :cond_2
    move v3, v9

    move v15, v10

    move/from16 v17, v11

    const/4 v4, 0x0

    .line 173
    invoke-static {v13, v15, v3}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->invertLower([FII)V

    add-int v11, v17, v0

    goto/16 :goto_1

    :cond_3
    return-void

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper triangular matrices not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static solve(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    invoke-static {p0, p2, p3, p4}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveR(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveL(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V

    :goto_0
    return-void
.end method

.method public static solveBlock(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ZZ)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 227
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_9

    .line 231
    iget-object v4, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 232
    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 234
    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v6, v4

    add-int v13, v5, v6

    .line 236
    iget-object v1, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget-object v1, v1, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 237
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v14, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    if-eqz p5, :cond_3

    const-string v3, "Operation not yet supported"

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    .line 251
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v3, v5, :cond_7

    .line 252
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    add-int v12, v3, v0

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v8, v5, v3

    .line 254
    iget-object v5, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget v5, v5, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v5

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v5, v8

    add-int v11, v3, v5

    move-object v5, v1

    move-object v6, v14

    move v7, v4

    move v9, v4

    move v10, v13

    .line 256
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveLTransB([F[FIIIII)V

    move v3, v12

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_3
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_8

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 268
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_1
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_7

    .line 269
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v4

    add-int v11, v5, v6

    .line 271
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    add-int v12, v4, v0

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v8, v5, v4

    move-object v5, v1

    move-object v6, v14

    move v7, v3

    move v9, v3

    move v10, v13

    .line 272
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveTransU([F[FIIIII)V

    move v4, v12

    goto :goto_1

    .line 277
    :cond_4
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_2
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_7

    .line 278
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v4

    add-int v11, v5, v6

    .line 280
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    add-int v12, v4, v0

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v8, v5, v4

    move-object v5, v1

    move-object v6, v14

    move v7, v3

    move v9, v3

    move v10, v13

    .line 281
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveU([F[FIIIII)V

    move v4, v12

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 288
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_3
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_7

    .line 289
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v4

    add-int v11, v5, v6

    .line 291
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    add-int v15, v4, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v8, v5, v4

    move-object v5, v1

    move-object v6, v14

    move v7, v3

    move v9, v12

    move v10, v13

    .line 292
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveTransL([F[FIIIII)V

    move v4, v15

    goto :goto_3

    .line 297
    :cond_6
    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_4
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v4, v5, :cond_7

    .line 298
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/FMatrixD1;

    iget v6, v6, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v4

    add-int v11, v5, v6

    .line 300
    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    add-int v15, v4, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v8, v5, v4

    move-object v5, v1

    move-object v6, v14

    move v7, v3

    move v9, v12

    move v10, v13

    .line 301
    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;->solveL([F[FIIIII)V

    move v4, v15

    goto :goto_4

    :cond_7
    return-void

    .line 263
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T and B must have the same number of rows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T can be at most the size of a block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static solveL(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V
    .locals 16

    move/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 328
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v9, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 330
    new-instance v10, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v10, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 331
    new-instance v11, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v11, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 333
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v12, v0, v1

    const/4 v13, 0x0

    if-eqz p3, :cond_1

    .line 338
    rem-int v0, v12, v6

    sub-int v0, v12, v0

    if-ne v0, v12, :cond_0

    if-lt v12, v6, :cond_0

    sub-int/2addr v0, v6

    :cond_0
    neg-int v1, v6

    move v14, v1

    goto :goto_0

    :cond_1
    move v14, v6

    move v0, v13

    :goto_0
    move v15, v0

    :goto_1
    if-eqz p3, :cond_2

    if-gez v15, :cond_3

    goto :goto_2

    :cond_2
    if-lt v15, v12, :cond_3

    :goto_2
    return-void

    :cond_3
    sub-int v0, v12, v15

    .line 356
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 358
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v15

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 359
    iget v1, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 360
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 361
    iget v1, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 363
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 364
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 365
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 366
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move/from16 v4, p3

    .line 370
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveBlock(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ZZ)V

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 374
    iget v1, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v13

    goto :goto_3

    .line 376
    :cond_5
    iget v1, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v1, v2, :cond_4

    :goto_3
    if-eqz v0, :cond_8

    if-eqz p3, :cond_6

    .line 383
    iget v0, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 384
    iget v0, v10, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v0, v6

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 385
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 389
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 391
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v6

    iput v0, v9, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 392
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v9, Lorg/ejml/data/FSubmatrixD1;->row1:I

    goto :goto_4

    .line 394
    :cond_6
    iget v0, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 395
    iget v0, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 396
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 399
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 402
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v9, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 403
    iget v0, v9, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 407
    :goto_4
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_5
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v0, v1, :cond_8

    .line 409
    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    .line 410
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 412
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v1, v9, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 413
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v1, v9, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-eqz p3, :cond_7

    .line 417
    invoke-static {v6, v10, v11, v9}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multMinusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_5

    .line 421
    :cond_7
    invoke-static {v6, v10, v11, v9}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multMinus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_5

    :cond_8
    add-int/2addr v15, v14

    goto/16 :goto_1
.end method

.method public static solveR(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V
    .locals 16

    move/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 449
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v9, v0, v1

    .line 450
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/FSubmatrixD1;->getCols()I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 452
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/FSubmatrixD1;->getRows()I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 456
    new-instance v10, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v10, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 458
    new-instance v11, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v7, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v11, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 459
    new-instance v12, Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    invoke-direct {v12, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    const/4 v13, 0x0

    if-eqz p3, :cond_0

    move v14, v6

    move v0, v13

    goto :goto_0

    .line 467
    :cond_0
    rem-int v0, v9, v6

    sub-int v0, v9, v0

    if-ne v0, v9, :cond_1

    if-lt v9, v6, :cond_1

    sub-int/2addr v0, v6

    :cond_1
    neg-int v1, v6

    move v14, v1

    :goto_0
    move v15, v0

    :goto_1
    if-eqz p3, :cond_2

    if-lt v15, v9, :cond_3

    goto :goto_2

    :cond_2
    if-gez v15, :cond_3

    :goto_2
    return-void

    :cond_3
    sub-int v0, v9, v15

    .line 482
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 484
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 485
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 486
    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 487
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 489
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 490
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v1, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 491
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 492
    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v12, Lorg/ejml/data/FSubmatrixD1;->row1:I

    const/4 v1, 0x1

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p3

    .line 496
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveBlock(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ZZ)V

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 500
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, v7, Lorg/ejml/data/FSubmatrixD1;->row1:I

    if-ge v1, v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v13

    goto :goto_3

    .line 502
    :cond_5
    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-lez v1, :cond_4

    :goto_3
    if-eqz v0, :cond_8

    if-eqz p3, :cond_6

    .line 509
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 510
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    iget v1, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 511
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 514
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 517
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 518
    iget v0, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    goto :goto_4

    .line 520
    :cond_6
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 521
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int/2addr v0, v6

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 522
    iget v0, v7, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 525
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, v12, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 527
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v6

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 528
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, v10, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 532
    :goto_4
    iget v0, v8, Lorg/ejml/data/FSubmatrixD1;->col0:I

    :goto_5
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v0, v1, :cond_8

    .line 534
    iput v0, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    .line 535
    iget v1, v8, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 537
    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 538
    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v1, v10, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-eqz p3, :cond_7

    .line 542
    invoke-static {v6, v11, v12, v10}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multMinusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_5

    .line 545
    :cond_7
    invoke-static {v6, v11, v12, v10}, Lorg/ejml/dense/block/MatrixMult_FDRB;->multMinus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_5

    :cond_8
    add-int/2addr v15, v14

    goto/16 :goto_1

    .line 453
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

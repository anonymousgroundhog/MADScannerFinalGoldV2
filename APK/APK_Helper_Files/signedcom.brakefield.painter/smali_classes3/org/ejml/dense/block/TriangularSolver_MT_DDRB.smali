.class public Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;
.super Ljava/lang/Object;
.source "TriangularSolver_MT_DDRB.java"


# direct methods
.method public static synthetic $r8$lambda$EUv0wajhkQEpjMTqSP4N1q46jtI()Lorg/ejml/data/DGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lorg/ejml/data/DSubmatrixD1;",
            "Lorg/ejml/data/DSubmatrixD1;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    move/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_4

    .line 65
    iget-object v1, v11, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    iget-object v2, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    if-eq v1, v2, :cond_3

    if-nez p4, :cond_0

    .line 69
    new-instance v1, Lpabeles/concurrency/GrowArray;

    new-instance v2, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v1, v2}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    move-object v12, v1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lpabeles/concurrency/GrowArray;->reset()V

    move-object/from16 v12, p4

    .line 73
    :goto_0
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-ne v1, v2, :cond_2

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ne v1, v2, :cond_2

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-ne v1, v2, :cond_2

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ne v1, v2, :cond_2

    mul-int v13, v10, v10

    .line 78
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v14, v1, v2

    .line 80
    iget-object v1, v11, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget-object v15, v1, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 81
    iget-object v0, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v9, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 83
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v1, v11, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, v1

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v1, v14

    add-int v16, v0, v1

    const/4 v8, 0x0

    move v7, v8

    :goto_1
    if-ge v7, v14, :cond_1

    .line 87
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v7

    sub-int/2addr v0, v1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 89
    iget-object v0, v11, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v0, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v7

    mul-int/2addr v0, v1

    add-int v0, v16, v0

    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v7

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    .line 91
    new-instance v4, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda6;

    move-object v0, v4

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v3, p0

    move-object v11, v4

    move v4, v7

    move/from16 p1, v5

    move/from16 v5, v16

    move/from16 p3, v6

    move/from16 p4, v13

    move v13, v7

    move-object v7, v15

    move/from16 v17, v14

    move v14, v8

    move-object v8, v9

    move-object/from16 v18, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda6;-><init>(ILorg/ejml/data/DSubmatrixD1;IIII[D[DI)V

    invoke-static {v14, v13, v10, v12, v11}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntObjectConsumer;)V

    move/from16 v2, p1

    move/from16 v1, p3

    move-object/from16 v0, v18

    .line 111
    invoke-static {v15, v0, v1, v2, v2}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->invertLower([D[DIII)V

    add-int v7, v13, v10

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object v9, v0

    move v8, v14

    move/from16 v14, v17

    goto :goto_1

    :cond_1
    return-void

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T and T_inv must be at the same elements in the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Same instance not allowed for concurrent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper triangular matrices not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$invert$0(ILorg/ejml/data/DSubmatrixD1;IIII[D[DILorg/ejml/data/DGrowArray;I)V
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, p0

    move-object/from16 v4, p9

    .line 92
    invoke-virtual {v4, p0}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    move-result-object v3

    iget-object v12, v3, Lorg/ejml/data/DGrowArray;->data:[D

    .line 93
    iget v3, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v4, p10, v4

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    const-wide/16 v3, 0x0

    .line 95
    invoke-static {v12, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    move/from16 v14, p10

    :goto_0
    if-ge v14, v2, :cond_0

    .line 98
    iget v3, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v4, v14

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 100
    iget-object v3, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v4, v2

    mul-int/2addr v3, v4

    add-int v3, p4, v3

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v4, v14

    mul-int v4, v4, p5

    add-int v6, v3, v4

    .line 101
    iget-object v3, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v4, v14

    mul-int/2addr v3, v4

    add-int v3, p4, v3

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v4, p10, v4

    mul-int/2addr v4, v10

    add-int v7, v3, v4

    const/4 v8, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, v12

    move/from16 v9, p5

    move v11, v13

    .line 103
    invoke-static/range {v3 .. v11}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultMinus([D[D[DIIIIII)V

    add-int/2addr v14, v1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v3, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int v1, p4, v1

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int v0, p10, v0

    mul-int v0, v0, p5

    add-int v7, v1, v0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    move-object v1, v12

    move/from16 v2, p5

    move v3, v13

    move/from16 v4, p5

    move/from16 v5, p8

    .line 108
    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveL([D[DIIIII)V

    const/4 v0, 0x0

    mul-int v13, v13, p5

    move-object/from16 v1, p7

    .line 109
    invoke-static {v12, v0, v1, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic lambda$solveBlock$1(Lorg/ejml/data/DSubmatrixD1;I[D[DIII)V
    .locals 7

    .line 189
    iget v0, p0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    add-int/2addr p1, p6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v3, p1, p6

    .line 191
    iget-object p1, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    iget p1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr p6, p1

    iget p0, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr p0, v3

    add-int v6, p6, p0

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v4, p4

    move v5, p5

    .line 193
    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveLTransB([D[DIIIII)V

    return-void
.end method

.method static synthetic lambda$solveBlock$2(Lorg/ejml/data/DSubmatrixD1;II[D[DII)V
    .locals 9

    .line 204
    iget v0, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v1, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, p1, p6

    add-int v8, v0, v1

    .line 206
    iget p0, p0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    add-int/2addr p2, p6

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int v5, p0, p6

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v6, p1

    move v7, p5

    .line 207
    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveTransU([D[DIIIII)V

    return-void
.end method

.method static synthetic lambda$solveBlock$3(Lorg/ejml/data/DSubmatrixD1;II[D[DII)V
    .locals 9

    .line 211
    iget v0, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v1, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, p1, p6

    add-int v8, v0, v1

    .line 213
    iget p0, p0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    add-int/2addr p2, p6

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int v5, p0, p6

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v6, p1

    move v7, p5

    .line 214
    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveU([D[DIIIII)V

    return-void
.end method

.method static synthetic lambda$solveBlock$4(Lorg/ejml/data/DSubmatrixD1;II[D[DIII)V
    .locals 9

    move-object v0, p0

    .line 220
    iget v1, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, p1, p7

    add-int v8, v1, v2

    .line 222
    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    add-int v1, p7, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v5, v0, p7

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v6, p5

    move v7, p6

    .line 223
    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveTransL([D[DIIIII)V

    return-void
.end method

.method static synthetic lambda$solveBlock$5(Lorg/ejml/data/DSubmatrixD1;II[D[DIII)V
    .locals 9

    move-object v0, p0

    .line 227
    iget v1, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, p1, p7

    add-int v8, v1, v2

    .line 229
    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    add-int v1, p7, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v5, v0, p7

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v6, p5

    move v7, p6

    .line 230
    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;->solveL([D[DIIIII)V

    return-void
.end method

.method public static solve(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 138
    invoke-static {p0, p2, p3, p4}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveR(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveL(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    :goto_0
    return-void
.end method

.method public static solveBlock(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ZZ)V
    .locals 13

    move v8, p0

    move-object v0, p2

    move-object/from16 v1, p3

    .line 165
    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v3, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v2, v3

    if-gt v2, v8, :cond_8

    .line 169
    iget-object v3, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 170
    iget-object v3, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget v3, v3, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 172
    iget v3, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v4, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    iget v4, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v4, v5

    add-int v7, v3, v4

    .line 174
    iget-object v0, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v4, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 175
    iget-object v0, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v9, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    if-eqz p5, :cond_3

    const-string v0, "Operation not yet supported"

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p4, :cond_2

    .line 188
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    new-instance v12, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object/from16 v1, p3

    move v2, p0

    move-object v3, v4

    move-object v4, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DSubmatrixD1;I[D[DII)V

    invoke-static {v10, v11, p0, v12}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_3
    iget v0, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v3, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_7

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 203
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v12, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, p0

    move-object v5, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/data/DSubmatrixD1;II[D[DI)V

    invoke-static {v10, v11, p0, v12}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    goto :goto_0

    .line 210
    :cond_4
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v12, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, p0

    move-object v5, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda2;-><init>(Lorg/ejml/data/DSubmatrixD1;II[D[DI)V

    invoke-static {v10, v11, p0, v12}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    .line 219
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v12, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda3;-><init>(Lorg/ejml/data/DSubmatrixD1;II[D[DII)V

    invoke-static {v10, v11, p0, v12}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    goto :goto_0

    .line 226
    :cond_6
    iget v10, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v11, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    new-instance v12, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda4;

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda4;-><init>(Lorg/ejml/data/DSubmatrixD1;II[D[DII)V

    invoke-static {v10, v11, p0, v12}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    :goto_0
    return-void

    .line 199
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T and B must have the same number of rows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T can be at most the size of a block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static solveL(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V
    .locals 16

    move/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 256
    new-instance v9, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v9, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 258
    new-instance v10, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v10, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 259
    new-instance v11, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v11, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 261
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v12, v0, v1

    const/4 v13, 0x0

    if-eqz p3, :cond_1

    .line 266
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

    .line 284
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v15

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 287
    iget v1, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 288
    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 289
    iget v1, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 291
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 292
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 293
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 294
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move/from16 v4, p3

    .line 298
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveBlock(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ZZ)V

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 302
    iget v1, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v13

    goto :goto_3

    .line 304
    :cond_5
    iget v1, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v1, v2, :cond_4

    :goto_3
    if-eqz v0, :cond_8

    if-eqz p3, :cond_6

    .line 311
    iget v0, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 312
    iget v0, v10, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v0, v6

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 313
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 317
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 319
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v6

    iput v0, v9, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 320
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v9, Lorg/ejml/data/DSubmatrixD1;->row1:I

    goto :goto_4

    .line 322
    :cond_6
    iget v0, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 323
    iget v0, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 324
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 327
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 330
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v9, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 331
    iget v0, v9, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 335
    :goto_4
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_5
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v0, v1, :cond_8

    .line 337
    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    .line 338
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 340
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v1, v9, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 341
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v1, v9, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-eqz p3, :cond_7

    .line 345
    invoke-static {v6, v10, v11, v9}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB;->multMinusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_5

    .line 349
    :cond_7
    invoke-static {v6, v10, v11, v9}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB;->multMinus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_5

    :cond_8
    add-int/2addr v15, v14

    goto/16 :goto_1
.end method

.method public static solveR(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V
    .locals 16

    move/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 377
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v9, v0, v1

    .line 378
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/DSubmatrixD1;->getCols()I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 380
    invoke-virtual/range {p1 .. p1}, Lorg/ejml/data/DSubmatrixD1;->getRows()I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 384
    new-instance v10, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v10, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 386
    new-instance v11, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v7, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v11, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 387
    new-instance v12, Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v8, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    invoke-direct {v12, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    const/4 v13, 0x0

    if-eqz p3, :cond_0

    move v14, v6

    move v0, v13

    goto :goto_0

    .line 395
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

    .line 410
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 412
    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 413
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 414
    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 415
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 417
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v1, v12, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 418
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v1, v12, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 419
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v15

    iput v1, v12, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 420
    iget v1, v12, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v1, v0

    iput v1, v12, Lorg/ejml/data/DSubmatrixD1;->row1:I

    const/4 v1, 0x1

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p3

    .line 424
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveBlock(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ZZ)V

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 428
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, v7, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v1, v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v13

    goto :goto_3

    .line 430
    :cond_5
    iget v1, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-lez v1, :cond_4

    :goto_3
    if-eqz v0, :cond_8

    if-eqz p3, :cond_6

    .line 437
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 438
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    iget v1, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 439
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 442
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v12, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 445
    iget v0, v12, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 446
    iget v0, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v0, v6

    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    goto :goto_4

    .line 448
    :cond_6
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 449
    iget v0, v11, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v0, v6

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 450
    iget v0, v7, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v0, v11, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 453
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, v12, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 455
    iget v0, v12, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v6

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 456
    iget v0, v12, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, v10, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 460
    :goto_4
    iget v0, v8, Lorg/ejml/data/DSubmatrixD1;->col0:I

    :goto_5
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v0, v1, :cond_8

    .line 462
    iput v0, v12, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, v6

    .line 463
    iget v1, v8, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v12, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 465
    iget v1, v12, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 466
    iget v1, v12, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v1, v10, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-eqz p3, :cond_7

    .line 470
    invoke-static {v6, v11, v12, v10}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB;->multMinusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_5

    .line 473
    :cond_7
    invoke-static {v6, v11, v12, v10}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB;->multMinus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_5

    :cond_8
    add-int/2addr v15, v14

    goto/16 :goto_1

    .line 381
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

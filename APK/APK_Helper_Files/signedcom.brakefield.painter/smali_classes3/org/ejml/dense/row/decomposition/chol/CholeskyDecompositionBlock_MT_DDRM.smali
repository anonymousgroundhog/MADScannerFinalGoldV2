.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;
.source "CholeskyDecompositionBlock_MT_DDRM.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_DDRM;-><init>(I)V

    return-void
.end method

.method static synthetic lambda$solveL_special$0(II[DILorg/ejml/data/DMatrixRMaj;[D[DII)V
    .locals 15

    move v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    move/from16 v4, p8

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 53
    iget v5, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v2

    add-int v5, p3, v5

    add-int v5, v5, p8

    aget-wide v5, p2, v5

    add-int v7, v3, v2

    move/from16 v9, p8

    move v8, v3

    :goto_1
    if-eq v8, v7, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 60
    aget-wide v11, p5, v8

    aget-wide v13, p6, v9

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    add-int v9, v9, p1

    move v8, v10

    goto :goto_1

    :cond_0
    mul-int v7, v2, v0

    add-int/2addr v7, v2

    .line 62
    aget-wide v7, p5, v7

    div-double/2addr v5, v7

    .line 63
    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v7, v7, p8

    add-int v7, p7, v7

    add-int/2addr v7, v2

    aput-wide v5, p2, v7

    .line 64
    aput-wide v5, p6, v4

    add-int/lit8 v2, v2, 0x1

    add-int v4, v4, p1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$symmRankTranA_sub$1(Lorg/ejml/data/DMatrixRMaj;II[D[DI)V
    .locals 14

    move-object v0, p0

    .line 88
    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    move/from16 v3, p5

    .line 90
    :goto_0
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v4, :cond_1

    mul-int v4, p5, p2

    add-int/2addr v4, p1

    .line 92
    aget-wide v5, p3, v3

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_0

    add-int/lit8 v8, v4, 0x1

    .line 96
    aget-wide v9, p4, v4

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v7

    mul-double/2addr v12, v5

    sub-double/2addr v9, v12

    aput-wide v9, p4, v4

    move v4, v8

    move v7, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 90
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public solveL_special([DLorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;)V
    .locals 10

    .line 40
    iget-object v3, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 42
    iget-object v7, p5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 43
    iget v1, p5, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 44
    iget p5, p5, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 47
    new-instance v9, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM$$ExternalSyntheticLambda1;

    move-object v0, v9

    move v2, p5

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM$$ExternalSyntheticLambda1;-><init>(II[DILorg/ejml/data/DMatrixRMaj;[D[DI)V

    const/4 p1, 0x0

    invoke-static {p1, p5, v9}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public symmRankTranA_sub(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 7

    .line 72
    iget-object v4, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 73
    iget-object v5, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 85
    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/lit8 v3, p2, 0x1

    .line 86
    iget p2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-instance v6, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DMatrixRMaj;II[D[D)V

    const/4 p1, 0x0

    invoke-static {p1, p2, v6}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

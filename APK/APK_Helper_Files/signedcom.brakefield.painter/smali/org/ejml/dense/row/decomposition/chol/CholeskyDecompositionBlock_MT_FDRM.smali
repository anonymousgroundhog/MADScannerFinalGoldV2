.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;
.source "CholeskyDecompositionBlock_MT_FDRM.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_FDRM;-><init>(I)V

    return-void
.end method

.method static synthetic lambda$solveL_special$0(II[FILorg/ejml/data/FMatrixRMaj;[F[FII)V
    .locals 11

    move v0, p0

    move-object v1, p4

    const/4 v2, 0x0

    move/from16 v4, p8

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 55
    iget v5, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v2

    add-int/2addr v5, p3

    add-int v5, v5, p8

    aget v5, p2, v5

    add-int v6, v3, v2

    move/from16 v8, p8

    move v7, v3

    :goto_1
    if-eq v7, v6, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 62
    aget v7, p5, v7

    aget v10, p6, v8

    mul-float/2addr v7, v10

    sub-float/2addr v5, v7

    add-int/2addr v8, p1

    move v7, v9

    goto :goto_1

    :cond_0
    mul-int v6, v2, v0

    add-int/2addr v6, v2

    .line 64
    aget v6, p5, v6

    div-float/2addr v5, v6

    .line 65
    iget v6, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int v6, v6, p8

    add-int v6, p7, v6

    add-int/2addr v6, v2

    aput v5, p2, v6

    .line 66
    aput v5, p6, v4

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, p1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$symmRankTranA_sub$1(Lorg/ejml/data/FMatrixRMaj;II[F[FI)V
    .locals 9

    .line 90
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, p5

    .line 92
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    mul-int v3, p5, p2

    add-int/2addr v3, p1

    .line 94
    aget v4, p3, v2

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_0

    add-int/lit8 v6, v3, 0x1

    .line 98
    aget v7, p4, v3

    add-int/lit8 v8, v5, 0x1

    aget v5, p3, v5

    mul-float/2addr v5, v4

    sub-float/2addr v7, v5

    aput v7, p4, v3

    move v3, v6

    move v5, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 92
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public solveL_special([FLorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;)V
    .locals 10

    .line 42
    iget-object v3, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 44
    iget-object v7, p5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 45
    iget v1, p5, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 46
    iget p5, p5, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 49
    new-instance v9, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;

    move-object v0, v9

    move v2, p5

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;-><init>(II[FILorg/ejml/data/FMatrixRMaj;[F[FI)V

    const/4 p1, 0x0

    invoke-static {p1, p5, v9}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method public symmRankTranA_sub(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 7

    .line 74
    iget-object v4, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 75
    iget-object v5, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 87
    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/lit8 v3, p2, 0x1

    .line 88
    iget p2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-instance v6, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FMatrixRMaj;II[F[F)V

    const/4 p1, 0x0

    invoke-static {p1, p2, v6}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

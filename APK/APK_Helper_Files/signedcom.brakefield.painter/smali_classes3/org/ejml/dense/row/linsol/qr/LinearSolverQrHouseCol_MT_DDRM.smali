.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;
.super Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;
.source "LinearSolverQrHouseCol_MT_DDRM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;
    }
.end annotation


# instance fields
.field workArrays:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;)V

    .line 39
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v1, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->workArrays:Lpabeles/concurrency/GrowArray;

    return-void
.end method

.method static synthetic lambda$new$0()Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;
    .locals 2

    .line 39
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;-><init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$1;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$solve$1$org-ejml-dense-row-linsol-qr-LinearSolverQrHouseCol_MT_DDRM(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;II)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 64
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->a:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 65
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->tmp:Lorg/ejml/data/DGrowArray;

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    invoke-virtual {v3, v4}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    .line 67
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->a:Lorg/ejml/data/DMatrixRMaj;

    .line 68
    iget-object v2, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->tmp:Lorg/ejml/data/DGrowArray;

    iget-object v2, v2, Lorg/ejml/data/DGrowArray;->data:[D

    move/from16 v4, p5

    move/from16 v15, p6

    :goto_0
    if-ge v4, v15, :cond_3

    const/16 v16, 0x0

    move/from16 v5, v16

    .line 72
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    if-ge v5, v6, :cond_0

    .line 73
    iget-object v6, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object/from16 v14, p1

    iget-object v7, v14, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v8, v5, p2

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v14, p1

    move/from16 v13, v16

    .line 81
    :goto_2
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numCols:I

    if-ge v13, v5, :cond_1

    .line 82
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->QR:[[D

    aget-object v6, v5, v13

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 83
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->gammas:[D

    aget-wide v9, v5, v13

    const/4 v11, 0x0

    iget v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    move-object v5, v3

    move/from16 v17, v12

    move v12, v13

    move/from16 v18, v13

    move/from16 v13, v17

    move-object v14, v2

    invoke-static/range {v5 .. v14}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V

    add-int/lit8 v13, v18, 0x1

    move-object/from16 v14, p1

    goto :goto_2

    .line 87
    :cond_1
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v6, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numCols:I

    invoke-static {v5, v6, v7}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    move/from16 v5, v16

    .line 90
    :goto_3
    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numCols:I

    if-ge v5, v6, :cond_2

    .line 91
    iget-object v6, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    iget-object v8, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v5

    aput-wide v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 56
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    if-ne v0, v1, :cond_0

    .line 58
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 60
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 63
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->workArrays:Lpabeles/concurrency/GrowArray;

    new-instance v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected dimensions for X: X rows = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->numRows:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

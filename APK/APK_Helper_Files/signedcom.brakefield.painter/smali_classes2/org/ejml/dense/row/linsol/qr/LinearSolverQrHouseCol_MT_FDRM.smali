.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;
.super Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;
.source "LinearSolverQrHouseCol_MT_FDRM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;
    }
.end annotation


# instance fields
.field workArrays:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;)V

    .line 41
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v1, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->workArrays:Lpabeles/concurrency/GrowArray;

    return-void
.end method

.method static synthetic lambda$new$0()Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;
    .locals 2

    .line 41
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;-><init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$1;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$solve$1$org-ejml-dense-row-linsol-qr-LinearSolverQrHouseCol_MT_FDRM(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;II)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 66
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->a:Lorg/ejml/data/FMatrixRMaj;

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 67
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->tmp:Lorg/ejml/data/FGrowArray;

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    invoke-virtual {v3, v4}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    .line 69
    iget-object v3, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->a:Lorg/ejml/data/FMatrixRMaj;

    .line 70
    iget-object v2, v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->tmp:Lorg/ejml/data/FGrowArray;

    iget-object v2, v2, Lorg/ejml/data/FGrowArray;->data:[F

    move/from16 v4, p5

    move/from16 v13, p6

    :goto_0
    if-ge v4, v13, :cond_3

    const/4 v14, 0x0

    move v5, v14

    .line 74
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    if-ge v5, v6, :cond_0

    .line 75
    iget-object v6, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move-object/from16 v15, p1

    iget-object v7, v15, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v8, v5, p2

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v15, p1

    move v12, v14

    .line 83
    :goto_2
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numCols:I

    if-ge v12, v5, :cond_1

    .line 84
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->QR:[[F

    aget-object v6, v5, v12

    const/high16 v7, 0x3f800000    # 1.0f

    .line 85
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->gammas:[F

    aget v8, v5, v12

    const/4 v9, 0x0

    iget v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    move-object v5, v3

    move v10, v12

    move/from16 v16, v12

    move-object v12, v2

    invoke-static/range {v5 .. v12}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V

    add-int/lit8 v12, v16, 0x1

    goto :goto_2

    .line 89
    :cond_1
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v6, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numCols:I

    invoke-static {v5, v6, v7}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    .line 92
    :goto_3
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numCols:I

    if-ge v14, v5, :cond_2

    .line 93
    iget-object v5, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v14

    add-int/2addr v6, v4

    iget-object v7, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v7, v7, v14

    aput v7, v5, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 58
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    if-ne v0, v1, :cond_0

    .line 60
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 62
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 65
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->workArrays:Lpabeles/concurrency/GrowArray;

    new-instance v2, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected dimensions for X: X rows = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->numRows:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

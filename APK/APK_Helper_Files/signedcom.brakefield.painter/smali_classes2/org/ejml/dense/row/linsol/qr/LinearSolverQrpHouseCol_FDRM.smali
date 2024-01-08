.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;
.super Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;
.source "LinearSolverQrpHouseCol_FDRM.java"


# instance fields
.field private decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

.field private x_basic:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;Z)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;Z)V

    .line 42
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    .line 47
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 52
    iget v3, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 54
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 56
    iget v3, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 59
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-virtual {v4}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->getColPivots()[I

    move-result-object v4

    .line 61
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-virtual {v5}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->getQR()[[F

    move-result-object v5

    .line 62
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;

    invoke-virtual {v6}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->getGammas()[F

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_5

    .line 66
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numRows:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 67
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numRows:I

    invoke-virtual {v9, v10, v11}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    const/4 v9, 0x0

    .line 70
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numRows:I

    if-ge v9, v10, :cond_0

    .line 71
    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {v1, v9, v8}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v12

    aput v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 76
    :goto_2
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->rank:I

    if-ge v9, v10, :cond_1

    .line 77
    aget-object v10, v5, v9

    .line 79
    aget v19, v10, v9

    const/high16 v12, 0x3f800000    # 1.0f

    .line 80
    aput v12, v10, v9

    .line 81
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    aget v14, v6, v9

    const/4 v15, 0x0

    iget v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numRows:I

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move/from16 v17, v13

    move-object v13, v10

    move/from16 v16, v9

    move-object/from16 v18, v7

    invoke-static/range {v12 .. v18}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    .line 82
    aput v19, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 86
    :cond_1
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->rank:I

    invoke-static {v7, v9, v10}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    .line 89
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    invoke-virtual {v7, v9, v11, v11}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 90
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->rank:I

    :goto_3
    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    if-ge v7, v9, :cond_2

    .line 91
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v10, 0x0

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 93
    :cond_2
    iget-boolean v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->norm2Solution:Z

    if-eqz v7, :cond_3

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->rank:I

    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    if-ge v7, v9, :cond_3

    .line 94
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v7}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->upgradeSolution(Lorg/ejml/data/FMatrixRMaj;)V

    :cond_3
    const/4 v7, 0x0

    .line 97
    :goto_4
    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    if-ge v7, v9, :cond_4

    .line 98
    aget v9, v4, v7

    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v10, v7

    invoke-virtual {v2, v9, v8, v10}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 53
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected dimensions for X: X rows = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->numCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

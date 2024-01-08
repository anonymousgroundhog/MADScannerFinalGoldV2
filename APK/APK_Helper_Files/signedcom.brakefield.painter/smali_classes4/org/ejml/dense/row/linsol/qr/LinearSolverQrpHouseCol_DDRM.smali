.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;
.super Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;
.source "LinearSolverQrpHouseCol_DDRM.java"


# instance fields
.field private decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

.field private x_basic:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;Z)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;Z)V

    .line 40
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    .line 45
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 50
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 52
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 54
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 57
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-virtual {v4}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->getColPivots()[I

    move-result-object v4

    .line 59
    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-virtual {v5}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->getQR()[[D

    move-result-object v5

    .line 60
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->decomposition:Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;

    invoke-virtual {v6}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->getGammas()[D

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_5

    .line 64
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numRows:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 65
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numRows:I

    invoke-virtual {v9, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    const/4 v9, 0x0

    .line 68
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numRows:I

    if-ge v9, v10, :cond_0

    .line 69
    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {v1, v9, v8}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v12

    aput-wide v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 74
    :goto_2
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->rank:I

    if-ge v9, v10, :cond_1

    .line 75
    aget-object v10, v5, v9

    .line 77
    aget-wide v20, v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 78
    aput-wide v12, v10, v9

    .line 79
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    aget-wide v14, v6, v9

    const/16 v16, 0x0

    iget v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numRows:I

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move/from16 v18, v13

    move-object v13, v10

    move/from16 v17, v9

    move-object/from16 v19, v7

    invoke-static/range {v12 .. v19}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    .line 80
    aput-wide v20, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 84
    :cond_1
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->rank:I

    invoke-static {v7, v9, v10}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    .line 87
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    invoke-virtual {v7, v9, v11, v11}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 88
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->rank:I

    :goto_3
    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    if-ge v7, v9, :cond_2

    .line 89
    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/16 v10, 0x0

    aput-wide v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 91
    :cond_2
    iget-boolean v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->norm2Solution:Z

    if-eqz v7, :cond_3

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->rank:I

    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    if-ge v7, v9, :cond_3

    .line 92
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v7}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->upgradeSolution(Lorg/ejml/data/DMatrixRMaj;)V

    :cond_3
    const/4 v7, 0x0

    .line 95
    :goto_4
    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    if-ge v7, v9, :cond_4

    .line 96
    aget v9, v4, v7

    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v10, v10, v7

    invoke-virtual {v2, v9, v8, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 51
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected dimensions for X: X rows = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->numCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrpHouseCol_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

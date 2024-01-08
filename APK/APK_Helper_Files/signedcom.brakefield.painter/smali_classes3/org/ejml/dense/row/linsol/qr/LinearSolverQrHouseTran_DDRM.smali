.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverQrHouseTran_DDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/DMatrixRMaj;

.field private U:Lorg/ejml/data/DMatrixRMaj;

.field private a:[D

.field private decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxRows:I

    .line 54
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxCols:I

    .line 63
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 80
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 81
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->setMaxSize(II)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->getQR()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxRows:I

    .line 68
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->maxCols:I

    .line 70
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 106
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 108
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 110
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->U:Lorg/ejml/data/DMatrixRMaj;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v3

    iput-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->U:Lorg/ejml/data/DMatrixRMaj;

    .line 111
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->getGammas()[D

    move-result-object v3

    .line 112
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 114
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    const/4 v9, 0x0

    .line 120
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    if-ge v9, v10, :cond_0

    .line 121
    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    iget-object v11, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v12, v9, v6

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 129
    :goto_2
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numCols:I

    if-ge v9, v10, :cond_3

    .line 130
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    .line 132
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    aget-wide v11, v11, v9

    add-int/lit8 v13, v9, 0x1

    move v14, v13

    .line 134
    :goto_3
    iget v15, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    if-ge v14, v15, :cond_1

    .line 135
    aget-wide v15, v4, v10

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    aget-wide v17, v7, v14

    mul-double v15, v15, v17

    add-double/2addr v11, v15

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v10, v5

    goto :goto_3

    .line 139
    :cond_1
    aget-wide v14, v3, v9

    mul-double/2addr v11, v14

    .line 141
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    aget-wide v14, v7, v9

    sub-double/2addr v14, v11

    aput-wide v14, v7, v9

    .line 142
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    mul-int/2addr v7, v9

    add-int/2addr v7, v9

    add-int/2addr v7, v5

    move v9, v13

    .line 143
    :goto_4
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numRows:I

    if-ge v9, v10, :cond_2

    .line 144
    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    aget-wide v14, v10, v9

    aget-wide v17, v4, v7

    mul-double v17, v17, v11

    sub-double v14, v14, v17

    aput-wide v14, v10, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v5

    goto :goto_4

    :cond_2
    move v9, v13

    goto :goto_2

    .line 149
    :cond_3
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->U:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numCols:I

    invoke-static {v7, v9, v10}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    const/4 v7, 0x0

    .line 152
    :goto_5
    iget v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numCols:I

    if-ge v7, v9, :cond_4

    .line 153
    iget-object v9, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v8

    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->a:[D

    aget-wide v11, v11, v7

    aput-wide v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 107
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

    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->numCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

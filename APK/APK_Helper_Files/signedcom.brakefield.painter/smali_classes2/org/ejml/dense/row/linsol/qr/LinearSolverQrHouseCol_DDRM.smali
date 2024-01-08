.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverQrHouseCol_DDRM.java"


# instance fields
.field protected QR:[[D

.field protected final R:Lorg/ejml/data/DMatrixRMaj;

.field protected final a:Lorg/ejml/data/DMatrixRMaj;

.field protected final decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

.field protected gammas:[D

.field protected maxCols:I

.field protected maxRows:I

.field protected final temp:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;)V

    return-void
.end method

.method protected constructor <init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 52
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    .line 53
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->temp:Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxRows:I

    .line 56
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxCols:I

    .line 59
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    .line 70
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 163
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 85
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    .line 87
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 88
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->setMaxSize(II)V

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->temp:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->getGammas()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->gammas:[D

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->getQR()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->QR:[[D

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    return v2

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t solve for wide systems.  More variables than equations."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxRows:I

    .line 75
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->maxCols:I

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 117
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numRows:I

    if-ne v3, v4, :cond_4

    .line 119
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 121
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    move v6, v4

    .line 127
    :goto_1
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numRows:I

    if-ge v6, v7, :cond_0

    .line 128
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v8, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v9, v6, v3

    add-int/2addr v9, v5

    aget-wide v8, v8, v9

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 136
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numCols:I

    if-ge v6, v7, :cond_1

    .line 137
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->QR:[[D

    aget-object v8, v7, v6

    .line 138
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->gammas:[D

    aget-wide v11, v11, v6

    const/4 v13, 0x0

    iget v15, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numRows:I

    iget-object v14, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->temp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v14, v14, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object/from16 v16, v14

    move v14, v6

    invoke-static/range {v7 .. v16}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 142
    :cond_1
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numCols:I

    invoke-static {v6, v7, v8}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    move v6, v4

    .line 145
    :goto_3
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numCols:I

    if-ge v6, v7, :cond_2

    .line 146
    iget-object v7, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->a:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v9, v9, v6

    aput-wide v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 118
    :cond_4
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

    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->numRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

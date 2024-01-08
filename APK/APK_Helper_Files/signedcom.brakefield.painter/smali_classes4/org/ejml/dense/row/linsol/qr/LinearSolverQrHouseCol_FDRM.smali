.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverQrHouseCol_FDRM.java"


# instance fields
.field protected QR:[[F

.field protected final R:Lorg/ejml/data/FMatrixRMaj;

.field protected final a:Lorg/ejml/data/FMatrixRMaj;

.field protected final decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

.field protected gammas:[F

.field protected maxCols:I

.field protected maxRows:I

.field protected final temp:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;)V

    return-void
.end method

.method protected constructor <init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 54
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    .line 55
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->temp:Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxRows:I

    .line 58
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxCols:I

    .line 61
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    .line 72
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

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

    .line 108
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 87
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    .line 89
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 90
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->setMaxSize(II)V

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 94
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->temp:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->getGammas()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->gammas:[F

    .line 101
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->getQR()[[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->QR:[[F

    .line 102
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    return v2

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t solve for wide systems.  More variables than equations."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 76
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxRows:I

    .line 77
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->maxCols:I

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 12

    .line 119
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numRows:I

    if-ne v0, v1, :cond_4

    .line 121
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 123
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    move v3, v1

    .line 129
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 130
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 138
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numCols:I

    if-ge v3, v4, :cond_1

    .line 139
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->QR:[[F

    aget-object v5, v4, v3

    .line 140
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->gammas:[F

    aget v7, v7, v3

    const/4 v8, 0x0

    iget v10, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numRows:I

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->temp:Lorg/ejml/data/FMatrixRMaj;

    iget-object v11, v9, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move v9, v3

    invoke-static/range {v4 .. v11}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_1
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numCols:I

    invoke-static {v3, v4, v5}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    move v3, v1

    .line 147
    :goto_3
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numCols:I

    if-ge v3, v4, :cond_2

    .line 148
    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->a:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v6, v3

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 120
    :cond_4
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->numRows:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

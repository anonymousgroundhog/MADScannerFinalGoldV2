.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverQrHouseTran_FDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/FMatrixRMaj;

.field private U:Lorg/ejml/data/FMatrixRMaj;

.field private a:[F

.field private decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxRows:I

    .line 56
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxCols:I

    .line 65
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 172
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->inputModified()Z

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

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 82
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 83
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->setMaxSize(II)V

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->getQR()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxRows:I

    .line 70
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->maxCols:I

    .line 72
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 13

    .line 108
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    if-ne v0, v1, :cond_6

    .line 110
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 112
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->U:Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->U:Lorg/ejml/data/FMatrixRMaj;

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->getGammas()[F

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 116
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    move v6, v4

    .line 122
    :goto_1
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    if-ge v6, v7, :cond_0

    .line 123
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    iget-object v8, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v9, v6, v3

    add-int/2addr v9, v5

    aget v8, v8, v9

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 131
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numCols:I

    if-ge v6, v7, :cond_3

    .line 132
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v6

    add-int/2addr v7, v2

    .line 134
    iget-object v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    aget v8, v8, v6

    add-int/lit8 v9, v6, 0x1

    move v10, v9

    .line 136
    :goto_3
    iget v11, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    if-ge v10, v11, :cond_1

    .line 137
    aget v11, v1, v7

    iget-object v12, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    aget v12, v12, v10

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v7, v2

    goto :goto_3

    .line 141
    :cond_1
    aget v7, v0, v6

    mul-float/2addr v8, v7

    .line 143
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    aget v10, v7, v6

    sub-float/2addr v10, v8

    aput v10, v7, v6

    .line 144
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v6

    add-int/2addr v7, v2

    move v6, v9

    .line 145
    :goto_4
    iget v10, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numRows:I

    if-ge v6, v10, :cond_2

    .line 146
    iget-object v10, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    aget v11, v10, v6

    aget v12, v1, v7

    mul-float/2addr v12, v8

    sub-float/2addr v11, v12

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_4

    :cond_2
    move v6, v9

    goto :goto_2

    .line 151
    :cond_3
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->U:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    iget v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numCols:I

    invoke-static {v6, v7, v8}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    move v6, v4

    .line 154
    :goto_5
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numCols:I

    if-ge v6, v7, :cond_4

    .line 155
    iget-object v7, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->a:[F

    aget v9, v9, v6

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 109
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/utils/ifg/GJoEneiVdp;->Rnq:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->numCols:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

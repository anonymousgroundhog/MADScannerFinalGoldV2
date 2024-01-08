.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverQrHouse_FDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/FMatrixRMaj;

.field private a:[F

.field private final decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

.field private gammas:[F

.field private maxRows:I

.field private u:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->maxRows:I

    .line 60
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 161
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

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

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 77
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->maxRows:I

    if-le v0, v1, :cond_0

    .line 78
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->setMaxSize(I)V

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 82
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->getGammas()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->gammas:[F

    .line 86
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->getQR()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(I)V
    .locals 1

    .line 64
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->maxRows:I

    .line 66
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    .line 67
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->u:[F

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 9

    .line 104
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numRows:I

    if-ne v0, v1, :cond_6

    .line 106
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 108
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    move v3, v1

    .line 114
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 115
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 123
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numCols:I

    if-ge v3, v4, :cond_3

    .line 124
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->u:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v3

    .line 125
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 127
    :goto_3
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numRows:I

    if-ge v6, v7, :cond_1

    .line 128
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->u:[F

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v8, v6, v3}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v8

    aput v8, v7, v6

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    aget v7, v7, v6

    mul-float/2addr v8, v7

    add-float/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 132
    :cond_1
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->gammas:[F

    aget v6, v6, v3

    mul-float/2addr v4, v6

    .line 134
    :goto_4
    iget v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numRows:I

    if-ge v3, v6, :cond_2

    .line 135
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    aget v7, v6, v3

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->u:[F

    aget v8, v8, v3

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v3, v5

    goto :goto_2

    .line 140
    :cond_3
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numCols:I

    invoke-static {v3, v4, v5}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    move v3, v1

    .line 143
    :goto_5
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numCols:I

    if-ge v3, v4, :cond_4

    .line 144
    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->a:[F

    aget v6, v6, v3

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 105
    :cond_6
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->numCols:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

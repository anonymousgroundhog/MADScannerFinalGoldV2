.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverQrHouse_DDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/DMatrixRMaj;

.field private a:[D

.field private final decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

.field private gammas:[D

.field private maxRows:I

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->maxRows:I

    .line 58
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 159
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

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

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 75
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->maxRows:I

    if-le v0, v1, :cond_0

    .line 76
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->setMaxSize(I)V

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->getGammas()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->gammas:[D

    .line 84
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->getQR()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(I)V
    .locals 1

    .line 62
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->maxRows:I

    .line 64
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    .line 65
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->u:[D

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 13

    .line 102
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numRows:I

    if-ne v0, v1, :cond_6

    .line 104
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 106
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    move v3, v1

    .line 112
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 113
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    iget-object v5, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v6, v3, v0

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 121
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numCols:I

    if-ge v3, v4, :cond_3

    .line 122
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->u:[D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v3

    .line 123
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    aget-wide v4, v4, v3

    add-int/lit8 v6, v3, 0x1

    move v7, v6

    .line 125
    :goto_3
    iget v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numRows:I

    if-ge v7, v8, :cond_1

    .line 126
    iget-object v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->u:[D

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v9, v7, v3}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v9

    aput-wide v9, v8, v7

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    aget-wide v11, v8, v7

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 130
    :cond_1
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->gammas:[D

    aget-wide v7, v7, v3

    mul-double/2addr v4, v7

    .line 132
    :goto_4
    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numRows:I

    if-ge v3, v7, :cond_2

    .line 133
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    aget-wide v8, v7, v3

    iget-object v10, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->u:[D

    aget-wide v10, v10, v3

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v3, v6

    goto :goto_2

    .line 138
    :cond_3
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numCols:I

    invoke-static {v3, v4, v5}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    move v3, v1

    .line 141
    :goto_5
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numCols:I

    if-ge v3, v4, :cond_4

    .line 142
    iget-object v4, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->a:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 103
    :cond_6
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->numCols:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

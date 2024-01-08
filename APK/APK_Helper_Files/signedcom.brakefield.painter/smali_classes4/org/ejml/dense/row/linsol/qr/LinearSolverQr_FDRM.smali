.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverQr_FDRM.java"


# instance fields
.field protected Q:Lorg/ejml/data/FMatrixRMaj;

.field protected R:Lorg/ejml/data/FMatrixRMaj;

.field private Y:Lorg/ejml/data/FMatrixRMaj;

.field private Z:Lorg/ejml/data/FMatrixRMaj;

.field private decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/QRDecomposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxRows:I

    .line 50
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxCols:I

    .line 61
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getR()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->inputModified()Z

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

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 88
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 89
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->setMaxSize(II)V

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 96
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numCols:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 98
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 1

    .line 71
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxRows:I

    .line 72
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->maxCols:I

    .line 74
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    .line 75
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    .line 77
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    .line 78
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Z:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 6

    .line 117
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    if-ne v0, v1, :cond_3

    .line 119
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 121
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 123
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 124
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Z:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    move v2, v4

    .line 130
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numRows:I

    if-ge v2, v3, :cond_0

    .line 131
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p1, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Z:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v2, v3, v5}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 139
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Z:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numCols:I

    invoke-static {v2, v3, v5}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    move v2, v4

    .line 142
    :goto_2
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numCols:I

    if-ge v2, v3, :cond_1

    .line 143
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->Z:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, v3, v2

    invoke-virtual {p2, v2, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 118
    :cond_3
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->numCols:I

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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverQr_DDRM.java"


# instance fields
.field protected Q:Lorg/ejml/data/DMatrixRMaj;

.field protected R:Lorg/ejml/data/DMatrixRMaj;

.field private Y:Lorg/ejml/data/DMatrixRMaj;

.field private Z:Lorg/ejml/data/DMatrixRMaj;

.field private decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
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
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxRows:I

    .line 48
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxCols:I

    .line 59
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 158
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getR()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 104
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 86
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 87
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->setMaxSize(II)V

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 94
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 95
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numCols:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 96
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 1

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxRows:I

    .line 70
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->maxCols:I

    .line 72
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 73
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    .line 75
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    .line 76
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Z:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 7

    .line 115
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    if-ne v0, v1, :cond_3

    .line 117
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 119
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 121
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 122
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Z:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    move v2, v4

    .line 128
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numRows:I

    if-ge v2, v3, :cond_0

    .line 129
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p1, v2, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Z:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v2, v3, v5}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 137
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Z:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numCols:I

    invoke-static {v2, v3, v5}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    move v2, v4

    .line 140
    :goto_2
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numCols:I

    if-ge v2, v3, :cond_1

    .line 141
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->Z:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v3, v2

    invoke-virtual {p2, v2, v1, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 116
    :cond_3
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->numCols:I

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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverQr_CDRM.java"


# instance fields
.field protected Q:Lorg/ejml/data/CMatrixRMaj;

.field protected Qt:Lorg/ejml/data/CMatrixRMaj;

.field protected R:Lorg/ejml/data/CMatrixRMaj;

.field private Y:Lorg/ejml/data/CMatrixRMaj;

.field private Z:Lorg/ejml/data/CMatrixRMaj;

.field private final decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/CMatrixRMaj;",
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
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxRows:I

    .line 50
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxCols:I

    .line 62
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Q:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getR()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 109
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 3

    .line 90
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 91
    :cond_0
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->setMaxSize(II)V

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 98
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Q:Lorg/ejml/data/CMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numCols:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Q:Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 101
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 102
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Q:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Qt:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->transposeConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 1

    .line 72
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxRows:I

    .line 73
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->maxCols:I

    .line 75
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Q:Lorg/ejml/data/CMatrixRMaj;

    .line 76
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Qt:Lorg/ejml/data/CMatrixRMaj;

    .line 77
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    .line 79
    new-instance p2, Lorg/ejml/data/CMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Y:Lorg/ejml/data/CMatrixRMaj;

    .line 80
    new-instance p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 9

    .line 120
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    if-ne v0, v1, :cond_3

    .line 122
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 124
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 126
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Y:Lorg/ejml/data/CMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 127
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    .line 133
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numRows:I

    if-ge v4, v5, :cond_0

    .line 134
    invoke-virtual {p1, v4, v2}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 135
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Y:Lorg/ejml/data/CMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v7, v4, 0x2

    iget-object v8, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v8, v8, v5

    aput v8, v6, v7

    .line 136
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Y:Lorg/ejml/data/CMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v7, v3

    iget-object v8, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v5, v3

    aget v5, v8, v5

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Qt:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Y:Lorg/ejml/data/CMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v4, v5, v6}, Lorg/ejml/dense/row/CommonOps_CDRM;->mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    .line 144
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numCols:I

    invoke-static {v4, v5, v6}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveU([F[FI)V

    move v4, v1

    .line 147
    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->numCols:I

    if-ge v4, v5, :cond_1

    .line 148
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v6, v4, 0x2

    aget v5, v5, v6

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->Z:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v6, v3

    aget v6, v7, v6

    invoke-virtual {p2, v4, v2, v5, v6}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 121
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected dimensions for B"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

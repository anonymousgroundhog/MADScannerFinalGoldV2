.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverQr_ZDRM.java"


# instance fields
.field protected Q:Lorg/ejml/data/ZMatrixRMaj;

.field protected Qt:Lorg/ejml/data/ZMatrixRMaj;

.field protected R:Lorg/ejml/data/ZMatrixRMaj;

.field private Y:Lorg/ejml/data/ZMatrixRMaj;

.field private Z:Lorg/ejml/data/ZMatrixRMaj;

.field private final decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/ZMatrixRMaj;",
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
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxRows:I

    .line 48
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxCols:I

    .line 60
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Q:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public getR()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 107
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 3

    .line 88
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 89
    :cond_0
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->setMaxSize(II)V

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 96
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Q:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numCols:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 98
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Q:Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->decomposer:Lorg/ejml/interfaces/decomposition/QRDecomposition;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRDecomposition;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Q:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Qt:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transposeConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 1

    .line 70
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxRows:I

    .line 71
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->maxCols:I

    .line 73
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Q:Lorg/ejml/data/ZMatrixRMaj;

    .line 74
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Qt:Lorg/ejml/data/ZMatrixRMaj;

    .line 75
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    .line 77
    new-instance p2, Lorg/ejml/data/ZMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Y:Lorg/ejml/data/ZMatrixRMaj;

    .line 78
    new-instance p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p2, p1, v0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 12

    .line 118
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    if-ne v0, v1, :cond_3

    .line 120
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 122
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 124
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Y:Lorg/ejml/data/ZMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 125
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    .line 131
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numRows:I

    if-ge v4, v5, :cond_0

    .line 132
    invoke-virtual {p1, v4, v2}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 133
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Y:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v7, v4, 0x2

    iget-object v8, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v8, v5

    aput-wide v8, v6, v7

    .line 134
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Y:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v7, v3

    iget-object v8, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v5, v3

    aget-wide v8, v8, v5

    aput-wide v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Qt:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Y:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v4, v5, v6}, Lorg/ejml/dense/row/CommonOps_ZDRM;->mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    .line 142
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v6, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numCols:I

    invoke-static {v4, v5, v6}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveU([D[DI)V

    move v11, v1

    .line 145
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->numCols:I

    if-ge v11, v4, :cond_1

    .line 146
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v5, v11, 0x2

    aget-wide v7, v4, v5

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_ZDRM;->Z:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v5, v3

    aget-wide v9, v4, v5

    move-object v4, p2

    move v5, v11

    move v6, v2

    invoke-virtual/range {v4 .. v10}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 119
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected dimensions for B"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

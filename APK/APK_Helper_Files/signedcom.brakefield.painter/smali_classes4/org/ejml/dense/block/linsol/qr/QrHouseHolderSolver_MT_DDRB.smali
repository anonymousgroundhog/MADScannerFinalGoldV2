.class public Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;
.super Ljava/lang/Object;
.source "QrHouseHolderSolver_MT_DDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/DMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/DMatrixRBlock;

.field protected decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->setSaveW(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 8

    .line 130
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 131
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v7, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v7, :cond_0

    .line 140
    invoke-static {p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->setIdentity(Lorg/ejml/data/DMatrixRBlock;)V

    .line 141
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->applyQTran(Lorg/ejml/data/DMatrixRBlock;)V

    .line 146
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move v5, v7

    invoke-direct/range {v2 .. v7}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    new-instance v2, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v2, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, p1}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solve(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A_inv must be square an have dimension "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->invert(Lorg/ejml/data/DMatrixRBlock;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public quality()D
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->getQR()Lorg/ejml/data/DMatrixRBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 2

    .line 75
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-lt v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->decompose(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->getQR()Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of rows must be more than or equal to the number of columns. Can\'t solve an underdetermined system."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->setA(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 7

    .line 100
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRBlock;->reshape(II)V

    .line 110
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_DDRB;->applyQTran(Lorg/ejml/data/DMatrixRBlock;)V

    .line 114
    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->extractAligned(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V

    .line 117
    iget-object p1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v0, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 119
    iget-object p1, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->QR:Lorg/ejml/data/DMatrixRBlock;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;IIII)V

    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v1, p2}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1, p2}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solve(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row of B and A do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    check-cast p2, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/linsol/qr/QrHouseHolderSolver_MT_DDRB;->solve(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V

    return-void
.end method

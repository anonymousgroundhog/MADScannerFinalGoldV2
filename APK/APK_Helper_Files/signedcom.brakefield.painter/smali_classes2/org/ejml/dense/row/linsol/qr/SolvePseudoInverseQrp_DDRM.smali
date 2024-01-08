.class public Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;
.super Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;
.source "SolvePseudoInverseQrp_DDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/DMatrixRMaj;

.field private x_basic:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;Z)V

    .line 37
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 40
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 60
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    .line 67
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numRows:I

    if-ne v0, v1, :cond_5

    .line 69
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 72
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 75
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getColPivots()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 79
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numRows:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 80
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numRows:I

    invoke-virtual {v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    move v4, v2

    .line 83
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numRows:I

    if-ge v4, v5, :cond_0

    .line 84
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p1, v4, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v4, v5, v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 91
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->rank:I

    invoke-static {v4, v5, v7}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    .line 94
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    invoke-virtual {v4, v5, v6, v6}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 95
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->rank:I

    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    if-ge v4, v5, :cond_1

    .line 96
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 98
    :cond_1
    iget-boolean v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->norm2Solution:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->rank:I

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    if-ge v4, v5, :cond_2

    .line 99
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, v4}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->upgradeSolution(Lorg/ejml/data/DMatrixRMaj;)V

    :cond_2
    move v4, v2

    .line 102
    :goto_3
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    if-ge v4, v5, :cond_3

    .line 103
    aget v5, v1, v4

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->x_basic:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v4

    invoke-virtual {p2, v5, v3, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 68
    :cond_5
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->numCols:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

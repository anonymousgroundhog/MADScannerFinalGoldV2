.class public Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;
.super Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;
.source "SolvePseudoInverseQrp_FDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/FMatrixRMaj;

.field private x_basic:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;Z)V

    .line 39
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    .line 42
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 62
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 8

    .line 69
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numRows:I

    if-ne v0, v1, :cond_5

    .line 71
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 74
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 77
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getColPivots()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 81
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numRows:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 82
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numRows:I

    invoke-virtual {v4, v5, v6}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    move v4, v2

    .line 85
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numRows:I

    if-ge v4, v5, :cond_0

    .line 86
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p1, v4, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v4, v5, v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 93
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->rank:I

    invoke-static {v4, v5, v7}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    .line 96
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    invoke-virtual {v4, v5, v6, v6}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 97
    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->rank:I

    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    if-ge v4, v5, :cond_1

    .line 98
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v6, 0x0

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    :cond_1
    iget-boolean v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->norm2Solution:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->rank:I

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    if-ge v4, v5, :cond_2

    .line 101
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, v4}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->upgradeSolution(Lorg/ejml/data/FMatrixRMaj;)V

    :cond_2
    move v4, v2

    .line 104
    :goto_3
    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    if-ge v4, v5, :cond_3

    .line 105
    aget v5, v1, v4

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->x_basic:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v6, v4

    invoke-virtual {p2, v5, v3, v6}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 70
    :cond_5
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

    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->numCols:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/SolvePseudoInverseQrp_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.class public Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;
.super Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;
.source "AdjLinearSolverQr_FDRM.java"

# interfaces
.implements Lorg/ejml/dense/row/linsol/AdjustableLinearSolver_FDRM;


# instance fields
.field private A:Lorg/ejml/data/FMatrixRMaj;

.field private update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRDecomposition;)V

    return-void
.end method


# virtual methods
.method public addRowToA([FI)Z
    .locals 10

    .line 71
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    if-le v0, v2, :cond_1

    .line 73
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    div-int/lit8 v0, v0, 0xa

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 75
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 77
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxRows:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->maxCols:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 80
    :cond_1
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    const/4 v9, 0x1

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->addRow(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[FIZ)V

    .line 81
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    return v1
.end method

.method public getA()Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 65
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public removeRowFromA(I)Z
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->deleteRow(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;IZ)V

    .line 89
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->numRows:I

    return v3
.end method

.method public setMaxSize(II)V
    .locals 2

    add-int/lit8 p1, p1, 0x5

    .line 51
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_FDRM;->setMaxSize(II)V

    .line 53
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;-><init>(IIZ)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;

    .line 54
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

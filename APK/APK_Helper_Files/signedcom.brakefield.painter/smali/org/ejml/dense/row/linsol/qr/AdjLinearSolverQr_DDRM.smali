.class public Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;
.super Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;
.source "AdjLinearSolverQr_DDRM.java"

# interfaces
.implements Lorg/ejml/dense/row/linsol/AdjustableLinearSolver_DDRM;


# instance fields
.field private A:Lorg/ejml/data/DMatrixRMaj;

.field private update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/QRDecomposition;)V

    return-void
.end method


# virtual methods
.method public addRowToA([DI)Z
    .locals 10

    .line 69
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    if-le v0, v2, :cond_1

    .line 71
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    div-int/lit8 v0, v0, 0xa

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 73
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    .line 74
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 75
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxRows:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->maxCols:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 78
    :cond_1
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    const/4 v9, 0x1

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->addRow(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[DIZ)V

    .line 79
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    return v1
.end method

.method public getA()Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 63
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public removeRowFromA(I)Z
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->deleteRow(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;IZ)V

    .line 87
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->numRows:I

    return v3
.end method

.method public setMaxSize(II)V
    .locals 2

    add-int/lit8 p1, p1, 0x5

    .line 49
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQr_DDRM;->setMaxSize(II)V

    .line 51
    new-instance v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;-><init>(IIZ)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->update:Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;

    .line 52
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/AdjLinearSolverQr_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

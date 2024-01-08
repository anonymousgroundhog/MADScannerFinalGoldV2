.class public abstract Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "BaseLinearSolverQrp_DDRM.java"


# instance fields
.field protected I:Lorg/ejml/data/DMatrixRMaj;

.field protected R:Lorg/ejml/data/DMatrixRMaj;

.field protected R11:Lorg/ejml/data/DMatrixRMaj;

.field private W:Lorg/ejml/data/DMatrixRMaj;

.field protected Y:Lorg/ejml/data/DMatrixRMaj;

.field decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected norm2Solution:Z

.field protected rank:I


# direct methods
.method protected constructor <init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 71
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    .line 72
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    .line 75
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    .line 78
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->I:Lorg/ejml/data/DMatrixRMaj;

    .line 83
    invoke-static {v1, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    .line 86
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    .line 96
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    .line 97
    iput-boolean p2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->norm2Solution:Z

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Lorg/ejml/LinearSolverSafe;

    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-direct {p1, p2}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 178
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->I:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 182
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->I:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 184
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->I:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, v0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected dimensions for A_inv"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 64
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public quality()D
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 12

    .line 105
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 107
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getRank()I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    .line 112
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 113
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 116
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    invoke-virtual {p1, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 117
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x0

    iget v6, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v6

    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    .line 119
    iget-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->norm2Solution:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    if-ge p1, v2, :cond_3

    .line 121
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 122
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    const/4 v5, 0x0

    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    iget v8, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, v7

    invoke-static/range {v4 .. v11}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    .line 125
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget v4, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->R11:Lorg/ejml/data/DMatrixRMaj;

    iget v5, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v7, 0x0

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget v8, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget v9, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([DIII[DIII)V

    .line 128
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p1, v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    move p1, v0

    .line 130
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    move v2, v0

    .line 131
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 133
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    add-int/2addr v4, p1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    goto :goto_2

    .line 135
    :cond_1
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    add-int/2addr v4, p1

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 64
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method protected upgradeSolution(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->Y:Lorg/ejml/data/DMatrixRMaj;

    .line 167
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {v1, v2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->numCols:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->rank:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 170
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v1, p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 173
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_DDRM;->W:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1, v2, v3, v0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->multAdd(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->vjubbscEAc:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

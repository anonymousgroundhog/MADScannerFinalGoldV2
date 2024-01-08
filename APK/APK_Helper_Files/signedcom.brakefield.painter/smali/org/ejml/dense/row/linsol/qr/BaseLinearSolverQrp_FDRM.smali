.class public abstract Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "BaseLinearSolverQrp_FDRM.java"


# instance fields
.field protected I:Lorg/ejml/data/FMatrixRMaj;

.field protected R:Lorg/ejml/data/FMatrixRMaj;

.field protected R11:Lorg/ejml/data/FMatrixRMaj;

.field private W:Lorg/ejml/data/FMatrixRMaj;

.field protected Y:Lorg/ejml/data/FMatrixRMaj;

.field decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected norm2Solution:Z

.field protected rank:I


# direct methods
.method protected constructor <init>(Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 73
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    .line 74
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    .line 77
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    .line 80
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->I:Lorg/ejml/data/FMatrixRMaj;

    .line 85
    invoke-static {v1, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    .line 88
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    .line 98
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    .line 99
    iput-boolean p2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->norm2Solution:Z

    .line 101
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    new-instance p1, Lorg/ejml/LinearSolverSafe;

    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-direct {p1, p2}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 180
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->I:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 184
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->I:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 186
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->I:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, v0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected dimensions for A_inv"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 65
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public quality()D
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 12

    .line 107
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 109
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 112
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getRank()I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    .line 114
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numRows:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 115
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->decomposition:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v1, v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 118
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    invoke-virtual {p1, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 119
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    iget v6, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v6

    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    .line 121
    iget-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->norm2Solution:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    if-ge p1, v2, :cond_3

    .line 123
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 124
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    const/4 v5, 0x0

    iget v7, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    iget v8, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, v7

    invoke-static/range {v4 .. v11}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    .line 127
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->R11:Lorg/ejml/data/FMatrixRMaj;

    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v7, 0x0

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget v9, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([FIII[FIII)V

    .line 130
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p1, v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    move p1, v0

    .line 132
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    move v2, v0

    .line 133
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget v4, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 135
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    add-int/2addr v4, p1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v2, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    goto :goto_2

    .line 137
    :cond_1
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    add-int/2addr v4, p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

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

    .line 65
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method protected upgradeSolution(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->Y:Lorg/ejml/data/FMatrixRMaj;

    .line 169
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {v1, v2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->numCols:I

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->rank:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 172
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->internalSolver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v1, p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 175
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/qr/BaseLinearSolverQrp_FDRM;->W:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v1, v2, v0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->multAdd(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should never happen.  Is input NaN?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

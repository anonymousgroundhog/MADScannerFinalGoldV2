.class public Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;
.super Ljava/lang/Object;
.source "EigenPowerMethod_FDRM.java"


# instance fields
.field private B:Lorg/ejml/data/FMatrixRMaj;

.field private maxIterations:I

.field private q0:Lorg/ejml/data/FMatrixRMaj;

.field private q1:Lorg/ejml/data/FMatrixRMaj;

.field private q2:Lorg/ejml/data/FMatrixRMaj;

.field private seed:Lorg/ejml/data/FMatrixRMaj;

.field private tol:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lorg/ejml/UtilEjml;->TESTP_F32:F

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->tol:F

    const/16 v0, 0x14

    .line 62
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->maxIterations:I

    .line 72
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    .line 73
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    .line 74
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    .line 76
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method private checkConverged(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 143
    :goto_0
    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_2

    .line 144
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v0

    if-lez v5, :cond_0

    move v0, v4

    .line 146
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    .line 152
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    iput-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    .line 153
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    .line 155
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->tol:F

    cmpg-float v0, v0, p1

    const/4 v3, 0x1

    if-gez v0, :cond_3

    return v3

    :cond_3
    cmpg-float p1, v2, p1

    if-gez p1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private initPower(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 121
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->seed:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_0

    .line 125
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeDirect(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 103
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->initPower(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 v0, 0x0

    move v1, v0

    .line 107
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->maxIterations:I

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1, v1, v2}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 111
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result v1

    .line 112
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v2, v1, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->divide(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    .line 114
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->checkConverged(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public computeShiftDirect(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    neg-float p2, p2

    invoke-static {p1, v0, p2}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    .line 176
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->computeDirect(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public computeShiftInvert(Lorg/ejml/data/FMatrixRMaj;F)Z
    .locals 4

    .line 189
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->initPower(Lorg/ejml/data/FMatrixRMaj;)V

    .line 191
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    neg-float p2, p2

    invoke-static {p1, v1, p2}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    .line 194
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {v0, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    const/4 p2, 0x0

    move v1, p2

    .line 198
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->maxIterations:I

    if-ge p2, v2, :cond_0

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 200
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result v1

    .line 201
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q1:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q2:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v2, v1, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->divide(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    .line 203
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->checkConverged(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getEigenVector()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->q0:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public setOptions(IF)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->maxIterations:I

    .line 90
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->tol:F

    return-void
.end method

.method public setSeed(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->seed:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

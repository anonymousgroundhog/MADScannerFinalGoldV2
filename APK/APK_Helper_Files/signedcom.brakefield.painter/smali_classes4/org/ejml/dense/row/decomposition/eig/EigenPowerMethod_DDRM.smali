.class public Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;
.super Ljava/lang/Object;
.source "EigenPowerMethod_DDRM.java"


# instance fields
.field private B:Lorg/ejml/data/DMatrixRMaj;

.field private maxIterations:I

.field private q0:Lorg/ejml/data/DMatrixRMaj;

.field private q1:Lorg/ejml/data/DMatrixRMaj;

.field private q2:Lorg/ejml/data/DMatrixRMaj;

.field private seed:Lorg/ejml/data/DMatrixRMaj;

.field private tol:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-wide v0, Lorg/ejml/UtilEjml;->TESTP_F64:D

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->tol:D

    const/16 v0, 0x14

    .line 60
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->maxIterations:I

    .line 70
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    .line 71
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    .line 72
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    .line 74
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method private checkConverged(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v5, v2

    .line 141
    :goto_0
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v5, v6, :cond_2

    .line 142
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v5

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v5

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v8, v6, v0

    if-lez v8, :cond_0

    move-wide v0, v6

    .line 144
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v5

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v5

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v8, v6, v3

    if-lez v8, :cond_1

    move-wide v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    .line 150
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    iput-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    .line 151
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    .line 153
    iget-wide v5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->tol:D

    cmpg-double p1, v0, v5

    const/4 v0, 0x1

    if-gez p1, :cond_3

    return v0

    :cond_3
    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method private initPower(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 4

    .line 119
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->seed:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeDirect(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 101
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->initPower(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->maxIterations:I

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p1, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 109
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v1

    .line 110
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v3, v1, v2, v4}, Lorg/ejml/dense/row/CommonOps_DDRM;->divide(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    .line 112
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->checkConverged(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public computeShiftDirect(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    neg-double p2, p2

    invoke-static {p1, v0, p2, p3}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    .line 174
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->computeDirect(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public computeShiftInvert(Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 4

    .line 187
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->initPower(Lorg/ejml/data/DMatrixRMaj;)V

    .line 189
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    neg-double p2, p2

    invoke-static {p1, v1, p2, p3}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    .line 192
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {v0, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    const/4 p2, 0x0

    move p3, p2

    .line 196
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->maxIterations:I

    if-ge p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 197
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {v0, p3, v1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    .line 198
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p3}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v1

    .line 199
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q1:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q2:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p3, v1, v2, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->divide(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    .line 201
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->checkConverged(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public getEigenVector()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->q0:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public setOptions(ID)V
    .locals 0

    .line 87
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->maxIterations:I

    .line 88
    iput-wide p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->tol:D

    return-void
.end method

.method public setSeed(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->seed:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

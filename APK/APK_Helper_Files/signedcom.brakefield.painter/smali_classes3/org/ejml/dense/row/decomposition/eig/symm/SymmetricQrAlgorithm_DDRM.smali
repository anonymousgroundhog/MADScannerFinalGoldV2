.class public Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;
.super Ljava/lang/Object;
.source "SymmetricQrAlgorithm_DDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/DMatrixRMaj;

.field private eigenvalues:[D

.field private exceptionalThresh:I

.field private fastEigenvalues:Z

.field private followingScript:Z

.field private final helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

.field private maxIterations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->eigenvalues:[D

    const/16 v0, 0xf

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->exceptionalThresh:I

    mul-int/2addr v0, v0

    .line 50
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->maxIterations:I

    .line 67
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->eigenvalues:[D

    const/16 v0, 0xf

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->exceptionalThresh:I

    mul-int/2addr v0, v0

    .line 50
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->maxIterations:I

    .line 60
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    return-void
.end method

.method private _process()Z
    .locals 3

    .line 144
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    .line 146
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->maxIterations:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    if-ne v0, v2, :cond_1

    .line 153
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->resetSteps()V

    .line 154
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->nextSplit()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 156
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->fastEigenvalues:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->resetSteps()V

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenvalue2by2(I)V

    .line 161
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->setSubmatrix(II)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->lastExceptional:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->exceptionalThresh:I

    if-le v0, v1, :cond_3

    .line 164
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->exceptionalShift()V

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->performStep()V

    .line 168
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->incrementSteps()V

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public getEigenvalue(I)D
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    return v0
.end method

.method public getQ()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public performStep()V
    .locals 5

    .line 181
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    if-lt v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->isZero(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->splits:[I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v3, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numSplits:I

    aput v0, v1, v3

    .line 184
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->followingScript:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 193
    iput-boolean v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->followingScript:Z

    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->eigenvalues:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    aget-wide v2, v0, v2

    goto :goto_1

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeShift()D

    move-result-wide v2

    .line 206
    :goto_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->performImplicitSingleStep(DZ)V

    return-void
.end method

.method public process(I[D[D)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 135
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->init([D[DI)V

    :cond_0
    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->followingScript:Z

    .line 138
    sget-object p1, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->eigenvalues:[D

    .line 140
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->_process()Z

    move-result p1

    return p1
.end method

.method public process(I[D[D[D)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->init([D[DI)V

    .line 120
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-nez p1, :cond_1

    .line 121
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget p1, p1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 122
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->followingScript:Z

    .line 125
    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->eigenvalues:[D

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->fastEigenvalues:Z

    .line 128
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->_process()Z

    move-result p1

    return p1
.end method

.method public setFastEigenvalues(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->fastEigenvalues:Z

    return-void
.end method

.method public setMaxIterations(I)V
    .locals 0

    .line 71
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->maxIterations:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

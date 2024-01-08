.class public Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;
.super Ljava/lang/Object;
.source "SymmetricQrAlgorithm_FDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/FMatrixRMaj;

.field private eigenvalues:[F

.field private exceptionalThresh:I

.field private fastEigenvalues:Z

.field private followingScript:Z

.field private final helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

.field private maxIterations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->eigenvalues:[F

    const/16 v0, 0xf

    .line 51
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->exceptionalThresh:I

    mul-int/2addr v0, v0

    .line 52
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->maxIterations:I

    .line 69
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->eigenvalues:[F

    const/16 v0, 0xf

    .line 51
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->exceptionalThresh:I

    mul-int/2addr v0, v0

    .line 52
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->maxIterations:I

    .line 62
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    return-void
.end method

.method private _process()Z
    .locals 3

    .line 146
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    .line 148
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->maxIterations:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    if-ne v0, v2, :cond_1

    .line 155
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->resetSteps()V

    .line 156
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->nextSplit()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 158
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->fastEigenvalues:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_2

    .line 161
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->resetSteps()V

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenvalue2by2(I)V

    .line 163
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->setSubmatrix(II)V

    goto :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->lastExceptional:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->exceptionalThresh:I

    if-le v0, v1, :cond_3

    .line 166
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->exceptionalShift()V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->performStep()V

    .line 170
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->incrementSteps()V

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public getEigenvalue(I)F
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget p1, v0, p1

    return p1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    return v0
.end method

.method public getQ()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public performStep()V
    .locals 5

    .line 183
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    if-lt v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->isZero(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->splits:[I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v3, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numSplits:I

    aput v0, v1, v3

    .line 186
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->followingScript:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 195
    iput-boolean v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->followingScript:Z

    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->eigenvalues:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    aget v0, v0, v2

    goto :goto_1

    .line 204
    :cond_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeShift()F

    move-result v0

    .line 208
    :goto_1
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->performImplicitSingleStep(FZ)V

    return-void
.end method

.method public process(I[F[F)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 137
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->init([F[FI)V

    :cond_0
    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->followingScript:Z

    .line 140
    sget-object p1, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->eigenvalues:[F

    .line 142
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->_process()Z

    move-result p1

    return p1
.end method

.method public process(I[F[F[F)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 121
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->init([F[FI)V

    .line 122
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget p1, p1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->identity(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    .line 124
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->followingScript:Z

    .line 127
    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->eigenvalues:[F

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->fastEigenvalues:Z

    .line 130
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->_process()Z

    move-result p1

    return p1
.end method

.method public setFastEigenvalues(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->fastEigenvalues:Z

    return-void
.end method

.method public setMaxIterations(I)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->maxIterations:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

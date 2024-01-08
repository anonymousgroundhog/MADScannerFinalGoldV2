.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigenvector_FDRM.java"


# instance fields
.field N:I

.field Q:Lorg/ejml/data/FMatrixRMaj;

.field eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

.field eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

.field implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

.field indexVal:I

.field numSplits:I

.field onscript:Z

.field origEigenvalues:[Lorg/ejml/data/Complex_F32;

.field solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSplitPerformImplicit()V
    .locals 6

    .line 259
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    if-le v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    .line 262
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->splits:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->numSplits:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->numSplits:I

    aput v2, v0, v1

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->onscript:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalThreshold:I

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    .line 270
    iput-boolean v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->onscript:Z

    goto :goto_1

    .line 272
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F32;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    aget-object v0, v0, v1

    .line 275
    invoke-virtual {v0}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    invoke-virtual {v0}, Lorg/ejml/data/Complex_F32;->getReal()F

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitSingleStep(IIF)V

    goto :goto_1

    .line 277
    :cond_3
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    sub-int v5, v1, v4

    if-lt v5, v2, :cond_4

    add-int/lit8 v2, v4, 0x2

    iget v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge v2, v5, :cond_4

    .line 278
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, v0, Lorg/ejml/data/Complex_F32;->real:F

    iget v0, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-virtual {v2, v4, v1, v3, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitDoubleStep(IIFF)V

    goto :goto_1

    .line 280
    :cond_4
    iput-boolean v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->onscript:Z

    goto :goto_1

    .line 285
    :cond_5
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    sub-int v3, v0, v1

    if-lt v3, v2, :cond_6

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge v2, v3, :cond_6

    .line 286
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->implicitDoubleStep(II)V

    goto :goto_1

    .line 288
    :cond_6
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v3, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    invoke-virtual {v3, v4, v4}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitSingleStep(IIF)V

    :goto_1
    return-void
.end method

.method private findNextEigenvalue()Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 222
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->maxIterations:I

    if-ge v1, v2, :cond_5

    .line 224
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->incrementSteps()V

    .line 226
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    if-ge v1, v2, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->moveToNextSplit()V

    goto :goto_0

    :cond_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 229
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenAt(I)V

    .line 230
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    .line 231
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    sub-int v3, v1, v2

    if-ne v3, v4, :cond_2

    .line 233
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v3, v2, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->isReal2x2(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addComputedEigen2x2(II)V

    .line 235
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    .line 236
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    goto :goto_1

    .line 238
    :cond_2
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalThreshold:I

    if-le v1, v2, :cond_3

    .line 242
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalShift(II)V

    .line 243
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iput v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    goto :goto_0

    .line 244
    :cond_3
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenAt(I)V

    .line 248
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    .line 249
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    goto :goto_1

    .line 251
    :cond_4
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->checkSplitPerformImplicit()V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method private moveToNextSplit()V
    .locals 3

    .line 293
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->numSplits:I

    if-lez v0, :cond_1

    .line 296
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->splits:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->numSplits:I

    aget v2, v1, v0

    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 299
    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private solveEigenvectorDuplicateEigenvalue(FIZ)V
    .locals 7

    .line 132
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    move v0, v3

    .line 135
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 136
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    if-lez p2, :cond_2

    if-eqz p3, :cond_1

    .line 140
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solveUsingTriangle(FILorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solveWithLU(FILorg/ejml/data/FMatrixRMaj;)V

    .line 146
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-virtual {p3, v2, v5, v6}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 148
    :goto_1
    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge p2, p3, :cond_4

    .line 149
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object p3, p3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    sub-int/2addr v2, p2

    sub-int/2addr v2, v5

    aget-object p3, p3, v2

    .line 151
    invoke-virtual {p3}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v2

    if-eqz v2, :cond_3

    iget p3, p3, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v0

    const/high16 v2, 0x42c80000    # 100.0f

    sget v4, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v4, v2

    cmpg-float p3, p3, v4

    if-gez p3, :cond_3

    .line 152
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    iget-object p3, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v3, p3, p2

    .line 154
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-direct {p3, v2, v5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 155
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v2, v4, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 156
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    sub-int/2addr v4, p2

    sub-int/2addr v4, v5

    aput-object p3, v2, v4

    .line 157
    invoke-static {p3}, Lorg/ejml/dense/row/NormOps_FDRM;->normalizeF(Lorg/ejml/data/FMatrixRMaj;)V

    .line 159
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    iget-object p3, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v1, p3, p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private solveUsingTriangle(FILorg/ejml/data/FMatrixRMaj;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 166
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    neg-float v3, p1

    invoke-virtual {v2, v1, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->add(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p2

    move v5, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    .line 170
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->changeSign(Lorg/ejml/data/FMatrixD1;)V

    .line 172
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object p3, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v1, p3, v2, v0, p2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FIII)V

    :goto_1
    if-ge v0, p2, :cond_1

    .line 175
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object p3, p3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p3, v0, v0, p1}, Lorg/ejml/data/FMatrixRMaj;->add(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private solveWithLU(FILorg/ejml/data/FMatrixRMaj;)V
    .locals 9

    .line 180
    new-instance v8, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v8, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 182
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p2

    move v4, p2

    move-object v5, v8

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    neg-float v2, p1

    .line 185
    invoke-virtual {v8, v1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->add(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 188
    invoke-virtual {p3, p2, p1, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 190
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    .line 191
    invoke-static {p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->changeSign(Lorg/ejml/data/FMatrixD1;)V

    .line 194
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1, v8}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1, p3, p3}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Solve failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extractVectors(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 7

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 101
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge v2, v4, :cond_2

    .line 103
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v4, v4, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    iget v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v1

    .line 108
    :cond_0
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    iget v6, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v0

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    .line 109
    iget v4, v4, Lorg/ejml/data/Complex_F32;->real:F

    invoke-direct {p0, v4, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solveEigenvectorDuplicateEigenvalue(FIZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 115
    new-instance v2, Lorg/ejml/data/FMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-direct {v2, v3, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 116
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge v1, v3, :cond_4

    .line 117
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 120
    invoke-static {p1, v3, v2}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 121
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    aput-object v2, v4, v1

    move-object v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public findQandR()Z
    .locals 4

    .line 200
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x1:I

    .line 203
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->x2:I

    .line 206
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    .line 207
    :cond_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->indexVal:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    if-ge v1, v3, :cond_1

    .line 208
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->findNextEigenvalue()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    return v2
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    return-object v0
.end method

.method public getEigenvectors()[Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getImplicit()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public process(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 5

    .line 64
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    .line 66
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 67
    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    .line 68
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    .line 69
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->splits:[I

    .line 70
    new-array v1, v0, [Lorg/ejml/data/Complex_F32;

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F32;

    .line 71
    new-array v0, v0, [Lorg/ejml/data/FMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    .line 72
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectorTemp:Lorg/ejml/data/FMatrixRMaj;

    .line 74
    invoke-static {v3}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    new-array v0, v0, [Lorg/ejml/data/FMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    .line 79
    :goto_0
    iget-object v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F32;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->N:I

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->setup(Lorg/ejml/data/FMatrixRMaj;)V

    .line 82
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    .line 83
    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->numSplits:I

    .line 84
    iput-boolean v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->onscript:Z

    .line 89
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->findQandR()Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    .line 92
    :cond_1
    invoke-virtual {p0, p3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->extractVectors(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

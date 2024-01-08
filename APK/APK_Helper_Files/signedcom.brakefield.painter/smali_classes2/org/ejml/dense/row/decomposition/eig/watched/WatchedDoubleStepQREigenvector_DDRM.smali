.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigenvector_DDRM.java"


# instance fields
.field N:I

.field Q:Lorg/ejml/data/DMatrixRMaj;

.field eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

.field eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

.field implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

.field indexVal:I

.field numSplits:I

.field onscript:Z

.field origEigenvalues:[Lorg/ejml/data/Complex_F64;

.field solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSplitPerformImplicit()V
    .locals 13

    .line 257
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    if-le v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    .line 260
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->splits:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->numSplits:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->numSplits:I

    aput v2, v0, v1

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->onscript:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalThreshold:I

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    .line 268
    iput-boolean v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->onscript:Z

    goto :goto_1

    .line 270
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F64;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    aget-object v0, v0, v1

    .line 273
    invoke-virtual {v0}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    invoke-virtual {v0}, Lorg/ejml/data/Complex_F64;->getReal()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitSingleStep(IID)V

    goto :goto_1

    .line 275
    :cond_3
    iget v8, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    iget v7, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    sub-int v1, v8, v7

    if-lt v1, v2, :cond_4

    add-int/lit8 v1, v7, 0x2

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v1, v2, :cond_4

    .line 276
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-wide v9, v0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v11, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-virtual/range {v6 .. v12}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitDoubleStep(IIDD)V

    goto :goto_1

    .line 278
    :cond_4
    iput-boolean v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->onscript:Z

    goto :goto_1

    .line 283
    :cond_5
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    sub-int v3, v0, v1

    if-lt v3, v2, :cond_6

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v2, v3, :cond_6

    .line 284
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->implicitDoubleStep(II)V

    goto :goto_1

    .line 286
    :cond_6
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v3, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    invoke-virtual {v3, v4, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitSingleStep(IID)V

    :goto_1
    return-void
.end method

.method private findNextEigenvalue()Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 220
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->maxIterations:I

    if-ge v1, v2, :cond_5

    .line 222
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->incrementSteps()V

    .line 224
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    if-ge v1, v2, :cond_0

    .line 225
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->moveToNextSplit()V

    goto :goto_0

    :cond_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 227
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenAt(I)V

    .line 228
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    .line 229
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    sub-int v3, v1, v2

    if-ne v3, v4, :cond_2

    .line 231
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v3, v2, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->isReal2x2(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 232
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addComputedEigen2x2(II)V

    .line 233
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    .line 234
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    goto :goto_1

    .line 236
    :cond_2
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalThreshold:I

    if-le v1, v2, :cond_3

    .line 240
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalShift(II)V

    .line 241
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iput v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    goto :goto_0

    .line 242
    :cond_3
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenAt(I)V

    .line 246
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    .line 247
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    goto :goto_1

    .line 249
    :cond_4
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->checkSplitPerformImplicit()V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method private moveToNextSplit()V
    .locals 3

    .line 291
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->numSplits:I

    if-lez v0, :cond_1

    .line 294
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->splits:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->numSplits:I

    aget v2, v1, v0

    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 297
    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    :goto_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private solveEigenvectorDuplicateEigenvalue(DIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 130
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v8, :cond_0

    move-wide v4, v9

    .line 133
    :cond_0
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    iget v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 134
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v8}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    if-lez v3, :cond_2

    if-eqz p4, :cond_1

    .line 138
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v2, v3, v8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solveUsingTriangle(DILorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v2, v3, v8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solveWithLU(DILorg/ejml/data/DMatrixRMaj;)V

    .line 144
    :cond_2
    :goto_0
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    iget v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-virtual {v8, v11, v12, v13}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 146
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v3, v8, :cond_4

    .line 147
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v8, v8, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    iget v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    sub-int/2addr v11, v3

    sub-int/2addr v11, v12

    aget-object v8, v8, v11

    .line 149
    invoke-virtual {v8}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-wide v13, v8, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    div-double/2addr v13, v4

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    sget-wide v17, Lorg/ejml/UtilEjml;->EPS:D

    mul-double v17, v17, v15

    cmpg-double v8, v13, v17

    if-gez v8, :cond_3

    .line 150
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v9, v8, v3

    .line 152
    new-instance v8, Lorg/ejml/data/DMatrixRMaj;

    iget v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-direct {v8, v11, v12}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 153
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v13, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v11, v13, v8}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 154
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    iget v13, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    sub-int/2addr v13, v3

    sub-int/2addr v13, v12

    aput-object v8, v11, v13

    .line 155
    invoke-static {v8}, Lorg/ejml/dense/row/NormOps_DDRM;->normalizeF(Lorg/ejml/data/DMatrixRMaj;)V

    .line 157
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v6, v8, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private solveUsingTriangle(DILorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 164
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    neg-double v3, p1

    invoke-virtual {v2, v1, v1, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->add(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v2, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    .line 168
    invoke-static {p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->changeSign(Lorg/ejml/data/DMatrixD1;)V

    .line 170
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object p4, p4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v1, p4, v2, v0, p3}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DIII)V

    :goto_1
    if-ge v0, p3, :cond_1

    .line 173
    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object p4, p4, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p4, v0, v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->add(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private solveWithLU(DILorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    .line 178
    new-instance v8, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v8, p3, p3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 180
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p3

    move v4, p3

    move-object v5, v8

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    neg-double v2, p1

    .line 183
    invoke-virtual {v8, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->add(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 186
    invoke-virtual {p4, p3, p1, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 188
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p3

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    .line 189
    invoke-static {p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->changeSign(Lorg/ejml/data/DMatrixD1;)V

    .line 192
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1, v8}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {p1, p4, p4}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 193
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Solve failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extractVectors(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 7

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 99
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v2, v4, :cond_2

    .line 101
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v4, v4, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    iget v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v1

    .line 106
    :cond_0
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    iget v6, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v0

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    .line 107
    iget-wide v4, v4, Lorg/ejml/data/Complex_F64;->real:D

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solveEigenvectorDuplicateEigenvalue(DIZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 113
    new-instance v2, Lorg/ejml/data/DMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-direct {v2, v3, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 114
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v1, v3, :cond_4

    .line 115
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 118
    invoke-static {p1, v3, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 119
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

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

    .line 198
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x1:I

    .line 201
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->x2:I

    .line 204
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    .line 205
    :cond_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->indexVal:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    if-ge v1, v3, :cond_1

    .line 206
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->findNextEigenvalue()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    return v2
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    return-object v0
.end method

.method public getEigenvectors()[Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getImplicit()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public process(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 62
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->implicit:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    .line 64
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 65
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    .line 66
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 67
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->splits:[I

    .line 68
    new-array v1, v0, [Lorg/ejml/data/Complex_F64;

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F64;

    .line 69
    new-array v0, v0, [Lorg/ejml/data/DMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    .line 70
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectorTemp:Lorg/ejml/data/DMatrixRMaj;

    .line 72
    invoke-static {v3}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    goto :goto_0

    .line 75
    :cond_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    new-array v0, v0, [Lorg/ejml/data/DMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    .line 77
    :goto_0
    iget-object v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->origEigenvalues:[Lorg/ejml/data/Complex_F64;

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->N:I

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->setup(Lorg/ejml/data/DMatrixRMaj;)V

    .line 80
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    .line 81
    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->numSplits:I

    .line 82
    iput-boolean v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->onscript:Z

    .line 87
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->findQandR()Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    .line 90
    :cond_1
    invoke-virtual {p0, p3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->extractVectors(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.class public Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;
.super Ljava/lang/Object;
.source "SvdImplicitQrAlgorithm_DDRM.java"


# static fields
.field private static final giveUpOnKnown:I = 0xa


# instance fields
.field protected N:I

.field protected Ut:Lorg/ejml/data/DMatrixRMaj;

.field protected Vt:Lorg/ejml/data/DMatrixRMaj;

.field bulge:D

.field c:D

.field protected diag:[D

.field protected eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

.field private exceptionalThresh:I

.field private fastValues:Z

.field private findingZeros:Z

.field followScript:Z

.field private maxIterations:I

.field protected maxValue:D

.field protected nextExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[D

.field protected rand:Ljava/util/Random;

.field s:D

.field protected splits:[I

.field steps:I

.field protected totalSteps:I

.field private values:[D

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->rand:Ljava/util/Random;

    .line 73
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    const/16 v0, 0xf

    .line 99
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    .line 100
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxIterations:I

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->fastValues:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->rand:Ljava/util/Random;

    .line 73
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    const/16 v0, 0xf

    .line 99
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    .line 100
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxIterations:I

    .line 123
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->fastValues:Z

    return-void
.end method

.method private computeBulgeScale()D
    .locals 4

    .line 402
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    aget-wide v2, v0, v1

    .line 403
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v0, v0, v1

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private performDynamicStep()V
    .locals 13

    .line 268
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->findingZeros:Z

    if-eqz v0, :cond_1

    .line 269
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->findingZeros:Z

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeBulgeScale()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 273
    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performImplicitSingleStep(DDZ)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeBulgeScale()D

    move-result-wide v8

    .line 282
    invoke-virtual {p0, v8, v9}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->selectWilkinsonShift(D)D

    move-result-wide v10

    const/4 v12, 0x0

    move-object v7, p0

    .line 284
    invoke-virtual/range {v7 .. v12}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performImplicitSingleStep(DDZ)V

    :goto_0
    return-void
.end method

.method private performScriptedStep()V
    .locals 6

    .line 293
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeBulgeScale()D

    move-result-wide v1

    .line 294
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->followScript:Z

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->values:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    aget-wide v3, v0, v3

    div-double/2addr v3, v1

    mul-double/2addr v3, v3

    const/4 v5, 0x0

    move-object v0, p0

    .line 300
    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performImplicitSingleStep(DDZ)V

    :goto_0
    return-void
.end method

.method private pushRight(I)V
    .locals 6

    .line 665
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->isOffZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 670
    :cond_0
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->rotatorPushRight(I)V

    .line 671
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 672
    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x2

    .line 673
    invoke-direct {p0, p1, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->rotatorPushRight2(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rotatorPushRight(I)V
    .locals 13

    .line 682
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v0, v0, p1

    .line 683
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v6, p1, 0x1

    aget-wide v2, v2, v6

    neg-double v4, v0

    .line 685
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeRotator(DD)V

    .line 688
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    const-wide/16 v7, 0x0

    aput-wide v7, v4, p1

    .line 689
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget-wide v9, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    mul-double/2addr v2, v9

    iget-wide v11, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    aput-wide v2, v5, v6

    add-int/lit8 v0, p1, 0x2

    .line 691
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 692
    aget-wide v0, v4, v6

    mul-double v2, v0, v9

    .line 693
    aput-wide v2, v4, v6

    mul-double/2addr v0, v11

    .line 694
    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    goto :goto_0

    .line 696
    :cond_0
    iput-wide v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    .line 707
    :goto_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v4, :cond_1

    move-object v3, p0

    move v5, p1

    move-wide v7, v9

    move-wide v9, v11

    .line 708
    invoke-virtual/range {v3 .. v10}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    :cond_1
    return-void
.end method

.method private rotatorPushRight2(II)V
    .locals 11

    .line 721
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    .line 722
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int v6, p1, p2

    aget-wide v2, v2, v6

    neg-double v4, v0

    .line 724
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeRotator(DD)V

    .line 726
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget-wide v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    mul-double/2addr v2, v7

    iget-wide v9, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    mul-double/2addr v0, v9

    sub-double/2addr v2, v0

    aput-wide v2, p2, v6

    .line 728
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    add-int/lit8 p2, p2, -0x1

    if-ge v6, p2, :cond_0

    .line 729
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v0, p2, v6

    mul-double v2, v0, v7

    .line 730
    aput-wide v2, p2, v6

    mul-double/2addr v0, v9

    .line 731
    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    .line 742
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v4, :cond_1

    move-object v3, p0

    move v5, p1

    .line 743
    invoke-virtual/range {v3 .. v10}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _process()Z
    .locals 5

    .line 222
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    if-ltz v0, :cond_6

    .line 226
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxIterations:I

    if-le v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 230
    :cond_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    if-ne v3, v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->resetSteps()V

    .line 235
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->nextSplit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 237
    :cond_2
    iget-boolean v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->fastValues:Z

    if-eqz v4, :cond_3

    sub-int/2addr v0, v3

    if-ne v0, v1, :cond_3

    .line 239
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->resetSteps()V

    .line 240
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenBB_2x2(I)V

    .line 241
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    invoke-virtual {p0, v0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setSubmatrix(II)V

    goto :goto_0

    .line 242
    :cond_3
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->nextExceptional:I

    if-lt v2, v0, :cond_4

    .line 243
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionShift()V

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->checkForAndHandleZeros()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->followScript:Z

    if-eqz v0, :cond_5

    .line 248
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performScriptedStep()V

    goto :goto_0

    .line 250
    :cond_5
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performDynamicStep()V

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method protected checkForAndHandleZeros()Z
    .locals 5

    .line 636
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    if-lt v0, v2, :cond_1

    .line 637
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->isOffZero(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->resetSteps()V

    .line 640
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->splits:[I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    aput v0, v2, v3

    add-int/2addr v0, v1

    .line 641
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 647
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    sub-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    if-lt v0, v2, :cond_3

    .line 648
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->isDiagonalZero(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->pushRight(I)V

    .line 651
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->resetSteps()V

    .line 652
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->splits:[I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    aput v0, v2, v3

    add-int/2addr v0, v1

    .line 653
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected computeRotator(DD)V
    .locals 4

    .line 469
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    div-double/2addr p1, p3

    mul-double p3, p1, p1

    add-double/2addr p3, v1

    .line 472
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr v1, p3

    .line 473
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    div-double/2addr p1, p3

    .line 474
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    goto :goto_0

    :cond_0
    div-double/2addr p3, p1

    mul-double p1, p3, p3

    add-double/2addr p1, v1

    .line 477
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    div-double/2addr v1, p1

    .line 478
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    div-double/2addr p3, p1

    .line 479
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    :goto_0
    return-void
.end method

.method protected createBulge(IDDZ)V
    .locals 17

    move-object/from16 v8, p0

    .line 418
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v1, v0, p1

    .line 419
    iget-object v3, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v3, v3, p1

    add-int/lit8 v5, p1, 0x1

    .line 420
    aget-wide v6, v0, v5

    if-eqz p6, :cond_0

    .line 423
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    iput-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    .line 424
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iput-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    goto :goto_0

    :cond_0
    div-double v9, v1, p4

    mul-double v11, v9, v9

    sub-double v11, v11, p2

    div-double v13, v3, p4

    mul-double/2addr v13, v9

    mul-double v9, v11, v11

    mul-double v15, v13, v13

    add-double/2addr v9, v15

    .line 430
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v11, v9

    .line 432
    iput-wide v11, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    div-double/2addr v13, v9

    .line 433
    iput-wide v13, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    .line 437
    :goto_0
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    mul-double v11, v1, v9

    iget-wide v13, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    mul-double v15, v3, v13

    add-double/2addr v11, v15

    aput-wide v11, v0, p1

    .line 438
    iget-object v11, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    mul-double/2addr v3, v9

    mul-double/2addr v1, v13

    sub-double/2addr v3, v1

    aput-wide v3, v11, p1

    mul-double v1, v6, v9

    .line 439
    aput-wide v1, v0, v5

    mul-double/2addr v6, v13

    .line 440
    iput-wide v6, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    .line 449
    iget-object v1, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v5

    move-wide v4, v9

    move-wide v6, v13

    .line 450
    invoke-virtual/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    :cond_1
    return-void
.end method

.method protected eigenBB_2x2(I)V
    .locals 22

    move-object/from16 v0, p0

    .line 599
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v2, v1, p1

    .line 600
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v4, v4, p1

    add-int/lit8 v6, p1, 0x1

    .line 601
    aget-wide v7, v1, v6

    .line 604
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 605
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 606
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v1, v9, v11

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v9, v11

    :goto_0
    cmpl-double v1, v13, v9

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v13, v9

    :goto_1
    const-wide/16 v9, 0x0

    cmpl-double v1, v13, v9

    if-nez v1, :cond_2

    return-void

    :cond_2
    div-double/2addr v2, v13

    div-double/2addr v4, v13

    div-double/2addr v7, v13

    .line 620
    iget-object v15, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    mul-double v16, v2, v2

    mul-double v18, v2, v4

    mul-double/2addr v4, v4

    mul-double/2addr v7, v7

    add-double v20, v4, v7

    invoke-virtual/range {v15 .. v21}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->symm2x2_fast(DDD)V

    .line 622
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aput-wide v9, v1, p1

    .line 623
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    aput-wide v2, v1, p1

    .line 624
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v1, v2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    .line 625
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    mul-double/2addr v1, v13

    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v4, v4, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v4, v4, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    aput-wide v1, v3, v6

    return-void
.end method

.method public exceptionShift()V
    .locals 13

    .line 757
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numExceptional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numExceptional:I

    const-wide v1, 0x3fa999999999999aL    # 0.05

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v3, v0

    if-lez v2, :cond_0

    move-wide v3, v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 761
    sget-wide v5, Lorg/ejml/UtilEjml;->PI:D

    mul-double/2addr v5, v0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v7

    mul-double/2addr v5, v0

    mul-double v10, v5, v3

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    move-object v7, p0

    .line 762
    invoke-virtual/range {v7 .. v12}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->performImplicitSingleStep(DDZ)V

    .line 765
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionalThresh:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->nextExceptional:I

    return-void
.end method

.method public getDiag()[D
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    return-object v0
.end method

.method public getMaxValue()D
    .locals 2

    .line 806
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    return-wide v0
.end method

.method public getNumberOfSingularValues()I
    .locals 1

    .line 782
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    return v0
.end method

.method public getOff()[D
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    return-object v0
.end method

.method public getSingularValue(I)D
    .locals 2

    .line 786
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSingularValues()[D
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    return-object v0
.end method

.method public getUt()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getVt()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public incrementSteps()V
    .locals 1

    .line 305
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    .line 306
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->totalSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->totalSteps:I

    return-void
.end method

.method public initParam(II)V
    .locals 0

    if-gt p2, p1, :cond_2

    .line 186
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    .line 188
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->splits:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-ge p1, p2, :cond_1

    .line 189
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->splits:[I

    :cond_1
    const/4 p1, 0x0

    .line 192
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    add-int/lit8 p2, p2, -0x1

    .line 193
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    .line 195
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    .line 196
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->totalSteps:I

    .line 197
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    .line 198
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numExceptional:I

    .line 199
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionalThresh:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->nextExceptional:I

    return-void

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Must be a square or tall matrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDiagonalZero(I)Z
    .locals 6

    .line 318
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 320
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v0, v4

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOffZero(I)Z
    .locals 6

    .line 310
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 312
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v0, v4

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nextSplit()Z
    .locals 5

    .line 334
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->splits:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numSplits:I

    aget v4, v2, v0

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v3

    .line 338
    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    goto :goto_0

    .line 340
    :cond_1
    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    :goto_0
    return v3
.end method

.method public performImplicitSingleStep(DDZ)V
    .locals 7

    .line 353
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->createBulge(IDDZ)V

    .line 355
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const-wide/16 p4, 0x0

    if-ge p1, p2, :cond_1

    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    cmpl-double p2, v0, p4

    if-eqz p2, :cond_1

    .line 356
    invoke-virtual {p0, p1, p3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->removeBulgeLeft(IZ)V

    .line 357
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    cmpl-double p2, v0, p4

    if-nez p2, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->removeBulgeRight(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 362
    :cond_1
    :goto_1
    iget-wide p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    cmpl-double p1, p1, p4

    if-eqz p1, :cond_2

    .line 363
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    sub-int/2addr p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->removeBulgeLeft(IZ)V

    .line 365
    :cond_2
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->incrementSteps()V

    return-void
.end method

.method public printMatrix()V
    .locals 6

    .line 769
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Off Diag[ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 770
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "%5.2f "

    if-ge v1, v2, :cond_0

    .line 771
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 774
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 775
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 776
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 778
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public process()Z
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->followScript:Z

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->findingZeros:Z

    .line 206
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->_process()Z

    move-result v0

    return v0
.end method

.method public process([D)Z
    .locals 1

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->followScript:Z

    .line 214
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->values:[D

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->findingZeros:Z

    .line 217
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->_process()Z

    move-result p1

    return p1
.end method

.method protected removeBulgeLeft(IZ)V
    .locals 17

    move-object/from16 v8, p0

    .line 484
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    aget-wide v1, v0, p1

    .line 485
    iget-object v3, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v3, v3, p1

    add-int/lit8 v5, p1, 0x1

    .line 486
    aget-wide v6, v0, v5

    .line 488
    iget-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    invoke-virtual {v8, v1, v2, v9, v10}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeRotator(DD)V

    .line 491
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    iget-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    mul-double/2addr v1, v9

    iget-wide v11, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    iget-wide v13, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    mul-double/2addr v13, v11

    add-double/2addr v1, v13

    aput-wide v1, v0, p1

    .line 492
    iget-object v1, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    mul-double v13, v9, v3

    mul-double v15, v11, v6

    add-double/2addr v13, v15

    aput-wide v13, v1, p1

    mul-double/2addr v6, v9

    mul-double/2addr v3, v11

    sub-double/2addr v6, v3

    .line 493
    aput-wide v6, v0, v5

    if-eqz p2, :cond_0

    .line 496
    aget-wide v2, v1, v5

    mul-double v6, v11, v2

    .line 497
    iput-wide v6, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    mul-double/2addr v2, v9

    .line 498
    aput-wide v2, v1, v5

    .line 508
    :cond_0
    iget-object v1, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v5

    move-wide v4, v9

    move-wide v6, v11

    .line 509
    invoke-virtual/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    :cond_1
    return-void
.end method

.method protected removeBulgeRight(I)V
    .locals 17

    move-object/from16 v8, p0

    .line 519
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    aget-wide v1, v0, p1

    .line 520
    iget-object v3, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v4, p1, 0x1

    aget-wide v5, v3, v4

    .line 521
    aget-wide v9, v0, v4

    .line 523
    iget-wide v11, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    invoke-virtual {v8, v1, v2, v11, v12}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->computeRotator(DD)V

    .line 526
    iget-object v0, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    iget-wide v11, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->c:D

    mul-double/2addr v1, v11

    iget-wide v13, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    move v7, v4

    iget-wide v3, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->s:D

    mul-double/2addr v13, v3

    add-double/2addr v1, v13

    aput-wide v1, v0, p1

    .line 527
    iget-object v1, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    mul-double v13, v5, v11

    mul-double v15, v9, v3

    add-double/2addr v13, v15

    aput-wide v13, v1, v7

    neg-double v5, v5

    mul-double/2addr v5, v3

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    .line 528
    aput-wide v5, v0, v7

    add-int/lit8 v5, p1, 0x2

    .line 530
    aget-wide v9, v1, v5

    mul-double v13, v9, v11

    .line 531
    aput-wide v13, v1, v5

    mul-double/2addr v9, v3

    .line 532
    iput-wide v9, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->bulge:D

    .line 541
    iget-object v1, v8, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    move v2, v7

    move-wide v6, v3

    move v3, v5

    move-wide v4, v11

    .line 542
    invoke-virtual/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    :cond_0
    return-void
.end method

.method public resetSteps()V
    .locals 2

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->steps:I

    .line 325
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->exceptionalThresh:I

    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->nextExceptional:I

    .line 326
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->numExceptional:I

    return-void
.end method

.method public selectWilkinsonShift(D)D
    .locals 20

    move-object/from16 v0, p0

    .line 567
    iget v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    iget v2, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    sub-int v2, v1, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 568
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v2, v4

    div-double v4, v4, p1

    .line 569
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    add-int/lit8 v7, v1, -0x2

    aget-wide v7, v6, v7

    div-double v7, v7, p1

    .line 570
    aget-wide v9, v2, v1

    div-double v9, v9, p1

    sub-int/2addr v1, v3

    .line 571
    aget-wide v1, v6, v1

    div-double v1, v1, p1

    mul-double/2addr v7, v7

    mul-double v11, v4, v4

    add-double v14, v7, v11

    mul-double v6, v1, v1

    mul-double/2addr v9, v9

    add-double/2addr v6, v9

    .line 576
    iget-object v13, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    mul-double v16, v1, v4

    move-wide/from16 v18, v6

    invoke-virtual/range {v13 .. v19}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->symm2x2_fast(DDD)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    div-double v3, v3, p1

    .line 579
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    div-double v5, v5, p1

    .line 580
    aget-wide v1, v2, v1

    div-double v1, v1, p1

    mul-double v8, v3, v3

    mul-double v10, v5, v5

    mul-double/2addr v1, v1

    add-double/2addr v1, v10

    .line 585
    iget-object v7, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    mul-double v10, v3, v5

    move-wide v12, v1

    invoke-virtual/range {v7 .. v13}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->symm2x2_fast(DDD)V

    move-wide v6, v1

    .line 589
    :goto_0
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 590
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 592
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    :goto_1
    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    return-wide v1
.end method

.method public setFastValues(Z)V
    .locals 0

    .line 790
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->fastValues:Z

    return-void
.end method

.method public setMatrix(II[D[D)V
    .locals 6

    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->initParam(II)V

    .line 149
    iput-object p3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    .line 150
    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    const/4 p1, 0x0

    .line 152
    aget-wide p1, p3, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    const/4 p1, 0x1

    .line 153
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->N:I

    if-ge p1, p2, :cond_2

    .line 154
    aget-wide v0, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    add-int/lit8 p2, p1, -0x1

    .line 155
    aget-wide v2, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 157
    iget-wide v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    cmpl-double p2, v0, v4

    if-lez p2, :cond_0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    .line 160
    :cond_0
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    cmpl-double p2, v2, v0

    if-lez p2, :cond_1

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMaxValue(D)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->maxValue:D

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    .line 552
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x1:I

    .line 553
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->x2:I

    return-void
.end method

.method public setUt(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public setVt(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public swapDiag([D)[D
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    .line 168
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->diag:[D

    return-object v0
.end method

.method public swapOff([D)[D
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    .line 174
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->off:[D

    return-object v0
.end method

.method protected updateRotator(Lorg/ejml/data/DMatrixRMaj;IIDD)V
    .locals 14

    move-object v0, p1

    move-wide/from16 v1, p6

    .line 380
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v3, v3, p2

    .line 381
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int v4, v4, p3

    .line 392
    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v5, v3

    :goto_0
    if-eq v3, v5, :cond_0

    .line 394
    invoke-virtual {p1, v3}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v6

    .line 395
    invoke-virtual {p1, v4}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v8

    mul-double v10, p4, v6

    mul-double v12, v1, v8

    add-double/2addr v10, v12

    .line 396
    invoke-virtual {p1, v3, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    neg-double v10, v1

    mul-double/2addr v10, v6

    mul-double v6, p4, v8

    add-double/2addr v10, v6

    .line 397
    invoke-virtual {p1, v4, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

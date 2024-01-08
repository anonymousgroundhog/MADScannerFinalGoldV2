.class public Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;
.super Ljava/lang/Object;
.source "SvdImplicitQrAlgorithm_FDRM.java"


# static fields
.field private static final giveUpOnKnown:I = 0xa


# instance fields
.field protected N:I

.field protected Ut:Lorg/ejml/data/FMatrixRMaj;

.field protected Vt:Lorg/ejml/data/FMatrixRMaj;

.field bulge:F

.field c:F

.field protected diag:[F

.field protected eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

.field private exceptionalThresh:I

.field private fastValues:Z

.field private findingZeros:Z

.field followScript:Z

.field private maxIterations:I

.field protected maxValue:F

.field protected nextExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[F

.field protected rand:Ljava/util/Random;

.field s:F

.field protected splits:[I

.field steps:I

.field protected totalSteps:I

.field private values:[F

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->rand:Ljava/util/Random;

    .line 75
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    const/16 v0, 0xf

    .line 101
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    .line 102
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxIterations:I

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->fastValues:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->rand:Ljava/util/Random;

    .line 75
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    const/16 v0, 0xf

    .line 101
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    .line 102
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxIterations:I

    .line 125
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->fastValues:Z

    return-void
.end method

.method private computeBulgeScale()F
    .locals 3

    .line 404
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    aget v0, v0, v1

    .line 405
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v1, v2, v1

    .line 407
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private performDynamicStep()V
    .locals 3

    .line 270
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->findingZeros:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 272
    iput-boolean v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->findingZeros:Z

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeBulgeScale()F

    move-result v0

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p0, v0, v2, v1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performImplicitSingleStep(FFZ)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeBulgeScale()F

    move-result v0

    .line 284
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->selectWilkinsonShift(F)F

    move-result v2

    .line 286
    invoke-virtual {p0, v0, v2, v1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performImplicitSingleStep(FFZ)V

    :goto_0
    return-void
.end method

.method private performScriptedStep()V
    .locals 4

    .line 295
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeBulgeScale()F

    move-result v0

    .line 296
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 298
    iput-boolean v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->followScript:Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->values:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    aget v1, v1, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v1

    .line 302
    invoke-virtual {p0, v0, v1, v3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performImplicitSingleStep(FFZ)V

    :goto_0
    return-void
.end method

.method private pushRight(I)V
    .locals 4

    .line 667
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->isOffZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->rotatorPushRight(I)V

    .line 673
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 674
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x2

    .line 675
    invoke-direct {p0, p1, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->rotatorPushRight2(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rotatorPushRight(I)V
    .locals 8

    .line 684
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v0, v0, p1

    .line 685
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v5, p1, 0x1

    aget v1, v1, v5

    neg-float v2, v0

    .line 687
    invoke-virtual {p0, v1, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeRotator(FF)V

    .line 690
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 691
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    mul-float/2addr v1, v6

    iget v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    mul-float/2addr v0, v7

    sub-float/2addr v1, v0

    aput v1, v4, v5

    add-int/lit8 v0, p1, 0x2

    .line 693
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 694
    aget v0, v2, v5

    mul-float v1, v0, v6

    .line 695
    aput v1, v2, v5

    mul-float/2addr v0, v7

    .line 696
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    goto :goto_0

    .line 698
    :cond_0
    iput v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    .line 709
    :goto_0
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v3, :cond_1

    move-object v2, p0

    move v4, p1

    .line 710
    invoke-virtual/range {v2 .. v7}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V

    :cond_1
    return-void
.end method

.method private rotatorPushRight2(II)V
    .locals 8

    .line 723
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    .line 724
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int v5, p1, p2

    aget p2, v1, v5

    neg-float v1, v0

    .line 726
    invoke-virtual {p0, p2, v1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeRotator(FF)V

    .line 728
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    mul-float/2addr p2, v6

    iget v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    mul-float/2addr v0, v7

    sub-float/2addr p2, v0

    aput p2, v1, v5

    .line 730
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    add-int/lit8 p2, p2, -0x1

    if-ge v5, p2, :cond_0

    .line 731
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v0, p2, v5

    mul-float v1, v0, v6

    .line 732
    aput v1, p2, v5

    mul-float/2addr v0, v7

    .line 733
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    .line 744
    :cond_0
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v3, :cond_1

    move-object v2, p0

    move v4, p1

    .line 745
    invoke-virtual/range {v2 .. v7}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _process()Z
    .locals 5

    .line 224
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    if-ltz v0, :cond_6

    .line 228
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxIterations:I

    if-le v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 232
    :cond_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    if-ne v3, v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->resetSteps()V

    .line 237
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->nextSplit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 239
    :cond_2
    iget-boolean v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->fastValues:Z

    if-eqz v4, :cond_3

    sub-int/2addr v0, v3

    if-ne v0, v1, :cond_3

    .line 241
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->resetSteps()V

    .line 242
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenBB_2x2(I)V

    .line 243
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    invoke-virtual {p0, v0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setSubmatrix(II)V

    goto :goto_0

    .line 244
    :cond_3
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->nextExceptional:I

    if-lt v2, v0, :cond_4

    .line 245
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionShift()V

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->checkForAndHandleZeros()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->followScript:Z

    if-eqz v0, :cond_5

    .line 250
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performScriptedStep()V

    goto :goto_0

    .line 252
    :cond_5
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performDynamicStep()V

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method protected checkForAndHandleZeros()Z
    .locals 5

    .line 638
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    if-lt v0, v2, :cond_1

    .line 639
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->isOffZero(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->resetSteps()V

    .line 642
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->splits:[I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    aput v0, v2, v3

    add-int/2addr v0, v1

    .line 643
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 649
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    sub-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    if-lt v0, v2, :cond_3

    .line 650
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->isDiagonalZero(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->pushRight(I)V

    .line 653
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->resetSteps()V

    .line 654
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->splits:[I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    aput v0, v2, v3

    add-int/2addr v0, v1

    .line 655
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected computeRotator(FF)V
    .locals 4

    .line 471
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    div-float/2addr p1, p2

    mul-float p2, p1, p1

    add-float/2addr p2, v1

    float-to-double v2, p2

    .line 474
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    div-float/2addr v1, p2

    .line 475
    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    div-float/2addr p1, p2

    .line 476
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    goto :goto_0

    :cond_0
    div-float/2addr p2, p1

    mul-float p1, p2, p2

    add-float/2addr p1, v1

    float-to-double v2, p1

    .line 479
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr v1, p1

    .line 480
    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    div-float/2addr p2, p1

    .line 481
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    :goto_0
    return-void
.end method

.method protected createBulge(IFFZ)V
    .locals 9

    .line 420
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget v1, v0, p1

    .line 421
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v2, v2, p1

    add-int/lit8 v6, p1, 0x1

    .line 422
    aget v0, v0, v6

    if-eqz p4, :cond_0

    float-to-double p2, p2

    .line 425
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p4, v3

    iput p4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    .line 426
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    goto :goto_0

    :cond_0
    div-float p4, v1, p3

    mul-float v3, p4, p4

    sub-float/2addr v3, p2

    div-float p2, v2, p3

    mul-float/2addr p2, p4

    mul-float p3, v3, v3

    mul-float p4, p2, p2

    add-float/2addr p3, p4

    float-to-double p3, p3

    .line 432
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    div-float/2addr v3, p3

    .line 434
    iput v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    div-float/2addr p2, p3

    .line 435
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    .line 439
    :goto_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    mul-float p3, v1, v7

    iget v8, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    mul-float p4, v2, v8

    add-float/2addr p3, p4

    aput p3, p2, p1

    .line 440
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    mul-float/2addr v2, v7

    mul-float/2addr v1, v8

    sub-float/2addr v2, v1

    aput v2, p3, p1

    mul-float p3, v0, v7

    .line 441
    aput p3, p2, v6

    mul-float/2addr v0, v8

    .line 442
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    .line 451
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v4, :cond_1

    move-object v3, p0

    move v5, p1

    .line 452
    invoke-virtual/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V

    :cond_1
    return-void
.end method

.method protected eigenBB_2x2(I)V
    .locals 8

    .line 601
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget v1, v0, p1

    .line 602
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v2, v2, p1

    add-int/lit8 v3, p1, 0x1

    .line 603
    aget v0, v0, v3

    .line 606
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 607
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 608
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v7, v4, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    cmpl-float v5, v6, v4

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const/4 v4, 0x0

    cmpl-float v5, v6, v4

    if-nez v5, :cond_2

    return-void

    :cond_2
    div-float/2addr v1, v6

    div-float/2addr v2, v6

    div-float/2addr v0, v6

    .line 622
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    mul-float v7, v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    invoke-virtual {v5, v7, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->symm2x2_fast(FFF)V

    .line 624
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aput v4, v0, p1

    .line 625
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v6

    aput v1, v0, p1

    .line 626
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    .line 627
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    mul-float/2addr p1, v6

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p1, v1

    aput p1, v0, v3

    return-void
.end method

.method public exceptionShift()V
    .locals 5

    .line 759
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numExceptional:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numExceptional:I

    const v2, 0x3d4ccccd    # 0.05f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 763
    sget v3, Lorg/ejml/UtilEjml;->F_PI:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    mul-float/2addr v3, v2

    mul-float/2addr v3, v0

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, v0, v3, v1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->performImplicitSingleStep(FFZ)V

    .line 767
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionalThresh:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->nextExceptional:I

    return-void
.end method

.method public getDiag()[F
    .locals 1

    .line 800
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 808
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    return v0
.end method

.method public getNumberOfSingularValues()I
    .locals 1

    .line 784
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    return v0
.end method

.method public getOff()[F
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    return-object v0
.end method

.method public getSingularValue(I)F
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget p1, v0, p1

    return p1
.end method

.method public getSingularValues()[F
    .locals 1

    .line 796
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    return-object v0
.end method

.method public getUt()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getVt()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public incrementSteps()V
    .locals 1

    .line 307
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    .line 308
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->totalSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->totalSteps:I

    return-void
.end method

.method public initParam(II)V
    .locals 0

    if-gt p2, p1, :cond_2

    .line 188
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    .line 190
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->splits:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-ge p1, p2, :cond_1

    .line 191
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->splits:[I

    :cond_1
    const/4 p1, 0x0

    .line 194
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    add-int/lit8 p2, p2, -0x1

    .line 195
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    .line 197
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    .line 198
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->totalSteps:I

    .line 199
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    .line 200
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numExceptional:I

    .line 201
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionalThresh:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->nextExceptional:I

    return-void

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Must be a square or tall matrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDiagonalZero(I)Z
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 322
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOffZero(I)Z
    .locals 3

    .line 312
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 314
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

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

    .line 336
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->splits:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numSplits:I

    aget v4, v2, v0

    iput v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v3

    .line 340
    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    goto :goto_0

    .line 342
    :cond_1
    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    :goto_0
    return v3
.end method

.method public performImplicitSingleStep(FFZ)V
    .locals 1

    .line 355
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->createBulge(IFFZ)V

    .line 357
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    if-ge p1, p2, :cond_1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 358
    invoke-virtual {p0, p1, p3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->removeBulgeLeft(IZ)V

    .line 359
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->removeBulgeRight(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    :goto_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 365
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    sub-int/2addr p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->removeBulgeLeft(IZ)V

    .line 367
    :cond_2
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->incrementSteps()V

    return-void
.end method

.method public printMatrix()V
    .locals 5

    .line 771
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Off Diag[ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 772
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "%5.2ff "

    if-ge v1, v2, :cond_0

    .line 773
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 776
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 777
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 778
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public process()Z
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->followScript:Z

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->findingZeros:Z

    .line 208
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->_process()Z

    move-result v0

    return v0
.end method

.method public process([F)Z
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->followScript:Z

    .line 216
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->values:[F

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->findingZeros:Z

    .line 219
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->_process()Z

    move-result p1

    return p1
.end method

.method protected removeBulgeLeft(IZ)V
    .locals 9

    .line 486
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    aget v1, v0, p1

    .line 487
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v2, v2, p1

    add-int/lit8 v6, p1, 0x1

    .line 488
    aget v0, v0, v6

    .line 490
    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    invoke-virtual {p0, v1, v3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeRotator(FF)V

    .line 493
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    mul-float/2addr v1, v7

    iget v8, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    mul-float/2addr v4, v8

    add-float/2addr v1, v4

    aput v1, v3, p1

    .line 494
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    mul-float v4, v7, v2

    mul-float v5, v8, v0

    add-float/2addr v4, v5

    aput v4, v1, p1

    mul-float/2addr v0, v7

    mul-float/2addr v2, v8

    sub-float/2addr v0, v2

    .line 495
    aput v0, v3, v6

    if-eqz p2, :cond_0

    .line 498
    aget p2, v1, v6

    mul-float v0, v8, p2

    .line 499
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    mul-float/2addr p2, v7

    .line 500
    aput p2, v1, v6

    .line 510
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v4, :cond_1

    move-object v3, p0

    move v5, p1

    .line 511
    invoke-virtual/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V

    :cond_1
    return-void
.end method

.method protected removeBulgeRight(I)V
    .locals 9

    .line 521
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    aget v1, v0, p1

    .line 522
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v5, p1, 0x1

    aget v2, v2, v5

    .line 523
    aget v0, v0, v5

    .line 525
    iget v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    invoke-virtual {p0, v1, v3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->computeRotator(FF)V

    .line 528
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->c:F

    mul-float/2addr v1, v7

    iget v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->s:F

    mul-float/2addr v4, v8

    add-float/2addr v1, v4

    aput v1, v3, p1

    .line 529
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    mul-float v4, v2, v7

    mul-float v6, v0, v8

    add-float/2addr v4, v6

    aput v4, v1, v5

    neg-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v0, v7

    add-float/2addr v2, v0

    .line 530
    aput v2, v3, v5

    add-int/lit8 v6, p1, 0x2

    .line 532
    aget p1, v1, v6

    mul-float v0, p1, v7

    .line 533
    aput v0, v1, v6

    mul-float/2addr p1, v8

    .line 534
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->bulge:F

    .line 543
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 544
    invoke-virtual/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V

    :cond_0
    return-void
.end method

.method public resetSteps()V
    .locals 2

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->steps:I

    .line 327
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->exceptionalThresh:I

    iput v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->nextExceptional:I

    .line 328
    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->numExceptional:I

    return-void
.end method

.method public selectWilkinsonShift(F)F
    .locals 6

    .line 569
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 570
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    div-float/2addr v3, p1

    .line 571
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    add-int/lit8 v5, v0, -0x2

    aget v5, v4, v5

    div-float/2addr v5, p1

    .line 572
    aget v1, v1, v0

    div-float/2addr v1, p1

    sub-int/2addr v0, v2

    .line 573
    aget v0, v4, v0

    div-float/2addr v0, p1

    mul-float/2addr v5, v5

    mul-float p1, v3, v3

    add-float/2addr v5, p1

    mul-float p1, v0, v0

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    .line 578
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    mul-float/2addr v0, v3

    invoke-virtual {v1, v5, v0, p1}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->symm2x2_fast(FFF)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    div-float/2addr v2, p1

    .line 581
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    div-float/2addr v3, p1

    .line 582
    aget v0, v1, v0

    div-float/2addr v0, p1

    mul-float p1, v2, v2

    mul-float v1, v3, v3

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    .line 587
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    mul-float/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->symm2x2_fast(FFF)V

    move p1, v0

    .line 591
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget v0, v0, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 592
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 594
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    :goto_1
    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    return p1
.end method

.method public setFastValues(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->fastValues:Z

    return-void
.end method

.method public setMatrix(II[F[F)V
    .locals 2

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->initParam(II)V

    .line 151
    iput-object p3, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    .line 152
    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    const/4 p1, 0x0

    .line 154
    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    const/4 p1, 0x1

    .line 155
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->N:I

    if-ge p1, p2, :cond_2

    .line 156
    aget p2, p3, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-int/lit8 v0, p1, -0x1

    .line 157
    aget v0, p4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 159
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 160
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    .line 162
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    .line 163
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMaxValue(F)V
    .locals 0

    .line 181
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->maxValue:F

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    .line 554
    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x1:I

    .line 555
    iput p2, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->x2:I

    return-void
.end method

.method public setUt(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public setVt(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public swapDiag([F)[F
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    .line 170
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->diag:[F

    return-object v0
.end method

.method public swapOff([F)[F
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    .line 176
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->off:[F

    return-object v0
.end method

.method protected updateRotator(Lorg/ejml/data/FMatrixRMaj;IIFF)V
    .locals 5

    .line 382
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p2, v0

    .line 383
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p3, v0

    .line 394
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v0, p2

    :goto_0
    if-eq p2, v0, :cond_0

    .line 396
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v1

    .line 397
    invoke-virtual {p1, p3}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v2

    mul-float v3, p4, v1

    mul-float v4, p5, v2

    add-float/2addr v3, v4

    .line 398
    invoke-virtual {p1, p2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    neg-float v3, p5

    mul-float/2addr v3, v1

    mul-float/2addr v2, p4

    add-float/2addr v3, v2

    .line 399
    invoke-virtual {p1, p3, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

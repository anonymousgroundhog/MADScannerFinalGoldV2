.class public Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;
.super Ljava/lang/Object;
.source "SymmetricQREigenHelper_FDRM.java"


# instance fields
.field protected N:I

.field protected Q:Lorg/ejml/data/FMatrixRMaj;

.field private bulge:F

.field private c:F

.field private c2:F

.field private cs:F

.field protected diag:[F

.field protected eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

.field protected lastExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[F

.field protected rand:Ljava/util/Random;

.field private s:F

.field private s2:F

.field protected splits:[I

.field protected steps:I

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->rand:Ljava/util/Random;

    .line 51
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    .line 59
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    .line 61
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 78
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->splits:[I

    return-void
.end method

.method private computeRotation(FF)V
    .locals 4

    .line 310
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    div-float/2addr p1, p2

    mul-float p2, p1, p1

    add-float v0, p2, v1

    float-to-double v2, v0

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v3, v1, v0

    .line 316
    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    div-float/2addr p2, v0

    .line 317
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    div-float p2, p1, v0

    .line 318
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    div-float/2addr v1, v2

    .line 319
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    div-float/2addr p1, v2

    .line 320
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    goto :goto_0

    :cond_0
    div-float/2addr p2, p1

    mul-float p1, p2, p2

    add-float v0, p1, v1

    float-to-double v2, v0

    .line 325
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v3, v1, v0

    .line 327
    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    div-float/2addr p1, v0

    .line 328
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    div-float p1, p2, v0

    .line 329
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    div-float/2addr v1, v2

    .line 330
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    div-float/2addr p2, v2

    .line 331
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    :goto_0
    return-void
.end method


# virtual methods
.method public computeShift()F
    .locals 3

    .line 447
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 448
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeWilkinsonShift()F

    move-result v0

    return v0

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v0, v1, v0

    return v0
.end method

.method public computeWilkinsonShift()F
    .locals 7

    .line 454
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 455
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    .line 456
    aget v0, v0, v1

    .line 459
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 460
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 461
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v1, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    cmpl-float v4, v5, v1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_3

    div-float/2addr v2, v5

    div-float/2addr v3, v5

    div-float/2addr v0, v5

    .line 476
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->symm2x2_fast(FFF)V

    .line 479
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 480
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 483
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget v0, v0, Lorg/ejml/data/Complex_F32;->real:F

    :goto_2
    mul-float/2addr v5, v0

    return v5

    .line 485
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget v0, v0, Lorg/ejml/data/Complex_F32;->real:F

    goto :goto_2

    .line 467
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this should never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyDiag([F)[F
    .locals 3

    if-eqz p1, :cond_0

    .line 163
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 164
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    new-array p1, p1, [F

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyEigenvalues([F)[F
    .locals 3

    if-eqz p1, :cond_0

    .line 183
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 184
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    new-array p1, p1, [F

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyOff([F)[F
    .locals 3

    if-eqz p1, :cond_0

    .line 173
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 174
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [F

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected createBulge(IFZ)V
    .locals 10

    .line 250
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 251
    aget v0, v0, v2

    .line 252
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v4, v3, p1

    .line 253
    aget v3, v3, v2

    if-eqz p3, :cond_0

    float-to-double p2, p2

    .line 256
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    .line 257
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    .line 259
    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    mul-float v5, p3, p3

    iput v5, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v5, p2, p2

    .line 260
    iput v5, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float/2addr p3, p2

    .line 261
    iput p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    goto :goto_0

    :cond_0
    sub-float p2, v1, p2

    .line 263
    invoke-direct {p0, p2, v4}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeRotation(FF)V

    .line 267
    :goto_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v5, p3, v1

    iget v6, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    iget v8, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float v9, v8, v0

    add-float/2addr v5, v9

    aput v5, p2, p1

    mul-float v5, p3, v0

    mul-float/2addr v7, v6

    mul-float/2addr v7, v4

    sub-float/2addr v5, v7

    mul-float v7, v8, v1

    add-float/2addr v5, v7

    .line 268
    aput v5, p2, v2

    .line 269
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    sub-float/2addr p3, v8

    mul-float/2addr v4, p3

    sub-float/2addr v0, v1

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    aput v4, p2, p1

    .line 270
    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    mul-float v0, p3, v3

    aput v0, p2, v2

    .line 271
    iget p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    mul-float/2addr v3, p2

    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    .line 273
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0, p1, v2, p3, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->updateQ(IIFF)V

    :cond_1
    return-void
.end method

.method protected createBulge2by2(IFZ)V
    .locals 9

    .line 278
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 279
    aget v0, v0, v2

    .line 280
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v3, v3, p1

    if-eqz p3, :cond_0

    float-to-double p2, p2

    .line 283
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    .line 284
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    .line 286
    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    mul-float v4, p3, p3

    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v4, p2, p2

    .line 287
    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float/2addr p3, p2

    .line 288
    iput p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    goto :goto_0

    :cond_0
    sub-float p2, v1, p2

    .line 290
    invoke-direct {p0, p2, v3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeRotation(FF)V

    .line 294
    :goto_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v4, p3, v1

    iget v5, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    iget v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float v8, v7, v0

    add-float/2addr v4, v8

    aput v4, p2, p1

    mul-float v4, p3, v0

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    mul-float v6, v7, v1

    add-float/2addr v4, v6

    .line 295
    aput v4, p2, v2

    .line 296
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    sub-float/2addr p3, v7

    mul-float/2addr v3, p3

    sub-float/2addr v0, v1

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    aput v3, p2, p1

    .line 298
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz p2, :cond_1

    .line 299
    iget p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    iget p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    invoke-virtual {p0, p1, v2, p2, p3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->updateQ(IIFF)V

    :cond_1
    return-void
.end method

.method protected eigenvalue2by2(I)V
    .locals 8

    .line 381
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v1, v0, p1

    .line 382
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v2, v2, p1

    add-int/lit8 v3, p1, 0x1

    .line 383
    aget v0, v0, v3

    .line 386
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 387
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 388
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

    .line 396
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aput v4, v0, p1

    .line 397
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aput v4, v0, p1

    .line 398
    aput v4, v0, v3

    return-void

    :cond_2
    div-float/2addr v1, v6

    div-float/2addr v2, v6

    div-float/2addr v0, v6

    .line 406
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-virtual {v5, v1, v2, v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->symm2x2_fast(FFF)V

    .line 408
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aput v4, v0, p1

    .line 409
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v1, v6

    aput v1, v0, p1

    .line 410
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget v0, v0, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v6, v0

    aput v6, p1, v3

    return-void
.end method

.method public exceptionalShift()V
    .locals 4

    .line 420
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numExceptional:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numExceptional:I

    const v2, 0x3d4ccccd    # 0.05f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    .line 424
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 425
    invoke-virtual {p0, v2, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->performImplicitSingleStep(FZ)V

    .line 427
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->lastExceptional:I

    return-void
.end method

.method public getMatrixSize()I
    .locals 1

    .line 489
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    return v0
.end method

.method public incrementSteps()V
    .locals 1

    .line 99
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    return-void
.end method

.method public init([F[FI)V
    .locals 0

    .line 112
    invoke-virtual {p0, p3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->reset(I)V

    .line 114
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    .line 115
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    return-void
.end method

.method protected isZero(I)Z
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 209
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

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

    .line 435
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numSplits:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 437
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->splits:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numSplits:I

    aget v4, v2, v0

    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v3

    .line 439
    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    goto :goto_0

    .line 441
    :cond_1
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    :goto_0
    return v3
.end method

.method protected performImplicitSingleStep(FZ)V
    .locals 3

    .line 213
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 214
    invoke-virtual {p0, v1, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->createBulge2by2(IFZ)V

    goto :goto_1

    .line 216
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->createBulge(IFZ)V

    .line 218
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    add-int/lit8 v0, p2, -0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->removeBulge(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2

    add-int/lit8 p2, p2, -0x2

    .line 222
    invoke-virtual {p0, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->removeBulgeEnd(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public printMatrix()V
    .locals 5

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Off Diag[ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "%5.2ff "

    if-ge v1, v2, :cond_0

    .line 84
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 88
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 89
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method protected removeBulge(I)V
    .locals 14

    .line 336
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    add-int/lit8 v1, p1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, p1, 0x2

    .line 337
    aget v0, v0, v3

    .line 338
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v5, v4, p1

    .line 339
    aget v6, v4, v1

    .line 340
    aget v4, v4, v3

    .line 342
    iget v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    invoke-direct {p0, v5, v7}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeRotation(FF)V

    .line 345
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v9, v8, v2

    iget v10, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v10, v11

    mul-float/2addr v12, v6

    add-float/2addr v9, v12

    iget v12, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float v13, v12, v0

    add-float/2addr v9, v13

    aput v9, v7, v1

    mul-float v9, v8, v0

    mul-float/2addr v11, v10

    mul-float/2addr v11, v6

    sub-float/2addr v9, v11

    mul-float v11, v12, v2

    add-float/2addr v9, v11

    .line 346
    aput v9, v7, v3

    .line 347
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    iget v9, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    mul-float/2addr v5, v9

    iget v11, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    iget v13, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    mul-float/2addr v13, v11

    add-float/2addr v5, v13

    aput v5, v7, p1

    sub-float/2addr v8, v12

    mul-float/2addr v6, v8

    sub-float/2addr v0, v2

    mul-float/2addr v10, v0

    add-float/2addr v6, v10

    .line 348
    aput v6, v7, v1

    mul-float p1, v9, v4

    .line 349
    aput p1, v7, v3

    mul-float/2addr v4, v11

    .line 350
    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    .line 352
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0, v1, v3, v9, v11}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->updateQ(IIFF)V

    :cond_0
    return-void
.end method

.method protected removeBulgeEnd(I)V
    .locals 13

    .line 360
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    add-int/lit8 v1, p1, 0x1

    aget v2, v0, v1

    .line 361
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    aget v4, v3, p1

    .line 362
    aget v3, v3, v1

    add-int/lit8 v5, p1, 0x2

    .line 363
    aget v0, v0, v5

    .line 365
    iget v6, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    invoke-direct {p0, v4, v6}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->computeRotation(FF)V

    .line 368
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c2:F

    mul-float v8, v7, v2

    iget v9, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->cs:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v9, v10

    mul-float/2addr v11, v3

    add-float/2addr v8, v11

    iget v11, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s2:F

    mul-float v12, v11, v0

    add-float/2addr v8, v12

    aput v8, v6, v1

    mul-float v8, v7, v0

    mul-float/2addr v10, v9

    mul-float/2addr v10, v3

    sub-float/2addr v8, v10

    mul-float v10, v11, v2

    add-float/2addr v8, v10

    .line 369
    aput v8, v6, v5

    .line 370
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->c:F

    mul-float/2addr v4, v8

    iget v10, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->s:F

    iget v12, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->bulge:F

    mul-float/2addr v12, v10

    add-float/2addr v4, v12

    aput v4, v6, p1

    sub-float/2addr v7, v11

    mul-float/2addr v3, v7

    sub-float/2addr v0, v2

    mul-float/2addr v9, v0

    add-float/2addr v3, v9

    .line 371
    aput v3, v6, v1

    .line 373
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p0, v1, v5, v8, v10}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->updateQ(IIFF)V

    :cond_0
    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 143
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    .line 145
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    .line 146
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    .line 148
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->splits:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 149
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->splits:[I

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numSplits:I

    .line 154
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    add-int/lit8 p1, p1, -0x1

    .line 155
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    .line 157
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->lastExceptional:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->numExceptional:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public resetSteps()V
    .locals 1

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->steps:I

    .line 494
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->lastExceptional:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    .line 199
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x1:I

    .line 200
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->x2:I

    return-void
.end method

.method public swapDiag([F)[F
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    .line 123
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->diag:[F

    return-object v0
.end method

.method public swapOff([F)[F
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    .line 133
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->off:[F

    return-object v0
.end method

.method protected updateQ(IIFF)V
    .locals 7

    .line 228
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->N:I

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 239
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v1, v1, p1

    .line 240
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v2, v2, p2

    .line 241
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v4, p1, 0x1

    mul-float v5, p3, v1

    mul-float v6, p4, v2

    add-float/2addr v5, v6

    aput v5, v3, p1

    .line 242
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v3, p2, 0x1

    neg-float v5, p4

    mul-float/2addr v5, v1

    mul-float/2addr v2, p3

    add-float/2addr v5, v2

    aput v5, p1, p2

    move p2, v3

    move p1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

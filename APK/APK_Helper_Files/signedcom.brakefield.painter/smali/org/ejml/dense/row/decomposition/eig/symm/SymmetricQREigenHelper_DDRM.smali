.class public Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;
.super Ljava/lang/Object;
.source "SymmetricQREigenHelper_DDRM.java"


# instance fields
.field protected N:I

.field protected Q:Lorg/ejml/data/DMatrixRMaj;

.field private bulge:D

.field private c:D

.field private c2:D

.field private cs:D

.field protected diag:[D

.field protected eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

.field protected lastExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[D

.field protected rand:Ljava/util/Random;

.field private s:D

.field private s2:D

.field protected splits:[I

.field protected steps:I

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->rand:Ljava/util/Random;

    .line 49
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    .line 57
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    .line 59
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 76
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->splits:[I

    return-void
.end method

.method private computeRotation(DD)V
    .locals 9

    .line 308
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_0

    div-double/2addr p1, p3

    mul-double p3, p1, p1

    add-double v3, p3, v1

    .line 312
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v7, v1, v3

    .line 314
    iput-wide v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    div-double/2addr p3, v3

    .line 315
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    div-double p3, p1, v3

    .line 316
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    div-double/2addr v1, v5

    .line 317
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    div-double/2addr p1, v5

    .line 318
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    goto :goto_0

    :cond_0
    div-double/2addr p3, p1

    mul-double p1, p3, p3

    add-double v3, p1, v1

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v7, v1, v3

    .line 325
    iput-wide v7, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    div-double/2addr p1, v3

    .line 326
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    div-double p1, p3, v3

    .line 327
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    div-double/2addr v1, v5

    .line 328
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    div-double/2addr p3, v5

    .line 329
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    :goto_0
    return-void
.end method


# virtual methods
.method public computeShift()D
    .locals 3

    .line 445
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 446
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeWilkinsonShift()D

    move-result-wide v0

    return-wide v0

    .line 448
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method public computeWilkinsonShift()D
    .locals 20

    move-object/from16 v0, p0

    .line 452
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget v2, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    .line 453
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    .line 454
    aget-wide v1, v1, v2

    .line 457
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 459
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v13, v7, v9

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v9

    :goto_0
    cmpl-double v9, v11, v7

    if-lez v9, :cond_1

    goto :goto_1

    :cond_1
    move-wide v11, v7

    :goto_1
    const-wide/16 v7, 0x0

    cmpl-double v7, v11, v7

    if-eqz v7, :cond_3

    div-double v14, v3, v11

    div-double v16, v5, v11

    div-double/2addr v1, v11

    .line 474
    iget-object v13, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    move-wide/from16 v18, v1

    invoke-virtual/range {v13 .. v19}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->symm2x2_fast(DDD)V

    .line 477
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 478
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v5, v5, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v5, v5, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v3, v1

    if-gez v1, :cond_2

    .line 481
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    :goto_2
    mul-double/2addr v11, v1

    return-wide v11

    .line 483
    :cond_2
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    goto :goto_2

    .line 465
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "this should never happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyDiag([D)[D
    .locals 3

    if-eqz p1, :cond_0

    .line 161
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 162
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    new-array p1, p1, [D

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyEigenvalues([D)[D
    .locals 3

    if-eqz p1, :cond_0

    .line 181
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 182
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    new-array p1, p1, [D

    .line 185
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyOff([D)[D
    .locals 3

    if-eqz p1, :cond_0

    .line 171
    array-length v0, p1

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 172
    :cond_0
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [D

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected createBulge(IDZ)V
    .locals 24

    move-object/from16 v7, p0

    .line 248
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 249
    aget-wide v4, v0, v3

    .line 250
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v8, v0, p1

    .line 251
    aget-wide v10, v0, v3

    if-eqz p4, :cond_0

    .line 254
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    iput-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    .line 255
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iput-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    .line 257
    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    move-wide/from16 v16, v10

    mul-double v10, v14, v14

    iput-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v10, v12, v12

    .line 258
    iput-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double/2addr v14, v12

    .line 259
    iput-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v10

    sub-double v10, v1, p2

    .line 261
    invoke-direct {v7, v10, v11, v8, v9}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeRotation(DD)V

    .line 265
    :goto_0
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v12, v10, v1

    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v20, v14, v18

    mul-double v20, v20, v8

    add-double v12, v12, v20

    move-wide/from16 v20, v1

    iget-wide v1, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double v22, v1, v4

    add-double v12, v12, v22

    aput-wide v12, v0, p1

    mul-double v12, v10, v4

    mul-double v18, v18, v14

    mul-double v18, v18, v8

    sub-double v12, v12, v18

    mul-double v18, v1, v20

    add-double v12, v12, v18

    .line 266
    aput-wide v12, v0, v3

    .line 267
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    sub-double/2addr v10, v1

    mul-double/2addr v8, v10

    sub-double v4, v4, v20

    mul-double/2addr v14, v4

    add-double/2addr v8, v14

    aput-wide v8, v0, p1

    .line 268
    iget-wide v4, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    mul-double v10, v4, v16

    aput-wide v10, v0, v3

    .line 269
    iget-wide v8, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    mul-double v10, v8, v16

    iput-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    .line 271
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v3

    move-wide v3, v4

    move-wide v5, v8

    .line 272
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->updateQ(IIDD)V

    :cond_1
    return-void
.end method

.method protected createBulge2by2(IDZ)V
    .locals 22

    move-object/from16 v7, p0

    .line 276
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 277
    aget-wide v4, v0, v3

    .line 278
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v8, v0, p1

    if-eqz p4, :cond_0

    .line 281
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iput-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    .line 282
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iput-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    .line 284
    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    mul-double v14, v12, v12

    iput-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v14, v10, v10

    .line 285
    iput-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double/2addr v12, v10

    .line 286
    iput-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    goto :goto_0

    :cond_0
    sub-double v10, v1, p2

    .line 288
    invoke-direct {v7, v10, v11, v8, v9}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeRotation(DD)V

    .line 292
    :goto_0
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-wide v10, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v12, v10, v1

    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v14, v16

    mul-double v18, v18, v8

    add-double v12, v12, v18

    move-wide/from16 v18, v1

    iget-wide v1, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double v20, v1, v4

    add-double v12, v12, v20

    aput-wide v12, v0, p1

    mul-double v12, v10, v4

    mul-double v16, v16, v14

    mul-double v16, v16, v8

    sub-double v12, v12, v16

    mul-double v16, v1, v18

    add-double v12, v12, v16

    .line 293
    aput-wide v12, v0, v3

    .line 294
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    sub-double/2addr v10, v1

    mul-double/2addr v8, v10

    sub-double v4, v4, v18

    mul-double/2addr v14, v4

    add-double/2addr v8, v14

    aput-wide v8, v0, p1

    .line 296
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_1

    .line 297
    iget-wide v4, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    iget-wide v8, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v3

    move-wide v3, v4

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->updateQ(IIDD)V

    :cond_1
    return-void
.end method

.method protected eigenvalue2by2(I)V
    .locals 22

    move-object/from16 v0, p0

    .line 379
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v2, v1, p1

    .line 380
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v4, v4, p1

    add-int/lit8 v6, p1, 0x1

    .line 381
    aget-wide v7, v1, v6

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 385
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 386
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

    .line 394
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aput-wide v9, v1, p1

    .line 395
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aput-wide v9, v1, p1

    .line 396
    aput-wide v9, v1, v6

    return-void

    :cond_2
    div-double v16, v2, v13

    div-double v18, v4, v13

    div-double v20, v7, v13

    .line 404
    iget-object v15, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-virtual/range {v15 .. v21}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->symm2x2_fast(DDD)V

    .line 406
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aput-wide v9, v1, p1

    .line 407
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v13

    aput-wide v2, v1, p1

    .line 408
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->eigenSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v2, v2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v13, v2

    aput-wide v13, v1, v6

    return-void
.end method

.method public exceptionalShift()V
    .locals 8

    .line 418
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numExceptional:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numExceptional:I

    const-wide v2, 0x3fa999999999999aL    # 0.05

    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_0

    move-wide v4, v2

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    .line 423
    invoke-virtual {p0, v2, v3, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->performImplicitSingleStep(DZ)V

    .line 425
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->lastExceptional:I

    return-void
.end method

.method public getMatrixSize()I
    .locals 1

    .line 487
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    return v0
.end method

.method public incrementSteps()V
    .locals 1

    .line 97
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    return-void
.end method

.method public init([D[DI)V
    .locals 0

    .line 110
    invoke-virtual {p0, p3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->reset(I)V

    .line 112
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    .line 113
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    return-void
.end method

.method protected isZero(I)Z
    .locals 6

    .line 205
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 207
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

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

    .line 433
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numSplits:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 435
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->splits:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numSplits:I

    aget v4, v2, v0

    iput v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v3

    .line 437
    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    goto :goto_0

    .line 439
    :cond_1
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    :goto_0
    return v3
.end method

.method protected performImplicitSingleStep(DZ)V
    .locals 4

    .line 211
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 212
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->createBulge2by2(IDZ)V

    goto :goto_1

    .line 214
    :cond_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->createBulge(IDZ)V

    .line 216
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    add-int/lit8 p3, p2, -0x2

    const-wide/16 v0, 0x0

    if-ge p1, p3, :cond_1

    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    cmpl-double p3, v2, v0

    if-eqz p3, :cond_1

    .line 217
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->removeBulge(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_2

    add-int/lit8 p2, p2, -0x2

    .line 220
    invoke-virtual {p0, p2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->removeBulgeEnd(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public printMatrix()V
    .locals 6

    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Off Diag[ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 81
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "%5.2f "

    if-ge v1, v2, :cond_0

    .line 82
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 86
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method protected removeBulge(I)V
    .locals 27

    move-object/from16 v7, p0

    .line 334
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, v0, v1

    add-int/lit8 v4, p1, 0x2

    .line 335
    aget-wide v5, v0, v4

    .line 336
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v8, v0, p1

    .line 337
    aget-wide v10, v0, v1

    .line 338
    aget-wide v12, v0, v4

    .line 340
    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    invoke-direct {v7, v8, v9, v14, v15}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeRotation(DD)V

    .line 343
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v16, v14, v2

    move-wide/from16 v18, v12

    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v12, v20

    mul-double v22, v22, v10

    add-double v16, v16, v22

    move-wide/from16 v22, v8

    iget-wide v8, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double v24, v8, v5

    add-double v16, v16, v24

    aput-wide v16, v0, v1

    mul-double v16, v14, v5

    mul-double v20, v20, v12

    mul-double v20, v20, v10

    sub-double v16, v16, v20

    mul-double v20, v8, v2

    add-double v16, v16, v20

    .line 344
    aput-wide v16, v0, v4

    .line 345
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    move-wide/from16 v16, v12

    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    mul-double v20, v12, v22

    move-wide/from16 v22, v12

    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    move/from16 v24, v1

    move-wide/from16 v25, v2

    iget-wide v1, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    mul-double/2addr v1, v12

    add-double v20, v20, v1

    aput-wide v20, v0, p1

    sub-double/2addr v14, v8

    mul-double/2addr v10, v14

    sub-double v5, v5, v25

    mul-double v1, v16, v5

    add-double/2addr v10, v1

    .line 346
    aput-wide v10, v0, v24

    mul-double v1, v22, v18

    .line 347
    aput-wide v1, v0, v4

    mul-double v0, v12, v18

    .line 348
    iput-wide v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    .line 350
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v4

    move-wide/from16 v3, v22

    move-wide v5, v12

    .line 351
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->updateQ(IIDD)V

    :cond_0
    return-void
.end method

.method protected removeBulgeEnd(I)V
    .locals 25

    move-object/from16 v7, p0

    .line 358
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, v0, v1

    .line 359
    iget-object v4, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    aget-wide v5, v4, p1

    .line 360
    aget-wide v8, v4, v1

    add-int/lit8 v4, p1, 0x2

    .line 361
    aget-wide v10, v0, v4

    .line 363
    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    invoke-direct {v7, v5, v6, v12, v13}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->computeRotation(DD)V

    .line 366
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    iget-wide v12, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c2:D

    mul-double v14, v12, v2

    move-wide/from16 v16, v5

    iget-wide v5, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->cs:D

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v20, v5, v18

    mul-double v20, v20, v8

    add-double v14, v14, v20

    move-wide/from16 v20, v2

    iget-wide v2, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s2:D

    mul-double v22, v2, v10

    add-double v14, v14, v22

    aput-wide v14, v0, v1

    mul-double v14, v12, v10

    mul-double v18, v18, v5

    mul-double v18, v18, v8

    sub-double v14, v14, v18

    mul-double v18, v2, v20

    add-double v14, v14, v18

    .line 367
    aput-wide v14, v0, v4

    .line 368
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->c:D

    mul-double v16, v16, v14

    move-wide/from16 v18, v14

    iget-wide v14, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->s:D

    move/from16 v22, v4

    move-wide/from16 v23, v5

    iget-wide v4, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->bulge:D

    mul-double/2addr v4, v14

    add-double v16, v16, v4

    aput-wide v16, v0, p1

    sub-double/2addr v12, v2

    mul-double/2addr v8, v12

    sub-double v10, v10, v20

    mul-double v5, v23, v10

    add-double/2addr v8, v5

    .line 369
    aput-wide v8, v0, v1

    .line 371
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move-wide/from16 v3, v18

    move-wide v5, v14

    .line 372
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->updateQ(IIDD)V

    :cond_0
    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 141
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    .line 143
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    .line 144
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    .line 146
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->splits:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 147
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->splits:[I

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numSplits:I

    .line 152
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    add-int/lit8 p1, p1, -0x1

    .line 153
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    .line 155
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->lastExceptional:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->numExceptional:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public resetSteps()V
    .locals 1

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->steps:I

    .line 492
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->lastExceptional:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    .line 197
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x1:I

    .line 198
    iput p2, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->x2:I

    return-void
.end method

.method public swapDiag([D)[D
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    .line 121
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->diag:[D

    return-object v0
.end method

.method public swapOff([D)[D
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    .line 131
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->off:[D

    return-object v0
.end method

.method protected updateQ(IIDD)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    .line 226
    iget v3, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->N:I

    mul-int v4, p1, v3

    mul-int v5, p2, v3

    add-int/2addr v3, v4

    :goto_0
    if-ge v4, v3, :cond_0

    .line 237
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v4

    .line 238
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v8, v8, v5

    .line 239
    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v11, v4, 0x1

    mul-double v12, p3, v6

    mul-double v14, v1, v8

    add-double/2addr v12, v14

    aput-wide v12, v10, v4

    .line 240
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v10, v5, 0x1

    neg-double v12, v1

    mul-double/2addr v12, v6

    mul-double v6, p3, v8

    add-double/2addr v12, v6

    aput-wide v12, v4, v5

    move v5, v10

    move v4, v11

    goto :goto_0

    :cond_0
    return-void
.end method

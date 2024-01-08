.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigen_DDRM.java"


# instance fields
.field A:Lorg/ejml/data/DMatrixRMaj;

.field private N:I

.field public Q:Lorg/ejml/data/DMatrixRMaj;

.field protected _temp:Lorg/ejml/data/DMatrixRMaj;

.field checkHessenberg:Z

.field private checkOrthogonal:Z

.field private checkUncountable:Z

.field public createR:Z

.field eigenvalues:[Lorg/ejml/data/Complex_F64;

.field exceptionalThreshold:I

.field protected gamma:D

.field lastExceptional:I

.field maxIterations:I

.field private normalize:Z

.field numEigen:I

.field numExceptional:I

.field numStepsFind:[I

.field private printHumps:Z

.field private rand:Ljava/util/Random;

.field steps:I

.field private final temp:[D

.field protected u:Lorg/ejml/data/DMatrixRMaj;

.field private useCareful2x2:Z

.field private useStandardEq:Z

.field private valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2342

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rand:Ljava/util/Random;

    .line 64
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    const/16 v0, 0x9

    new-array v0, v0, [D

    .line 66
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->temp:[D

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    .line 69
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkHessenberg:Z

    .line 70
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    .line 71
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkUncountable:Z

    .line 73
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->useStandardEq:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->useCareful2x2:Z

    .line 76
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->normalize:Z

    const/16 v1, 0x14

    .line 80
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalThreshold:I

    mul-int/2addr v1, v1

    .line 81
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->maxIterations:I

    .line 83
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->createR:Z

    return-void
.end method

.method private addEigenvalue(D)V
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    aget-object v0, v0, v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/ejml/data/Complex_F64;->set(DD)V

    .line 98
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    .line 100
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    return-void
.end method

.method private addEigenvalue(DD)V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    aput v2, v0, v1

    .line 105
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/data/Complex_F64;->set(DD)V

    .line 106
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    .line 108
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    return-void
.end method

.method private performImplicitDoubleStep(IIDDD)V
    .locals 12

    move-object v11, p0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 282
    invoke-virtual/range {v0 .. v10}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeDoubleStepQn(IDDDDZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v1, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    const-string v7, "Bad"

    if-eqz v1, :cond_2

    .line 287
    iget-wide v2, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 288
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    if-eqz v0, :cond_2

    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->print()V

    .line 291
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->print()V

    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    :goto_0
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    const-string v8, "%12.3e"

    if-eqz v0, :cond_3

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v8}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    .line 299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pushing the hump off the matrix."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move v9, p1

    :goto_1
    add-int/lit8 v0, p2, -0x2

    const-string v10, " A = "

    if-ge v9, v0, :cond_7

    .line 304
    invoke-virtual {p0, v9}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeDoubleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v1, :cond_5

    .line 305
    iget-wide v2, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v9, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 306
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    if-eqz v0, :cond_5

    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 307
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_5
    :goto_2
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v0, :cond_6

    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v8}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 315
    :cond_7
    iget-boolean v1, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v1, :cond_8

    .line 316
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "removing last bump"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x1

    if-ltz v0, :cond_a

    .line 318
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeSingleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_a

    .line 319
    iget-wide v2, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p2, 0x1

    move-object p1, p0

    move-object p2, v0

    move-wide p3, v2

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 320
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    if-eqz v0, :cond_a

    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v2, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v2, v3}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 321
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_a
    :goto_3
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v0, :cond_b

    .line 324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v8}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    .line 329
    :cond_b
    iget-boolean v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkHessenberg:Z

    if-eqz v0, :cond_d

    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v2, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isUpperTriangle(Lorg/ejml/data/DMatrixRMaj;ID)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 330
    :cond_c
    iget-object v0, v11, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v8}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    return-void
.end method


# virtual methods
.method public addComputedEigen2x2(II)V
    .locals 10

    .line 574
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p2, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v6

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigen2by2_scale(DDDD)V

    .line 576
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkUncountable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide p1, p1, Lorg/ejml/data/Complex_F64;->real:D

    .line 577
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide p1, p1, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 p2, 0x0

    sget-object p2, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->PIbjSNQNtuOWJwa:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 581
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide p1, p1, Lorg/ejml/data/Complex_F64;->real:D

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v0, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenvalue(DD)V

    .line 582
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide p1, p1, Lorg/ejml/data/Complex_F64;->real:D

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v0, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v0, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenvalue(DD)V

    return-void
.end method

.method public addEigenAt(I)V
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenvalue(D)V

    return-void
.end method

.method public bulgeDoubleStepQn(I)Z
    .locals 12

    .line 383
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    .line 384
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    .line 385
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    .line 387
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v9, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v9, v0

    const/4 v11, 0x1

    move-object v1, p0

    .line 389
    invoke-virtual/range {v1 .. v11}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeDoubleStepQn(IDDDDZ)Z

    move-result p1

    return p1
.end method

.method public bulgeDoubleStepQn(IDDDDZ)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 396
    iget-boolean v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->normalize:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_4

    .line 397
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 398
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 399
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v2, v8, v10

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v8, v10

    :goto_0
    cmpl-double v2, v12, v8

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v12, v8

    :goto_1
    cmpg-double v2, v12, p8

    if-gtz v2, :cond_3

    if-eqz p10, :cond_2

    .line 407
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v1, v3, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 408
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4, v3, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 409
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1, v3, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_2
    return v5

    :cond_3
    div-double v8, p2, v12

    div-double v10, p4, v12

    div-double v14, p6, v12

    goto :goto_2

    :cond_4
    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v14, p6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_2
    mul-double v16, v8, v8

    mul-double v18, v10, v10

    add-double v16, v16, v18

    mul-double v18, v14, v14

    add-double v16, v16, v18

    .line 423
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v2, v8, v6

    if-gez v2, :cond_5

    neg-double v3, v3

    :cond_5
    add-double/2addr v8, v3

    .line 428
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v1, v5, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 429
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v6, v1, 0x1

    div-double/2addr v10, v8

    invoke-virtual {v2, v6, v5, v10, v11}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 430
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v7, v1, 0x2

    div-double/2addr v14, v8

    invoke-virtual {v2, v7, v5, v14, v15}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    div-double/2addr v8, v3

    .line 432
    iput-wide v8, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    .line 437
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v5, 0x0

    add-int/lit8 v10, v1, 0x3

    move-object/from16 p2, p0

    move-object/from16 p3, v2

    move-wide/from16 p4, v8

    move/from16 p6, v5

    move/from16 p7, p1

    move/from16 p8, v10

    invoke-virtual/range {p2 .. p8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    if-eqz p10, :cond_6

    .line 440
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v5, v1, -0x1

    neg-double v8, v12

    mul-double/2addr v8, v3

    invoke-virtual {v2, v1, v5, v8, v9}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 441
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v6, v5, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 442
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v7, v5, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 445
    :cond_6
    iget-boolean v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v2, :cond_7

    .line 446
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  After Q.   A ="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->print()V

    .line 451
    :cond_7
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-wide v3, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v5, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v2

    move-wide/from16 p4, v3

    move/from16 p6, v5

    move/from16 p7, p1

    move/from16 p8, v10

    invoke-virtual/range {p2 .. p8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 456
    iget-boolean v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkUncountable:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->hasUncountable(Lorg/ejml/data/DMatrixD1;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 457
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad matrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    const/4 v1, 0x1

    return v1
.end method

.method public bulgeSingleStepQn(I)Z
    .locals 10

    .line 464
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    .line 465
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    .line 467
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v7, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v7, v0

    const/4 v9, 0x1

    move-object v1, p0

    .line 469
    invoke-virtual/range {v1 .. v9}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeSingleStepQn(IDDDZ)Z

    move-result p1

    return p1
.end method

.method public bulgeSingleStepQn(IDDDZ)Z
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 477
    iget-boolean v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->normalize:Z

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    .line 478
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 479
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v0, v4, v12

    if-gez v0, :cond_0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    :cond_0
    cmpg-double v0, v4, p6

    if-gtz v0, :cond_2

    if-eqz p8, :cond_1

    .line 486
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v8, v1, v9, v10}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 487
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2, v1, v9, v10}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_1
    return v3

    :cond_2
    div-double v12, p2, v4

    div-double v14, p4, v4

    move-wide v5, v4

    goto :goto_0

    :cond_3
    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    :goto_0
    mul-double v16, v12, v12

    mul-double v18, v14, v14

    add-double v16, v16, v18

    .line 500
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    cmpg-double v0, v12, v9

    if-gez v0, :cond_4

    neg-double v1, v1

    :cond_4
    move-wide/from16 v16, v1

    add-double v12, v12, v16

    .line 505
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v8, v3, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 506
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v4, v8, 0x1

    div-double/2addr v14, v12

    invoke-virtual {v0, v4, v3, v14, v15}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    div-double v2, v12, v16

    .line 508
    iput-wide v2, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    .line 513
    iget-object v1, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v12, 0x0

    add-int/lit8 v13, v8, 0x2

    move-object/from16 v0, p0

    move v14, v4

    move v4, v12

    move-wide v11, v5

    move/from16 v5, p1

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    if-eqz p8, :cond_5

    .line 516
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v1, v8, -0x1

    neg-double v2, v11

    mul-double v2, v2, v16

    invoke-virtual {v0, v8, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 517
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v14, v1, v9, v10}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 521
    :cond_5
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-wide v1, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v3, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-wide/from16 p4, v1

    move/from16 p6, v3

    move/from16 p7, p1

    move/from16 p8, v13

    invoke-virtual/range {p2 .. p8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 523
    iget-boolean v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkUncountable:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->hasUncountable(Lorg/ejml/data/DMatrixD1;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 524
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public createBulgeSingleStep(ID)Z
    .locals 11

    .line 374
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    sub-double v4, v0, p2

    .line 375
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v6

    .line 377
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p2, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    mul-double v8, p2, v0

    const/4 v10, 0x0

    move-object v2, p0

    move v3, p1

    .line 379
    invoke-virtual/range {v2 .. v10}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeSingleStepQn(IDDDZ)Z

    move-result p1

    return p1
.end method

.method public eigen2by2_scale(DDDD)V
    .locals 18

    move-object/from16 v0, p0

    .line 531
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 532
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 533
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 534
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v9, v1, v3

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    cmpg-double v3, v1, v5

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    cmpg-double v1, v5, v7

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v7, v5

    :goto_2
    const-wide/16 v1, 0x0

    cmpl-double v3, v7, v1

    if-nez v3, :cond_3

    .line 541
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iput-wide v1, v3, Lorg/ejml/data/Complex_F64;->real:D

    .line 542
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iput-wide v1, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 543
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v1, v3, Lorg/ejml/data/Complex_F64;->real:D

    .line 544
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v3, v3, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v1, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    goto :goto_4

    :cond_3
    div-double v12, p3, v7

    div-double v14, p5, v7

    div-double v10, p1, v7

    div-double v16, p7, v7

    .line 551
    iget-boolean v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->useCareful2x2:Z

    if-eqz v1, :cond_4

    .line 552
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-virtual/range {v9 .. v17}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value2x2(DDDD)V

    goto :goto_3

    .line 554
    :cond_4
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    invoke-virtual/range {v9 .. v17}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value2x2_fast(DDDD)V

    .line 556
    :goto_3
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v7

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    .line 557
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v7

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 558
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v7

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    .line 559
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v7

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    :goto_4
    return-void
.end method

.method public exceptionalShift(II)V
    .locals 11

    .line 167
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Performing exceptional implicit double step"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_1

    move-wide v0, v3

    .line 176
    :cond_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numExceptional:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numExceptional:I

    const-wide v5, 0x3fb999999999999aL    # 0.1

    int-to-double v7, v2

    .line 178
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double v5, v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v5

    mul-double/2addr v3, v7

    .line 179
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v9

    mul-double/2addr v3, v7

    add-double/2addr v5, v3

    mul-double/2addr v0, v5

    .line 181
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-double v0, v0

    .line 184
    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitSingleStep(IID)V

    .line 186
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    return-void
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 566
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    return v0
.end method

.method public implicitDoubleStep(II)V
    .locals 28

    move-object/from16 v9, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 194
    iget-boolean v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Performing implicit double step"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    .line 199
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v6

    .line 200
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v10

    .line 201
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v12

    .line 203
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v14

    .line 204
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v16

    .line 205
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v18

    .line 206
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v3, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v20

    .line 207
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v8, v1, 0x2

    invoke-virtual {v0, v8, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v22

    .line 209
    iget-boolean v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->normalize:Z

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->temp:[D

    const/4 v3, 0x0

    aput-wide v14, v0, v3

    const/4 v3, 0x1

    aput-wide v16, v0, v3

    const/4 v8, 0x2

    aput-wide v18, v0, v8

    const/4 v8, 0x3

    aput-wide v20, v0, v8

    const/4 v8, 0x4

    aput-wide v22, v0, v8

    const/4 v8, 0x5

    .line 212
    aput-wide v4, v0, v8

    const/4 v8, 0x6

    aput-wide v12, v0, v8

    const/4 v8, 0x7

    aput-wide v6, v0, v8

    const/16 v8, 0x8

    aput-wide v10, v0, v8

    .line 215
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    .line 216
    :goto_0
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->temp:[D

    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 217
    aget-wide v26, v0, v3

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpl-double v0, v26, v24

    if-lez v0, :cond_1

    .line 218
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->temp:[D

    aget-wide v24, v0, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    div-double v14, v14, v24

    div-double v16, v16, v24

    div-double v18, v18, v24

    div-double v20, v20, v24

    div-double v22, v22, v24

    div-double v4, v4, v24

    div-double v12, v12, v24

    div-double v6, v6, v24

    div-double v10, v10, v24

    .line 229
    :cond_3
    iget-boolean v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->useStandardEq:Z

    if-eqz v0, :cond_4

    sub-double v24, v14, v4

    sub-double v26, v14, v12

    mul-double v24, v24, v26

    mul-double/2addr v10, v6

    sub-double v24, v24, v10

    div-double v24, v24, v16

    add-double v24, v24, v18

    add-double v14, v14, v20

    sub-double/2addr v14, v4

    sub-double/2addr v14, v12

    goto :goto_1

    :cond_4
    sub-double v24, v14, v4

    sub-double v26, v14, v12

    mul-double v24, v24, v26

    mul-double/2addr v10, v6

    sub-double v24, v24, v10

    mul-double v18, v18, v16

    add-double v24, v24, v18

    add-double v14, v14, v20

    sub-double/2addr v14, v4

    sub-double/2addr v14, v12

    mul-double v14, v14, v16

    mul-double v22, v22, v16

    :goto_1
    move-wide v5, v14

    move-wide/from16 v7, v22

    move-wide/from16 v3, v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 241
    invoke-direct/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitDoubleStep(IIDDD)V

    return-void
.end method

.method public incrementSteps()V
    .locals 1

    .line 88
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    return-void
.end method

.method public isReal2x2(II)Z
    .locals 10

    .line 586
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p2, p1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v6

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigen2by2_scale(DDDD)V

    .line 588
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result p1

    return p1
.end method

.method public isZero(II)Z
    .locals 10

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 124
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const/4 v5, 0x1

    add-int/2addr p2, v5

    invoke-virtual {v4, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 125
    sget-wide v8, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v8, v6

    add-double/2addr v2, p1

    mul-double/2addr v8, v2

    cmpg-double p1, v0, v8

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public performImplicitDoubleStep(IIDD)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v1, p1

    .line 255
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    .line 256
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v5

    .line 257
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    .line 258
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v4, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v10

    .line 259
    iget-object v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v12, v1, 0x2

    invoke-virtual {v0, v12, v4}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, p3

    mul-double v16, p3, p3

    mul-double v18, p5, p5

    add-double v16, v16, v18

    .line 265
    iget-boolean v0, v9, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->useStandardEq:Z

    if-eqz v0, :cond_0

    mul-double v18, v2, v2

    mul-double v20, v14, v2

    sub-double v18, v18, v20

    add-double v18, v18, v16

    div-double v18, v18, v5

    add-double v18, v18, v7

    add-double/2addr v2, v10

    sub-double/2addr v2, v14

    goto :goto_0

    :cond_0
    mul-double v18, v2, v2

    mul-double v20, v14, v2

    sub-double v18, v18, v20

    add-double v18, v18, v16

    mul-double/2addr v7, v5

    add-double v18, v18, v7

    add-double/2addr v2, v10

    sub-double/2addr v2, v14

    mul-double/2addr v2, v5

    mul-double/2addr v12, v5

    :goto_0
    move-wide v5, v2

    move-wide v7, v12

    move-wide/from16 v3, v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 277
    invoke-direct/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->performImplicitDoubleStep(IIDDD)V

    return-void
.end method

.method public performImplicitSingleStep(IID)V
    .locals 8

    .line 336
    invoke-virtual {p0, p1, p3, p4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->createBulgeSingleStep(ID)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    const-string p3, "Bad"

    if-eqz v1, :cond_2

    .line 341
    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x2

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 342
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v0, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {p4, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_2
    :goto_0
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    const-string v0, "%12.3e"

    if-eqz p4, :cond_3

    .line 347
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p4, v0}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    .line 349
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pushing the hump off the matrix."

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p4, 0x1

    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_7

    .line 354
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->bulgeSingleStepQn(I)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v2, :cond_5

    .line 355
    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->gamma:D

    const/4 v5, 0x0

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p1, 0x3

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 356
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    sget-wide v1, Lorg/ejml/UtilEjml;->TESTP_F64:D

    invoke-static {p4, v1, v2}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isOrthogonal(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    .line 357
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_5
    :goto_2
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->printHumps:Z

    if-eqz p4, :cond_6

    .line 361
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p4, v0}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 366
    :cond_7
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkHessenberg:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    sget-wide p2, Lorg/ejml/UtilEjml;->TESTP_F64:D

    invoke-static {p1, p4, p2, p3}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isUpperTriangle(Lorg/ejml/data/DMatrixRMaj;ID)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 367
    :cond_8
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixRMaj;->print(Ljava/lang/String;)V

    .line 368
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad matrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method public printSteps()V
    .locals 4

    const/4 v0, 0x0

    .line 604
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 605
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Step["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numStepsFind:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 8

    .line 596
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 9

    .line 600
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->_temp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method

.method public setChecks(ZZZ)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkHessenberg:Z

    .line 113
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkOrthogonal:Z

    .line 114
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->checkUncountable:Z

    return-void
.end method

.method public setQ(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public setup(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 6

    .line 129
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 132
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->N:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 133
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->N:I

    .line 135
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 136
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    .line 138
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->_temp:Lorg/ejml/data/DMatrixRMaj;

    .line 139
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numStepsFind:[I

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 142
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numStepsFind:[I

    array-length v1, v0

    invoke-static {v0, v2, v1}, Lorg/ejml/UtilEjml;->memset([III)V

    :goto_0
    const/4 v0, 0x2

    .line 146
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->N:I

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 148
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_2
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-array p1, p1, [Lorg/ejml/data/Complex_F64;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    move p1, v2

    .line 153
    :goto_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->eigenvalues:[Lorg/ejml/data/Complex_F64;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 154
    new-instance v1, Lorg/ejml/data/Complex_F64;

    invoke-direct {v1}, Lorg/ejml/data/Complex_F64;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 157
    :cond_3
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    .line 158
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    .line 159
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numExceptional:I

    .line 160
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    return-void

    .line 130
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must be square"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

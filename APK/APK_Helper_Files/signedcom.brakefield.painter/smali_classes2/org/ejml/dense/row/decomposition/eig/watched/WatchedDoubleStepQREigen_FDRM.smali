.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigen_FDRM.java"


# instance fields
.field A:Lorg/ejml/data/FMatrixRMaj;

.field private N:I

.field public Q:Lorg/ejml/data/FMatrixRMaj;

.field protected _temp:Lorg/ejml/data/FMatrixRMaj;

.field checkHessenberg:Z

.field private checkOrthogonal:Z

.field private checkUncountable:Z

.field public createR:Z

.field eigenvalues:[Lorg/ejml/data/Complex_F32;

.field exceptionalThreshold:I

.field protected gamma:F

.field lastExceptional:I

.field maxIterations:I

.field private normalize:Z

.field numEigen:I

.field numExceptional:I

.field numStepsFind:[I

.field private printHumps:Z

.field private rand:Ljava/util/Random;

.field steps:I

.field private final temp:[F

.field protected u:Lorg/ejml/data/FMatrixRMaj;

.field private useCareful2x2:Z

.field private useStandardEq:Z

.field private valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2342

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rand:Ljava/util/Random;

    .line 66
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 68
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->temp:[F

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    .line 71
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkHessenberg:Z

    .line 72
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    .line 73
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkUncountable:Z

    .line 75
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->useStandardEq:Z

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->useCareful2x2:Z

    .line 78
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->normalize:Z

    const/16 v1, 0x14

    .line 82
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalThreshold:I

    mul-int/2addr v1, v1

    .line 83
    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->maxIterations:I

    .line 85
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->createR:Z

    return-void
.end method

.method private addEigenvalue(F)V
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/ejml/data/Complex_F32;->set(FF)V

    .line 100
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    .line 102
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    return-void
.end method

.method private addEigenvalue(FF)V
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    aput v2, v0, v1

    .line 107
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/Complex_F32;->set(FF)V

    .line 108
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    .line 110
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    return-void
.end method

.method private performImplicitDoubleStep(IIFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    .line 284
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeDoubleStepQn(IFFFFZ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    const-string p3, "Bad"

    if-eqz v1, :cond_2

    .line 289
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v3, 0x0

    add-int/lit8 v5, p1, 0x3

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 290
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    sget p5, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {p4, p5}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->print()V

    .line 293
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->print()V

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_2
    :goto_0
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    const-string p5, "%12.3fe"

    if-eqz p4, :cond_3

    .line 299
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p4, p5}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    .line 301
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Pushing the hump off the matrix."

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 p4, p2, -0x2

    const-string v0, " A = "

    if-ge p1, p4, :cond_7

    .line 306
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeDoubleStepQn(I)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v2, :cond_5

    .line 307
    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p1, 0x4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 308
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {p4, v1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    .line 309
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_5
    :goto_2
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz p4, :cond_6

    .line 313
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p4, p5}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 317
    :cond_7
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz p1, :cond_8

    .line 318
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "removing last bump"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x1

    if-ltz p4, :cond_a

    .line 320
    invoke-virtual {p0, p4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeSingleStepQn(I)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v2, :cond_a

    .line 321
    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 322
    iget-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    sget p4, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {p2, p4}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    .line 323
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_a
    :goto_3
    iget-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz p2, :cond_b

    .line 326
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p2, p5}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    .line 331
    :cond_b
    iget-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkHessenberg:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    sget p3, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {p2, p1, p3}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isUpperTriangle(Lorg/ejml/data/FMatrixRMaj;IF)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 332
    :cond_c
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, p5}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    .line 333
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad matrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    return-void
.end method


# virtual methods
.method public addComputedEigen2x2(II)V
    .locals 3

    .line 576
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, p2, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, p2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigen2by2_scale(FFFF)V

    .line 578
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkUncountable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 579
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Uncountable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p2, p2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p2, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenvalue(FF)V

    .line 584
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p2, p2, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p2, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenvalue(FF)V

    return-void
.end method

.method public addEigenAt(I)V
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenvalue(F)V

    return-void
.end method

.method public bulgeDoubleStepQn(I)Z
    .locals 8

    .line 385
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    .line 386
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    .line 387
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v5

    .line 389
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float v6, p1, v0

    const/4 v7, 0x1

    move-object v1, p0

    .line 391
    invoke-virtual/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeDoubleStepQn(IFFFFZ)Z

    move-result p1

    return p1
.end method

.method public bulgeDoubleStepQn(IFFFFZ)Z
    .locals 14

    move-object v6, p0

    move v7, p1

    .line 398
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->normalize:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 399
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 400
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 401
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    cmpl-float v3, v4, v0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    cmpg-float v0, v4, p5

    if-gtz v0, :cond_3

    if-eqz p6, :cond_2

    .line 409
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, p1, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 410
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v0, v3, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 411
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v3, v7, 0x2

    invoke-virtual {v0, v3, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_2
    return v2

    :cond_3
    div-float v0, p2, v4

    div-float v3, p3, v4

    div-float v5, p4, v4

    move v9, v4

    goto :goto_2

    :cond_4
    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move v9, v1

    :goto_2
    mul-float v4, v0, v0

    mul-float v10, v3, v3

    add-float/2addr v4, v10

    mul-float v10, v5, v5

    add-float/2addr v4, v10

    float-to-double v10, v4

    .line 425
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    cmpg-float v10, v0, v8

    if-gez v10, :cond_5

    neg-float v4, v4

    :cond_5
    move v10, v4

    add-float/2addr v0, v10

    .line 430
    iget-object v4, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, p1, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 431
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v11, v7, 0x1

    div-float/2addr v3, v0

    invoke-virtual {v1, v11, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 432
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v12, v7, 0x2

    div-float/2addr v5, v0

    invoke-virtual {v1, v12, v2, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    div-float v2, v0, v10

    .line 434
    iput v2, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    .line 439
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    add-int/lit8 v13, v7, 0x3

    move-object v0, p0

    move v4, p1

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    if-eqz p6, :cond_6

    .line 442
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, v7, -0x1

    neg-float v2, v9

    mul-float/2addr v2, v10

    invoke-virtual {v0, p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 443
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v11, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 444
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v12, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 447
    :cond_6
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz v0, :cond_7

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  After Q.   A ="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0}, Lorg/ejml/data/FMatrixRMaj;->print()V

    .line 453
    :cond_7
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 458
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkUncountable:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->hasUncountable(Lorg/ejml/data/FMatrixD1;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 459
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public bulgeSingleStepQn(I)Z
    .locals 7

    .line 466
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    .line 467
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    .line 469
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float v5, p1, v0

    const/4 v6, 0x1

    move-object v1, p0

    .line 471
    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeSingleStepQn(IFFFZ)Z

    move-result p1

    return p1
.end method

.method public bulgeSingleStepQn(IFFFZ)Z
    .locals 14

    move-object v6, p0

    move v7, p1

    .line 479
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->normalize:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    .line 480
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 481
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_0
    cmpg-float v3, v0, p4

    if-gtz v3, :cond_2

    if-eqz p5, :cond_1

    .line 488
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, p1, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 489
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v0, v3, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_1
    return v2

    :cond_2
    div-float v3, p2, v0

    div-float v4, p3, v0

    move v10, v0

    goto :goto_0

    :cond_3
    move/from16 v3, p2

    move/from16 v4, p3

    move v10, v1

    :goto_0
    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    float-to-double v11, v0

    .line 502
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v0, v11

    cmpg-float v5, v3, v8

    if-gez v5, :cond_4

    neg-float v0, v0

    :cond_4
    move v11, v0

    add-float/2addr v3, v11

    .line 507
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 508
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v12, v7, 0x1

    div-float/2addr v4, v3

    invoke-virtual {v0, v12, v2, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    div-float v2, v3, v11

    .line 510
    iput v2, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    .line 515
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x0

    add-int/lit8 v13, v7, 0x2

    move-object v0, p0

    move v4, p1

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    if-eqz p5, :cond_5

    .line 518
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v1, v7, -0x1

    neg-float v2, v10

    mul-float/2addr v2, v11

    invoke-virtual {v0, p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 519
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v12, v1, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 523
    :cond_5
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 525
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkUncountable:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->hasUncountable(Lorg/ejml/data/FMatrixD1;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 526
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    return v9
.end method

.method public createBulgeSingleStep(IF)Z
    .locals 7

    .line 376
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    sub-float v3, v0, p2

    .line 377
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    .line 379
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p2, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float v5, p2, v0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 381
    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeSingleStepQn(IFFFZ)Z

    move-result p1

    return p1
.end method

.method public eigen2by2_scale(FFFF)V
    .locals 5

    .line 533
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 534
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 535
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 536
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    cmpg-float v0, v2, v3

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const/4 v0, 0x0

    cmpl-float v1, v3, v0

    if-nez v1, :cond_3

    .line 543
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iput v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 544
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iput v0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 545
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 546
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    goto :goto_4

    :cond_3
    div-float/2addr p2, v3

    div-float/2addr p3, v3

    div-float/2addr p1, v3

    div-float/2addr p4, v3

    .line 553
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->useCareful2x2:Z

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value2x2(FFFF)V

    goto :goto_3

    .line 556
    :cond_4
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value2x2_fast(FFFF)V

    .line 558
    :goto_3
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p2, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr p2, v3

    iput p2, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 559
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr p2, v3

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 560
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p2, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr p2, v3

    iput p2, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 561
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr p2, v3

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    :goto_4
    return-void
.end method

.method public exceptionalShift(II)V
    .locals 7

    .line 169
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Performing exceptional implicit float step"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move v0, v2

    .line 178
    :cond_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numExceptional:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numExceptional:I

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    int-to-double v5, v1

    .line 180
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    sub-float v1, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    .line 181
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 183
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v0, v0

    .line 186
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitSingleStep(IIF)V

    .line 188
    iget p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    return-void
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 568
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    return v0
.end method

.method public implicitDoubleStep(II)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 196
    iget-boolean v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Performing implicit float step"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    .line 201
    iget-object v4, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v3, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    .line 202
    iget-object v5, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v5, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    .line 203
    iget-object v5, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v5, v2, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v5

    .line 205
    iget-object v7, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v7, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v7

    .line 206
    iget-object v8, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v8

    .line 207
    iget-object v10, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v10, v1, v9}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v10

    .line 208
    iget-object v11, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v11, v9, v9}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v11

    .line 209
    iget-object v12, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v13, v1, 0x2

    invoke-virtual {v12, v13, v9}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v9

    .line 211
    iget-boolean v12, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->normalize:Z

    if-eqz v12, :cond_3

    .line 213
    iget-object v12, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->temp:[F

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v8, v12, v13

    const/4 v14, 0x2

    aput v10, v12, v14

    const/4 v14, 0x3

    aput v11, v12, v14

    const/4 v14, 0x4

    aput v9, v12, v14

    const/4 v14, 0x5

    .line 214
    aput v0, v12, v14

    const/4 v14, 0x6

    aput v5, v12, v14

    const/4 v14, 0x7

    aput v4, v12, v14

    const/16 v14, 0x8

    aput v3, v12, v14

    .line 217
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 218
    :goto_0
    iget-object v14, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->temp:[F

    array-length v15, v14

    if-ge v13, v15, :cond_2

    .line 219
    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v12

    if-lez v14, :cond_1

    .line 220
    iget-object v12, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->temp:[F

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    div-float/2addr v7, v12

    div-float/2addr v8, v12

    div-float/2addr v10, v12

    div-float/2addr v11, v12

    div-float/2addr v9, v12

    div-float/2addr v0, v12

    div-float/2addr v5, v12

    div-float/2addr v4, v12

    div-float/2addr v3, v12

    .line 231
    :cond_3
    iget-boolean v12, v6, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->useStandardEq:Z

    if-eqz v12, :cond_4

    sub-float v12, v7, v0

    sub-float v13, v7, v5

    mul-float/2addr v12, v13

    mul-float/2addr v3, v4

    sub-float/2addr v12, v3

    div-float/2addr v12, v8

    add-float/2addr v12, v10

    add-float/2addr v7, v11

    sub-float/2addr v7, v0

    sub-float/2addr v7, v5

    goto :goto_1

    :cond_4
    sub-float v12, v7, v0

    sub-float v13, v7, v5

    mul-float/2addr v12, v13

    mul-float/2addr v3, v4

    sub-float/2addr v12, v3

    mul-float/2addr v10, v8

    add-float/2addr v12, v10

    add-float/2addr v7, v11

    sub-float/2addr v7, v0

    sub-float/2addr v7, v5

    mul-float/2addr v7, v8

    mul-float/2addr v9, v8

    :goto_1
    move v4, v7

    move v5, v9

    move v3, v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 243
    invoke-direct/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitDoubleStep(IIFFF)V

    return-void
.end method

.method public incrementSteps()V
    .locals 1

    .line 90
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    return-void
.end method

.method public isReal2x2(II)Z
    .locals 3

    .line 588
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, p2, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, p2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigen2by2_scale(FFFF)V

    .line 590
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->valueSmall:Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;

    iget-object p1, p1, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result p1

    return p1
.end method

.method public isZero(II)Z
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 123
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 126
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v3, 0x1

    add-int/2addr p2, v3

    invoke-virtual {v2, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    .line 127
    sget v2, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v2, p2

    add-float/2addr v1, p1

    mul-float/2addr v2, v1

    cmpg-float p1, v0, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public performImplicitDoubleStep(IIFF)V
    .locals 9

    .line 257
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    .line 258
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    .line 259
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, p1, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    .line 260
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v2, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    .line 261
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {v5, v6, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p3

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    .line 267
    iget-boolean p4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->useStandardEq:Z

    if-eqz p4, :cond_0

    mul-float p4, v0, v0

    mul-float v6, v5, v0

    sub-float/2addr p4, v6

    add-float/2addr p4, p3

    div-float/2addr p4, v1

    add-float/2addr p4, v3

    add-float/2addr v0, v4

    sub-float/2addr v0, v5

    goto :goto_0

    :cond_0
    mul-float p4, v0, v0

    mul-float v6, v5, v0

    sub-float/2addr p4, v6

    add-float/2addr p4, p3

    mul-float/2addr v3, v1

    add-float/2addr p4, v3

    add-float/2addr v0, v4

    sub-float/2addr v0, v5

    mul-float/2addr v0, v1

    mul-float/2addr v2, v1

    :goto_0
    move v6, p4

    move v7, v0

    move v8, v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 279
    invoke-direct/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->performImplicitDoubleStep(IIFFF)V

    return-void
.end method

.method public performImplicitSingleStep(IIF)V
    .locals 8

    .line 338
    invoke-virtual {p0, p1, p3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->createBulgeSingleStep(IF)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    const-string p3, "Bad"

    if-eqz v1, :cond_2

    .line 343
    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v3, 0x0

    add-int/lit8 v5, p1, 0x2

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 344
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    const-string v1, "%12.3fe"

    if-eqz v0, :cond_3

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Pushing the hump off the matrix."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    add-int/lit8 v2, p2, -0x1

    if-ge p1, v2, :cond_7

    .line 356
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->bulgeSingleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    if-eqz v3, :cond_5

    .line 357
    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->gamma:F

    const/4 v5, 0x0

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p1, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 358
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    sget v2, Lorg/ejml/UtilEjml;->TESTP_F32:F

    invoke-static {v0, v2}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isOrthogonal(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 359
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->printHumps:Z

    if-eqz v0, :cond_6

    .line 363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "i = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " A = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 368
    :cond_7
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkHessenberg:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    sget p2, Lorg/ejml/UtilEjml;->TESTP_F32:F

    invoke-static {p1, v0, p2}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isUpperTriangle(Lorg/ejml/data/FMatrixRMaj;IF)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 369
    :cond_8
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixRMaj;->print(Ljava/lang/String;)V

    .line 370
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

    .line 606
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 607
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Step["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numStepsFind:[I

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

.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 598
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 8

    .line 602
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->_temp:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method

.method public setChecks(ZZZ)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkHessenberg:Z

    .line 115
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkOrthogonal:Z

    .line 116
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->checkUncountable:Z

    return-void
.end method

.method public setQ(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public setup(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 5

    .line 131
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 134
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->N:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 135
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->N:I

    .line 137
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 138
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    .line 140
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->_temp:Lorg/ejml/data/FMatrixRMaj;

    .line 141
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numStepsFind:[I

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 144
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numStepsFind:[I

    array-length v1, v0

    invoke-static {v0, v2, v1}, Lorg/ejml/UtilEjml;->memset([III)V

    :goto_0
    const/4 v0, 0x2

    .line 148
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->N:I

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 150
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_2
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-array p1, p1, [Lorg/ejml/data/Complex_F32;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    move p1, v2

    .line 155
    :goto_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->eigenvalues:[Lorg/ejml/data/Complex_F32;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 156
    new-instance v1, Lorg/ejml/data/Complex_F32;

    invoke-direct {v1}, Lorg/ejml/data/Complex_F32;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 159
    :cond_3
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    .line 160
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    .line 161
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numExceptional:I

    .line 162
    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    return-void

    .line 132
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must be square"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

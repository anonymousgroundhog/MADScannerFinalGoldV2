.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigenvalue_FDRM.java"

# interfaces
.implements Lorg/ejml/dense/row/decomposition/eig/EigenvalueExtractor_FDRM;


# instance fields
.field implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

.field numSplits:I

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    return-void
.end method

.method private moveToNextSplit()V
    .locals 3

    .line 100
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->numSplits:I

    if-lez v0, :cond_1

    .line 103
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->splits:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->numSplits:I

    aget v2, v1, v0

    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 106
    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performIteration()V
    .locals 4

    .line 116
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    if-le v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->splits:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->numSplits:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->numSplits:I

    aput v2, v0, v1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->implicitDoubleStep(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getEigenvalues()[Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F32;

    move-result-object v0

    return-object v0
.end method

.method public getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->getNumberOfEigenvalues()I

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 5

    .line 59
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->setup(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    .line 62
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    .line 64
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->numEigen:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_7

    .line 65
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->maxIterations:I

    if-le v1, v3, :cond_0

    return v0

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->incrementSteps()V

    .line 70
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    if-ge v1, v3, :cond_1

    .line 71
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->moveToNextSplit()V

    goto :goto_0

    :cond_1
    sub-int v4, v1, v3

    if-nez v4, :cond_2

    .line 74
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v1, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenAt(I)V

    .line 75
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    goto :goto_0

    :cond_2
    sub-int v4, v1, v3

    if-ne v4, v2, :cond_3

    .line 78
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v4, v3, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addComputedEigen2x2(II)V

    .line 79
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->steps:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->lastExceptional:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalThreshold:I

    if-le v1, v3, :cond_5

    .line 82
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    invoke-virtual {v1, v3, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 86
    :cond_4
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x1:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    invoke-virtual {v1, v3, v4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->exceptionalShift(II)V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    invoke-virtual {v1, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->addEigenAt(I)V

    .line 90
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->x2:I

    goto/16 :goto_0

    .line 92
    :cond_6
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->performIteration()V

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method public setup(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->setup(Lorg/ejml/data/FMatrixRMaj;)V

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    .line 53
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->splits:[I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->numSplits:I

    return-void
.end method

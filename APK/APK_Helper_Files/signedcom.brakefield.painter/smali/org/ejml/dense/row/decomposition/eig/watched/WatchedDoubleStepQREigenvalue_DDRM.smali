.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQREigenvalue_DDRM.java"

# interfaces
.implements Lorg/ejml/dense/row/decomposition/eig/EigenvalueExtractor_DDRM;


# instance fields
.field implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

.field numSplits:I

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    return-void
.end method

.method private moveToNextSplit()V
    .locals 3

    .line 98
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->numSplits:I

    if-lez v0, :cond_1

    .line 101
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->splits:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->numSplits:I

    aget v2, v1, v0

    iput v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 104
    aget v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performIteration()V
    .locals 4

    .line 114
    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    if-le v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->splits:[I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->numSplits:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->numSplits:I

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

    .line 125
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->implicitDoubleStep(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getEigenvalues()[Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F64;

    move-result-object v0

    return-object v0
.end method

.method public getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->getNumberOfEigenvalues()I

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 57
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->setup(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    .line 60
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    .line 62
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->numEigen:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_7

    .line 63
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->maxIterations:I

    if-le v1, v3, :cond_0

    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->incrementSteps()V

    .line 68
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    if-ge v1, v3, :cond_1

    .line 69
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->moveToNextSplit()V

    goto :goto_0

    :cond_1
    sub-int v4, v1, v3

    if-nez v4, :cond_2

    .line 72
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v1, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenAt(I)V

    .line 73
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    goto :goto_0

    :cond_2
    sub-int v4, v1, v3

    if-ne v4, v2, :cond_3

    .line 76
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v4, v3, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addComputedEigen2x2(II)V

    .line 77
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->steps:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->lastExceptional:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, v3, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalThreshold:I

    if-le v1, v3, :cond_5

    .line 80
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget-object v1, v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    invoke-virtual {v1, v3, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 84
    :cond_4
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x1:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    invoke-virtual {v1, v3, v4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->exceptionalShift(II)V

    goto :goto_0

    .line 85
    :cond_5
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    invoke-virtual {v1, v3}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->addEigenAt(I)V

    .line 88
    iget v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->x2:I

    goto/16 :goto_0

    .line 90
    :cond_6
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->performIteration()V

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method public setup(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->setup(Lorg/ejml/data/DMatrixRMaj;)V

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->implicitQR:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    .line 51
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->splits:[I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->numSplits:I

    return-void
.end method

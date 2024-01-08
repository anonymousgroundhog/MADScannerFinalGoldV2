.class public Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;
.super Ljava/lang/Object;
.source "PenKalmanFilter.java"


# instance fields
.field private mAcceleration:Lorg/ejml/data/DMatrix2;

.field private mJank:Lorg/ejml/data/DMatrix2;

.field private mNewP:Lorg/ejml/data/DMatrixRMaj;

.field private mNewX:Lorg/ejml/data/DMatrixRMaj;

.field private mNewY:Lorg/ejml/data/DMatrixRMaj;

.field private mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

.field private mPosition:Lorg/ejml/data/DMatrix2;

.field private mPressure:D

.field private mPressureChange:D

.field private mSigmaMeasurement:D

.field private mSigmaProcess:D

.field private mVelocity:Lorg/ejml/data/DMatrix2;

.field private mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

.field private mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

.field private numIterations:I


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPosition:Lorg/ejml/data/DMatrix2;

    .line 13
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mVelocity:Lorg/ejml/data/DMatrix2;

    .line 14
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mAcceleration:Lorg/ejml/data/DMatrix2;

    .line 15
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mJank:Lorg/ejml/data/DMatrix2;

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressure:D

    .line 17
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressureChange:D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    .line 24
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewX:Lorg/ejml/data/DMatrixRMaj;

    .line 25
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewY:Lorg/ejml/data/DMatrixRMaj;

    .line 26
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewP:Lorg/ejml/data/DMatrixRMaj;

    .line 35
    iput-wide p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mSigmaProcess:D

    .line 36
    iput-wide p3, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mSigmaMeasurement:D

    .line 37
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->createAxisKalmanFilter()Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    .line 38
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->createAxisKalmanFilter()Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    .line 39
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->createAxisKalmanFilter()Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    return-void
.end method

.method private createAxisKalmanFilter()Lcom/brakefield/painter/zeroLatency/KalmanFilter;
    .locals 19

    move-object/from16 v0, p0

    .line 122
    new-instance v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;-><init>(II)V

    .line 128
    iget-object v4, v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->F:Lorg/ejml/data/DMatrixRMaj;

    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    new-array v6, v2, [[D

    new-array v7, v2, [D

    const/4 v8, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v7, v8

    aput-wide v9, v7, v3

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    aput-wide v12, v7, v11

    const/4 v14, 0x3

    const-wide v15, 0x3fc47ae147ae147bL    # 0.16

    aput-wide v15, v7, v14

    aput-object v7, v6, v8

    new-array v7, v2, [D

    const-wide/16 v17, 0x0

    aput-wide v17, v7, v8

    aput-wide v9, v7, v3

    aput-wide v9, v7, v11

    aput-wide v12, v7, v14

    aput-object v7, v6, v3

    new-array v7, v2, [D

    fill-array-data v7, :array_0

    aput-object v7, v6, v11

    new-array v7, v2, [D

    fill-array-data v7, :array_1

    aput-object v7, v6, v14

    invoke-direct {v5, v6}, Lorg/ejml/data/DMatrixRMaj;-><init>([[D)V

    invoke-virtual {v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 136
    new-instance v4, Lorg/ejml/data/DMatrixRMaj;

    new-array v5, v2, [[D

    new-array v6, v3, [D

    aput-wide v15, v6, v8

    aput-object v6, v5, v8

    new-array v6, v3, [D

    aput-wide v12, v6, v8

    aput-object v6, v5, v3

    new-array v6, v3, [D

    aput-wide v9, v6, v8

    aput-object v6, v5, v11

    new-array v6, v3, [D

    aput-wide v9, v6, v8

    aput-object v6, v5, v14

    invoke-direct {v4, v5}, Lorg/ejml/data/DMatrixRMaj;-><init>([[D)V

    .line 137
    iget-object v5, v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v4, v5}, Lorg/ejml/dense/row/CommonOps_DDRM;->multOuter(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 138
    iget-wide v4, v0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mSigmaProcess:D

    iget-object v6, v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v4, v5, v6}, Lorg/ejml/dense/row/CommonOps_DDRM;->scale(DLorg/ejml/data/DMatrixD1;)V

    .line 141
    iget-object v4, v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->H:Lorg/ejml/data/DMatrixRMaj;

    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    new-array v3, v3, [[D

    new-array v2, v2, [D

    fill-array-data v2, :array_2

    aput-object v2, v3, v8

    invoke-direct {v5, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>([[D)V

    invoke-virtual {v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 144
    iget-object v2, v1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-wide v3, v0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mSigmaMeasurement:D

    invoke-virtual {v2, v8, v8, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getAccelleration()Lorg/ejml/data/DMatrix2;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mAcceleration:Lorg/ejml/data/DMatrix2;

    return-object v0
.end method

.method public getJank()Lorg/ejml/data/DMatrix2;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mJank:Lorg/ejml/data/DMatrix2;

    return-object v0
.end method

.method public getNumIterations()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    return v0
.end method

.method public getPosition()Lorg/ejml/data/DMatrix2;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPosition:Lorg/ejml/data/DMatrix2;

    return-object v0
.end method

.method public getPressure()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressure:D

    return-wide v0
.end method

.method public getPressureChange()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressureChange:D

    return-wide v0
.end method

.method public getVelocity()Lorg/ejml/data/DMatrix2;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mVelocity:Lorg/ejml/data/DMatrix2;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->reset()V

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->reset()V

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->reset()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    return-void
.end method

.method public update(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 6

    .line 57
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 60
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewX:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->predict()V

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewX:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->update(Lorg/ejml/data/DMatrixRMaj;)V

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewY:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->predict()V

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewY:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->update(Lorg/ejml/data/DMatrixRMaj;)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewP:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    invoke-virtual {p1}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->predict()V

    .line 72
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mNewP:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->update(Lorg/ejml/data/DMatrixRMaj;)V

    .line 74
    :goto_0
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->numIterations:I

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 77
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 78
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 79
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 80
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    iput-wide v4, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 81
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 82
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mJank:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mXKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    iput-wide v4, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 83
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mJank:Lorg/ejml/data/DMatrix2;

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mYKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object v2, v2, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 84
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object p1, p1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressure:D

    .line 85
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPKalman:Lcom/brakefield/painter/zeroLatency/KalmanFilter;

    iget-object p1, p1, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->mPressureChange:D

    return-void
.end method

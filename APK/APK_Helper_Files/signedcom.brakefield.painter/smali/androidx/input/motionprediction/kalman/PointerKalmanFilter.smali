.class public Landroidx/input/motionprediction/kalman/PointerKalmanFilter;
.super Ljava/lang/Object;
.source "PointerKalmanFilter.java"


# instance fields
.field private final mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private final mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private final mNewP:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private final mNewX:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private final mNewY:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mNumIterations:I

.field private final mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

.field private final mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private mPressure:D

.field private mPressureChange:D

.field private mSigmaMeasurement:D

.field private mSigmaProcess:D

.field private final mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private final mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

.field private final mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 37
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 38
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 39
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressure:D

    .line 41
    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressureChange:D

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    .line 48
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewX:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 49
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewY:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 50
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewP:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 57
    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mSigmaProcess:D

    .line 58
    iput-wide p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mSigmaMeasurement:D

    .line 59
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->createAxisKalmanFilter()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    .line 60
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->createAxisKalmanFilter()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    .line 61
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->createAxisKalmanFilter()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    return-void
.end method

.method private createAxisKalmanFilter()Landroidx/input/motionprediction/kalman/KalmanFilter;
    .locals 5

    .line 141
    new-instance v0, Landroidx/input/motionprediction/kalman/KalmanFilter;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/input/motionprediction/kalman/KalmanFilter;-><init>(II)V

    .line 147
    new-instance v3, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/16 v4, 0x10

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    invoke-direct {v3, v1, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    iput-object v3, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 157
    new-instance v3, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-array v4, v1, [D

    fill-array-data v4, :array_1

    invoke-direct {v3, v2, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    .line 158
    iget-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v3, v3, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 159
    iget-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-wide v3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mSigmaProcess:D

    invoke-virtual {v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->scale(D)V

    .line 162
    new-instance v2, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-array v3, v1, [D

    fill-array-data v3, :array_2

    invoke-direct {v2, v1, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    iput-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 165
    iget-object v1, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v2, 0x0

    iget-wide v3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mSigmaMeasurement:D

    invoke-virtual {v1, v2, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    return-object v0

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x3fc47ae147ae147bL    # 0.16
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fc47ae147ae147bL    # 0.16
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
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
.method public getAcceleration()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object v0
.end method

.method public getJank()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object v0
.end method

.method public getNumIterations()I
    .locals 1

    .line 133
    iget v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    return v0
.end method

.method public getPosition()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object v0
.end method

.method public getPressure()D
    .locals 2

    .line 125
    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressure:D

    return-wide v0
.end method

.method public getPressureChange()D
    .locals 2

    .line 129
    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressureChange:D

    return-wide v0
.end method

.method public getVelocity()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    .line 67
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    .line 68
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    return-void
.end method

.method public update(FFF)V
    .locals 4

    .line 77
    iget v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object v0, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 79
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p2

    invoke-virtual {p1, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 80
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double p2, p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewX:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 83
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    .line 84
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewX:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    .line 86
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewY:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p2

    invoke-virtual {p1, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 87
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    .line 88
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewY:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    .line 90
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewP:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double p2, p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 91
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    .line 92
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNewP:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    .line 94
    :goto_0
    iget p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mNumIterations:I

    .line 96
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 97
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 98
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 99
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 100
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v0, 0x2

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 101
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 102
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mXKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v0, 0x3

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 103
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mYKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 104
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressure:D

    .line 105
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPKalman:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->mPressureChange:D

    return-void
.end method

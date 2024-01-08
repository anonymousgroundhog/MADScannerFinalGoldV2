.class public Landroidx/input/motionprediction/kalman/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field public F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferXDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferXDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferXDimXDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferXDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferXDimZDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferZDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferZDimTwiceZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferZDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field private mBufferZDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public x:Landroidx/input/motionprediction/kalman/matrix/Matrix;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 68
    invoke-static {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 69
    invoke-static {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 70
    invoke-static {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 71
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 72
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 73
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 74
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 75
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 76
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 77
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimXDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 78
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 79
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 80
    new-instance p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {p1, p2, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 81
    new-instance p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    mul-int/lit8 v0, p2, 0x2

    invoke-direct {p1, p2, v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimTwiceZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method


# virtual methods
.method public predict()V
    .locals 3

    .line 96
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 97
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v1, v0, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v1

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 98
    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 100
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method

.method public reset()V
    .locals 3

    .line 87
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->fill(D)V

    .line 88
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-static {v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    return-void
.end method

.method public update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 106
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 107
    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 108
    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimTwiceZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 109
    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->inverse(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 111
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferZDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 113
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimOne:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v1, p1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 114
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimZDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimXDim:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->mBufferXDimXDim2:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method

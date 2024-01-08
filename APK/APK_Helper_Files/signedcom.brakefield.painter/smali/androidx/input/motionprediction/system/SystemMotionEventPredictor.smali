.class public Landroidx/input/motionprediction/system/SystemMotionEventPredictor;
.super Ljava/lang/Object;
.source "SystemMotionEventPredictor.java"

# interfaces
.implements Landroidx/input/motionprediction/MotionEventPredictor;


# instance fields
.field private mKalmanPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

.field private mLastRecordedDeviceId:I

.field private mLastRecordedSource:I

.field private final mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

.field private final mSystemPredictor:Landroid/view/MotionPredictor;

.field private mUsingSystemPredictor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mKalmanPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mUsingSystemPredictor:Z

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedSource:I

    const/4 v0, -0x2

    .line 50
    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedDeviceId:I

    .line 53
    new-instance v0, Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-direct {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    .line 54
    new-instance v0, Landroid/view/MotionPredictor;

    invoke-direct {v0, p1}, Landroid/view/MotionPredictor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mSystemPredictor:Landroid/view/MotionPredictor;

    return-void
.end method

.method private getKalmanPredictor()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mKalmanPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mKalmanPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mKalmanPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/input/motionprediction/system/SystemMotionEventPredictor;
    .locals 1

    .line 102
    new-instance v0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public predict()Landroid/view/MotionEvent;
    .locals 7

    .line 77
    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0}, Landroidx/input/motionprediction/utils/PredictionEstimator;->estimate()I

    move-result v0

    .line 78
    iget-boolean v1, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mUsingSystemPredictor:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mSystemPredictor:Landroid/view/MotionPredictor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionPredictor;->predict(J)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    invoke-direct {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->getKalmanPredictor()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 3

    .line 59
    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->record(Landroid/view/MotionEvent;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 62
    iget v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedSource:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedDeviceId:I

    if-eq v2, v1, :cond_1

    .line 63
    :cond_0
    iget-object v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mSystemPredictor:Landroid/view/MotionPredictor;

    invoke-virtual {v2, v1, v0}, Landroid/view/MotionPredictor;->isPredictionAvailable(II)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mUsingSystemPredictor:Z

    .line 64
    iput v1, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedDeviceId:I

    .line 65
    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mLastRecordedSource:I

    .line 67
    :cond_1
    iget-boolean v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mUsingSystemPredictor:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->mSystemPredictor:Landroid/view/MotionPredictor;

    invoke-virtual {v0, p1}, Landroid/view/MotionPredictor;->record(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->getKalmanPredictor()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

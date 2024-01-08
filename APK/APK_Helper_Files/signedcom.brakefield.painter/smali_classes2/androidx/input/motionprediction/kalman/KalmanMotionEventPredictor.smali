.class public Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;
.super Ljava/lang/Object;
.source "KalmanMotionEventPredictor.java"

# interfaces
.implements Landroidx/input/motionprediction/MotionEventPredictor;


# instance fields
.field private final mMultiPointerPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

.field private final mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mMultiPointerPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    .line 38
    new-instance v0, Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-direct {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    return-void
.end method


# virtual methods
.method public predict()Landroid/view/MotionEvent;
    .locals 2

    .line 50
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0}, Landroidx/input/motionprediction/utils/PredictionEstimator;->estimate()I

    move-result v0

    .line 51
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mMultiPointerPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-virtual {v1, v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mPredictionEstimator:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->record(Landroid/view/MotionEvent;)V

    .line 44
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->mMultiPointerPredictor:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.class public interface abstract Landroidx/input/motionprediction/MotionEventPredictor;
.super Ljava/lang/Object;
.source "MotionEventPredictor.java"


# direct methods
.method public static newInstance(Landroid/view/View;)Landroidx/input/motionprediction/MotionEventPredictor;
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 75
    invoke-static {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->newInstance(Landroid/content/Context;)Landroidx/input/motionprediction/system/SystemMotionEventPredictor;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract predict()Landroid/view/MotionEvent;
.end method

.method public abstract record(Landroid/view/MotionEvent;)V
.end method

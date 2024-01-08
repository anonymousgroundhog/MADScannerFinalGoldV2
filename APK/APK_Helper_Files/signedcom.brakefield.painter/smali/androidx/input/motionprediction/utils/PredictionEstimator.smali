.class public Landroidx/input/motionprediction/utils/PredictionEstimator;
.super Ljava/lang/Object;
.source "PredictionEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/input/motionprediction/utils/PredictionEstimator$Api30Impl;,
        Landroidx/input/motionprediction/utils/PredictionEstimator$Api23Impl;,
        Landroidx/input/motionprediction/utils/PredictionEstimator$Api21Impl;
    }
.end annotation


# static fields
.field private static final LEGACY_FRAME_TIME_MS:I = 0x10

.field private static final MAX_PREDICTION_MS:I = 0x20

.field private static final MS_IN_A_SECOND:I = 0x3e8


# instance fields
.field private final mFrameTimeMs:F

.field private mLastEventTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mLastEventTime:J

    .line 46
    invoke-direct {p0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->getFastestFrameTimeMs(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mFrameTimeMs:F

    return-void
.end method

.method private getDisplayForContext(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 67
    invoke-static {p1}, Landroidx/input/motionprediction/utils/PredictionEstimator$Api30Impl;->getDisplayForContext(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "window"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 70
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method private getFastestFrameTimeMs(Landroid/content/Context;)F
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->getDisplayForContext(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroidx/input/motionprediction/utils/PredictionEstimator$Api23Impl;->getFastestFrameTimeMs(Landroid/view/Display;)F

    move-result p1

    return p1
.end method


# virtual methods
.method public estimate()I
    .locals 4

    .line 56
    iget-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mLastEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 57
    iget v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mFrameTimeMs:F

    float-to-int v0, v0

    return v0

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mLastEventTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mFrameTimeMs:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x20

    .line 62
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->mLastEventTime:J

    return-void
.end method

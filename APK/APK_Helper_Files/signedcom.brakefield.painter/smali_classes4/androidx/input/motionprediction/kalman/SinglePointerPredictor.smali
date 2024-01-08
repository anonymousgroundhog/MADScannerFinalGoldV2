.class public Landroidx/input/motionprediction/kalman/SinglePointerPredictor;
.super Ljava/lang/Object;
.source "SinglePointerPredictor.java"

# interfaces
.implements Landroidx/input/motionprediction/kalman/KalmanPredictor;


# static fields
.field private static final ACCELERATION_INFLUENCE:F = 0.5f

.field private static final ACCURATE_HIGH_JANK:F = 0.2f

.field private static final ACCURATE_HIGH_SPEED:F = 0.0f

.field private static final ACCURATE_LOW_JANK:F = 0.1f

.field private static final ACCURATE_LOW_SPEED:F = 0.0f

.field private static final EVENT_TIME_IGNORED_THRESHOLD_MS:I = 0x14

.field private static final HIGH_JANK:F = 0.2f

.field private static final HIGH_SPEED:F = 2.0f

.field private static final JANK_INFLUENCE:F = 0.1f

.field private static final LOW_JANK:F = 0.02f

.field private static final LOW_SPEED:F = 0.0f

.field private static final MIN_KALMAN_FILTER_ITERATIONS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SinglePointerPredictor"

.field private static final VELOCITY_INFLUENCE:F = 1.0f


# instance fields
.field private final mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private mDownEventTime:J

.field private mExpectedPredictionSampleSize:I

.field private final mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private final mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

.field private mLastOrientation:D

.field private final mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private mLastTilt:D

.field private mPointerId:I

.field private final mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field private mPressure:D

.field private mPrevEventTime:J

.field private mReportRateMs:F

.field private mReportRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mToolType:I

.field private final mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;-><init>(DD)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    .line 72
    new-instance v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 75
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mExpectedPredictionSampleSize:I

    const/4 v1, 0x0

    .line 77
    iput v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    .line 79
    new-instance v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 80
    new-instance v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 81
    new-instance v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    .line 82
    new-instance v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    const-wide/16 v1, 0x0

    .line 90
    iput-wide v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    .line 91
    iput-wide v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastOrientation:D

    .line 92
    iput-wide v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastTilt:D

    .line 103
    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->reset()V

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    .line 105
    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mDownEventTime:J

    .line 106
    iput p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPointerId:I

    .line 107
    iput p2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mToolType:I

    return-void
.end method

.method private normalizeRange(DDD)D
    .locals 0

    sub-double/2addr p1, p3

    sub-double/2addr p5, p3

    div-double/2addr p1, p5

    const-wide/16 p3, 0x0

    .line 301
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private update(FFFFFJ)V
    .locals 6

    float-to-double v0, p1

    .line 112
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v2, v2, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    float-to-double v2, p2

    iget-object v4, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v4, v4, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, p6, v2

    if-gtz v2, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->update(FFF)V

    .line 126
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iput-wide v0, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 127
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    float-to-double p2, p2

    iput-wide p2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    float-to-double p1, p4

    .line 128
    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastOrientation:D

    float-to-double p1, p5

    .line 129
    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastTilt:D

    .line 134
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_2

    .line 135
    iget-wide p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_2

    sub-long p1, p6, p1

    long-to-float p1, p1

    .line 137
    iget-object p2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    add-float/2addr p2, p3

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    .line 145
    :cond_2
    iput-wide p6, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    return-void
.end method

.method private usingAccurateTool()Z
    .locals 2

    .line 296
    iget v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mToolType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected appendPredictedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    :goto_0
    move v3, v2

    move-object/from16 v2, p1

    .line 312
    :goto_1
    iget v4, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mExpectedPredictionSampleSize:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x1

    new-array v12, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 313
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v12, v1

    .line 314
    iget-object v6, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v6, v6, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    double-to-float v6, v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v5, v12, v1

    .line 315
    iget-object v6, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v6, v6, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    double-to-float v6, v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v5, v12, v1

    .line 316
    iget-wide v6, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    double-to-float v6, v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    if-nez v2, :cond_1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 320
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v11, v1

    .line 321
    iget v4, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPointerId:I

    iput v4, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v2, v11, v1

    .line 322
    iget v4, v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mToolType:I

    iput v4, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 324
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    .line 340
    invoke-virtual {v2, v4, v5, v12, v1}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 161
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->reset()V

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    return v2

    .line 165
    :cond_0
    iget v0, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 168
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPointerId:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onTouchEvent: Cannot find pointerId=%d in motionEvent=%s"

    .line 170
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SinglePointerPredictor"

    .line 168
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mDownEventTime:J

    .line 180
    invoke-static {p1}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    .line 181
    iget-object v2, v1, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    .line 182
    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v6, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/16 v3, 0x19

    .line 184
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v8

    iget-wide v9, v1, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->timeMs:J

    move-object v3, p0

    .line 182
    invoke-direct/range {v3 .. v10}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->update(FFFFFJ)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public predict(I)Landroid/view/MotionEvent;
    .locals 33

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 191
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    if-nez v0, :cond_0

    int-to-float v0, v8

    .line 192
    iget v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mExpectedPredictionSampleSize:I

    .line 195
    :cond_0
    iget v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mExpectedPredictionSampleSize:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    .line 196
    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getNumIterations()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    return-object v9

    .line 200
    :cond_1
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V

    .line 201
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v1}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getVelocity()Landroidx/input/motionprediction/kalman/matrix/DVector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V

    .line 202
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v1}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getAcceleration()Landroidx/input/motionprediction/kalman/matrix/DVector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V

    .line 203
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v1}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getJank()Landroidx/input/motionprediction/kalman/matrix/DVector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V

    .line 205
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getPressure()D

    move-result-wide v0

    iput-wide v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    .line 206
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mKalman:Landroidx/input/motionprediction/kalman/PointerKalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->getPressureChange()D

    move-result-wide v11

    .line 210
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->magnitude()D

    move-result-wide v0

    iget v2, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    float-to-double v2, v2

    div-double v1, v0, v2

    .line 212
    invoke-direct/range {p0 .. p0}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->usingAccurateTool()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const v0, 0x3dcccccd    # 0.1f

    move v13, v0

    move v0, v3

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    const v4, 0x3ca3d70a    # 0.02f

    move v13, v4

    :goto_0
    float-to-double v3, v3

    float-to-double v5, v0

    move-object/from16 v0, p0

    .line 223
    invoke-direct/range {v0 .. v6}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->normalizeRange(DDD)D

    move-result-wide v14

    .line 224
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;->magnitude()D

    move-result-wide v1

    float-to-double v3, v13

    const v0, 0x3e4ccccd    # 0.2f

    float-to-double v5, v0

    move-object/from16 v0, p0

    .line 225
    invoke-direct/range {v0 .. v6}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->normalizeRange(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    mul-double/2addr v14, v0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 231
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 232
    iget v6, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPointerId:I

    iput v6, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v4, v1, v5

    .line 233
    iget v6, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mToolType:I

    iput v6, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    int-to-float v4, v8

    .line 236
    iget v6, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    div-float/2addr v4, v6

    float-to-double v5, v4

    mul-double/2addr v5, v14

    .line 237
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 240
    iget v5, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mExpectedPredictionSampleSize:I

    if-eq v5, v10, :cond_3

    if-le v4, v5, :cond_3

    move v4, v5

    .line 245
    :cond_3
    iget-wide v5, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPrevEventTime:J

    iget v10, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v13, v10

    add-long/2addr v5, v13

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_6

    .line 248
    iget-object v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v14, v13, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object v8, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    move-object/from16 v32, v1

    iget-wide v0, v8, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    const-wide v16, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double v0, v0, v16

    add-double/2addr v14, v0

    iput-wide v14, v13, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 249
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mJank:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v2, v1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    mul-double v2, v2, v16

    add-double/2addr v13, v2

    iput-wide v13, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 250
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object v3, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v3, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    add-double/2addr v1, v13

    iput-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 251
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object v3, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mAcceleration:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v3, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    mul-double/2addr v13, v15

    add-double/2addr v1, v13

    iput-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 252
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object v3, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v3, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    move v15, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v3

    add-double/2addr v1, v13

    iput-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 253
    iget-object v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object v8, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mVelocity:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v8, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    mul-double/2addr v13, v3

    add-double/2addr v1, v13

    iput-wide v1, v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    .line 254
    iget-wide v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    add-double/2addr v0, v11

    iput-wide v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v13

    if-gez v2, :cond_4

    goto/16 :goto_3

    .line 261
    :cond_4
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 263
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v8, 0x0

    aput-object v2, v1, v8

    .line 264
    iget-object v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v13, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    double-to-float v13, v13

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v1, v8

    .line 265
    iget-object v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPosition:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-wide v13, v13, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    double-to-float v13, v13

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v2, v1, v8

    .line 266
    iget-wide v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mPressure:D

    double-to-float v13, v13

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v2, v1, v8

    .line 267
    iget-wide v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastOrientation:D

    double-to-float v13, v13

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    aget-object v2, v1, v8

    .line 268
    iget-wide v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mLastTilt:D

    double-to-float v13, v13

    const/16 v14, 0x19

    invoke-virtual {v2, v14, v13}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    if-nez v9, :cond_5

    .line 270
    iget-wide v13, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mDownEventTime:J

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v16, v13

    move-wide/from16 v18, v5

    move-object/from16 v22, v32

    move-object/from16 v23, v1

    .line 271
    invoke-static/range {v16 .. v31}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    move-object v9, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 287
    invoke-virtual {v9, v5, v6, v1, v2}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 289
    :goto_2
    iget v1, v7, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v13, v1

    add-long/2addr v5, v13

    add-int/lit8 v10, v10, 0x1

    move-wide v2, v3

    move v4, v15

    move-object/from16 v1, v32

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-object v9
.end method

.method public setReportRate(I)V
    .locals 1

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 154
    iput p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRateMs:F

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->mReportRates:Ljava/util/List;

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "reportRateMs should always be a strictlypositive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

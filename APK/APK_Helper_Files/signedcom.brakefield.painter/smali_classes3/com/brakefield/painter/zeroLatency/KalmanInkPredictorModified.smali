.class public Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;
.super Ljava/lang/Object;
.source "KalmanInkPredictorModified.java"

# interfaces
.implements Lcom/brakefield/painter/zeroLatency/InkPredictor;


# static fields
.field private static final ACCELERATION_INFLUENCE:F = 0.5f

.field private static final HIGH_JANK:F = 1.0f

.field private static final HIGH_SPEED:F = 2.0f

.field private static final JANK_INFLUENCE:F = 0.1f

.field private static final LOW_JANK:F = 0.02f

.field private static final LOW_SPEED:F = 0.2f

.field private static final VELOCITY_INFLUENCE:F = 1.0f


# instance fields
.field private mAcceleration:Lorg/ejml/data/DMatrix2;

.field private mAvgReportRate:F

.field private mJank:Lorg/ejml/data/DMatrix2;

.field private mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

.field private mLastPosition:Lorg/ejml/data/DMatrix2;

.field private mPosition:Lorg/ejml/data/DMatrix2;

.field private mPredictionResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionTarget:I

.field private mPrevEventTime:J

.field private mReportRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocity:Lorg/ejml/data/DMatrix2;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;-><init>(DD)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    .line 41
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPrevEventTime:J

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAvgReportRate:F

    .line 46
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    .line 47
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    .line 48
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    .line 49
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mJank:Lorg/ejml/data/DMatrix2;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    .line 62
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionTarget:I

    .line 63
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->reset()V

    return-void
.end method

.method private normalizeRange(DDD)D
    .locals 0

    sub-double/2addr p1, p3

    sub-double/2addr p5, p3

    div-double/2addr p1, p5

    const-wide/16 p3, 0x0

    .line 158
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public addPoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 76
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->update(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 77
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget v2, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-double v2, v2

    iput-wide v2, v1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 78
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget v2, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-double v2, v2

    iput-wide v2, v1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 84
    iget-wide v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPrevEventTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 85
    iget-wide v1, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mEventTime:J

    iget-wide v3, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPrevEventTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAvgReportRate:F

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    .line 97
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mReportRates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_3
    iget-wide v0, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mEventTime:J

    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPrevEventTime:J

    goto :goto_0

    :cond_4
    return-void
.end method

.method public calculatePrediction()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 106
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getNumIterations()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    return-object v0

    .line 109
    :cond_0
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 110
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getVelocity()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 111
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getAccelleration()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 112
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mJank:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getJank()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 114
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getPressure()D

    move-result-wide v8

    .line 115
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getPressureChange()D

    move-result-wide v10

    .line 118
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    invoke-static {v0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v0

    iget v2, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAvgReportRate:F

    float-to-double v2, v2

    div-double v1, v0, v2

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    .line 119
    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->normalizeRange(DDD)D

    move-result-wide v12

    .line 120
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mJank:Lorg/ejml/data/DMatrix2;

    invoke-static {v0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v1

    const-wide v3, 0x3f947ae140000000L    # 0.019999999552965164

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->normalizeRange(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 122
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v12, v0

    .line 126
    iget v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionTarget:I

    int-to-float v0, v0

    iget v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAvgReportRate:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 128
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mJank:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    const-wide v14, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 129
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mJank:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    .line 130
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 131
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    .line 132
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v12, v2

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 133
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v2

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    add-double/2addr v8, v10

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v8, v4

    if-gez v4, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    new-instance v5, Lcom/brakefield/painter/zeroLatency/InkPoint;

    const-wide/16 v13, 0x0

    iget-object v6, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v2, v6, Lorg/ejml/data/DMatrix2;->a1:D

    double-to-float v15, v2

    iget-object v2, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v2, v2, Lorg/ejml/data/DMatrix2;->a2:D

    double-to-float v2, v2

    double-to-float v3, v8

    const/16 v18, 0x0

    move-object v12, v5

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v12 .. v18}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 143
    :cond_2
    :goto_1
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 144
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v0, v0, Lorg/ejml/data/DMatrix2;->a1:D

    double-to-float v0, v0

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v1, v1, Lorg/ejml/data/DMatrix2;->a2:D

    double-to-float v1, v1

    iget-object v2, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v2, v2, Lorg/ejml/data/DMatrix2;->a1:D

    double-to-float v2, v2

    iget-object v3, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v3, v3, Lorg/ejml/data/DMatrix2;->a2:D

    double-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    .line 148
    :cond_3
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->reset()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPrevEventTime:J

    return-void
.end method

.method public setPredictionTarget(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;->mPredictionTarget:I

    return-void
.end method

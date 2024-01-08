.class public Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;
.super Ljava/lang/Object;
.source "KalmanInkPredictor.java"

# interfaces
.implements Lcom/brakefield/painter/zeroLatency/InkPredictor;


# static fields
.field private static final ACCELERATION_INFLUENCE:F = 0.5f

.field private static final HIGH_JANK:F = 0.2f

.field private static final HIGH_SPEED:F = 2.0f

.field private static final JANK_INFLUENCE:F = 0.1f

.field private static final LOW_JANK:F = 0.02f

.field private static final LOW_SPEED:F = 0.0f

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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;-><init>(DD)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    .line 39
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mLastPosition:Lorg/ejml/data/DMatrix2;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPrevEventTime:J

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mReportRates:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAvgReportRate:F

    .line 44
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

    .line 45
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    .line 46
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    .line 47
    new-instance v0, Lorg/ejml/data/DMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mJank:Lorg/ejml/data/DMatrix2;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionResult:Ljava/util/ArrayList;

    .line 60
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionTarget:I

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->reset()V

    return-void
.end method

.method private normalizeRange(DDD)D
    .locals 0

    sub-double/2addr p1, p3

    sub-double/2addr p5, p3

    div-double/2addr p1, p5

    const-wide/16 p3, 0x0

    .line 142
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

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 73
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->update(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 74
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget v2, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-double v2, v2

    iput-wide v2, v1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 75
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mLastPosition:Lorg/ejml/data/DMatrix2;

    iget v2, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-double v2, v2

    iput-wide v2, v1, Lorg/ejml/data/DMatrix2;->a2:D

    .line 80
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 81
    iget-wide v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPrevEventTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 82
    iget-wide v1, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mEventTime:J

    iget-wide v3, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPrevEventTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    .line 83
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mReportRates:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mReportRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAvgReportRate:F

    .line 91
    :cond_1
    iget-wide v0, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mEventTime:J

    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPrevEventTime:J

    goto :goto_0

    :cond_2
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

    .line 97
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getNumIterations()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionResult:Ljava/util/ArrayList;

    return-object v0

    .line 100
    :cond_0
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mLastPosition:Lorg/ejml/data/DMatrix2;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 101
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getVelocity()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 102
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getAccelleration()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 103
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mJank:Lorg/ejml/data/DMatrix2;

    iget-object v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v1}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getJank()Lorg/ejml/data/DMatrix2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrix2;->set(Lorg/ejml/data/Matrix;)V

    .line 105
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getPressure()D

    move-result-wide v8

    .line 106
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->getPressureChange()D

    move-result-wide v10

    .line 109
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    invoke-static {v0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v0

    iget v2, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAvgReportRate:F

    float-to-double v2, v2

    div-double v1, v0, v2

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    .line 110
    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->normalizeRange(DDD)D

    move-result-wide v12

    .line 111
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mJank:Lorg/ejml/data/DMatrix2;

    invoke-static {v0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v1

    const-wide v3, 0x3f947ae140000000L    # 0.019999999552965164

    const-wide v5, 0x3fc99999a0000000L    # 0.20000000298023224

    move-object/from16 v0, p0

    .line 112
    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->normalizeRange(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    mul-double/2addr v12, v0

    .line 116
    iget v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionTarget:I

    int-to-float v0, v0

    iget v1, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAvgReportRate:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 118
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mJank:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    const-wide v14, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 119
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mJank:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    .line 120
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 121
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mAcceleration:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    .line 122
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v12, v2

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a1:D

    .line 123
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    iget-object v12, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mVelocity:Lorg/ejml/data/DMatrix2;

    iget-wide v12, v12, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v12, v2

    add-double/2addr v5, v12

    iput-wide v5, v4, Lorg/ejml/data/DMatrix2;->a2:D

    add-double/2addr v8, v10

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v8, v4

    if-gez v4, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    iget-object v4, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionResult:Ljava/util/ArrayList;

    new-instance v5, Lcom/brakefield/painter/zeroLatency/InkPoint;

    const-wide/16 v13, 0x0

    iget-object v6, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

    iget-wide v2, v6, Lorg/ejml/data/DMatrix2;->a1:D

    double-to-float v15, v2

    iget-object v2, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPosition:Lorg/ejml/data/DMatrix2;

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

    .line 132
    :cond_2
    :goto_1
    iget-object v0, v7, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mKalman:Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/PenKalmanFilter;->reset()V

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPrevEventTime:J

    return-void
.end method

.method public setPredictionTarget(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictor;->mPredictionTarget:I

    return-void
.end method

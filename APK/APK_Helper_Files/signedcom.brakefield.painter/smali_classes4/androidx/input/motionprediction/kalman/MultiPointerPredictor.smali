.class public Landroidx/input/motionprediction/kalman/MultiPointerPredictor;
.super Ljava/lang/Object;
.source "MultiPointerPredictor.java"

# interfaces
.implements Landroidx/input/motionprediction/kalman/KalmanPredictor;


# static fields
.field private static final DEBUG_PREDICTION:Z

.field private static final TAG:Ljava/lang/String; = "MultiPointerPredictor"


# instance fields
.field private final mPredictorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/input/motionprediction/kalman/SinglePointerPredictor;",
            ">;"
        }
    .end annotation
.end field

.field private mReportRateMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MultiPointerPredictor"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->DEBUG_PREDICTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mReportRateMs:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_2

    .line 72
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    :cond_1
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 79
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    if-eqz v0, :cond_8

    .line 81
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 85
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 87
    :goto_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 88
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v2

    .line 62
    :cond_6
    :goto_1
    new-instance v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;-><init>(II)V

    .line 66
    iget v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mReportRateMs:I

    if-lez v1, :cond_7

    .line 67
    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->setReportRate(I)V

    .line 69
    :cond_7
    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    iget-object p1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    :goto_2
    return v3
.end method

.method public predict(I)Landroid/view/MotionEvent;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 100
    iget-object v2, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v2, 0x0

    const-string v15, "MultiPointerPredictor"

    if-nez v8, :cond_1

    .line 107
    sget-boolean v1, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->DEBUG_PREDICTION:Z

    if-eqz v1, :cond_0

    const-string v1, "predict() -> null: no pointer on screen"

    .line 108
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    const/4 v14, 0x0

    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 113
    iget-object v2, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    .line 114
    invoke-virtual {v2, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v1

    .line 115
    sget-boolean v2, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->DEBUG_PREDICTION:Z

    if-eqz v2, :cond_2

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "predict() -> MotionEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    .line 122
    :cond_3
    new-array v3, v8, [I

    .line 123
    new-array v4, v8, [Landroid/view/MotionEvent;

    move v5, v14

    :goto_0
    if-ge v5, v8, :cond_4

    .line 125
    iget-object v6, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v5

    .line 126
    iget-object v6, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    .line 127
    invoke-virtual {v6, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const v1, 0x7fffffff

    move v5, v14

    :goto_1
    if-ge v5, v8, :cond_7

    .line 133
    aget-object v6, v4, v5

    if-nez v6, :cond_5

    move v5, v13

    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    if-ge v7, v1, :cond_6

    .line 139
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    move v5, v14

    :goto_2
    if-eqz v5, :cond_a

    :goto_3
    if-ge v14, v8, :cond_9

    .line 144
    aget-object v1, v4, v14

    if-eqz v1, :cond_8

    .line 146
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    return-object v2

    :cond_a
    add-int/2addr v1, v13

    .line 156
    filled-new-array {v1, v8}, [I

    move-result-object v2

    const-class v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/MotionEvent$PointerCoords;

    move v5, v14

    :goto_4
    if-ge v5, v8, :cond_d

    .line 161
    aget-object v6, v4, v5

    invoke-static {v6}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v14

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    .line 162
    aget-object v10, v2, v7

    iget-object v9, v9, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, v14

    aput-object v9, v10, v5

    add-int/2addr v7, v13

    if-gt v1, v7, :cond_b

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    move v5, v14

    :goto_5
    if-ge v5, v8, :cond_e

    .line 170
    aget-object v6, v4, v5

    .line 171
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 175
    :cond_e
    new-array v9, v8, [Landroid/view/MotionEvent$PointerProperties;

    move v4, v14

    :goto_6
    if-ge v4, v8, :cond_f

    .line 178
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v9, v4

    .line 179
    aget v6, v3, v4

    iput v6, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    .line 181
    aget-object v10, v2, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    .line 182
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    move/from16 v13, v22

    :goto_7
    if-ge v13, v1, :cond_10

    const-wide/16 v4, 0x0

    .line 198
    aget-object v6, v2, v13

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    .line 200
    sget-boolean v1, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->DEBUG_PREDICTION:Z

    if-eqz v1, :cond_13

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 206
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 207
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "predict() -> MotionEvent: (pointerCount=%d, historySize=%d);"

    .line 203
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v3}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    const-string v5, "      "

    .line 209
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v4, v4, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v5, v4

    move v14, v7

    :goto_9
    if-ge v14, v5, :cond_11

    aget-object v6, v4, v14

    .line 211
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v9, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v9, "(%f, %f)"

    invoke-static {v8, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_11
    const-string v4, "\n"

    .line 213
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 215
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v3
.end method

.method public setReportRate(I)V
    .locals 2

    if-lez p1, :cond_1

    .line 49
    iput p1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mReportRateMs:I

    const/4 p1, 0x0

    .line 51
    :goto_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mPredictorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    iget v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->mReportRateMs:I

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->setReportRate(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "reportRateMs should always be a strictlypositive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

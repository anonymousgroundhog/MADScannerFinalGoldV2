.class public Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;
.super Ljava/lang/Object;
.source "BasicInkPredictor.java"

# interfaces
.implements Lcom/brakefield/painter/zeroLatency/InkPredictor;


# static fields
.field static final DEBUG:Z = false

.field static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "BasicInkPredictor"


# instance fields
.field protected mHistoricalPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mPredictionTarget:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    .line 17
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mPredictionTarget:I

    return-void
.end method

.method private diff([F)[F
    .locals 6

    .line 145
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 147
    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget v5, p1, v4

    sub-float/2addr v3, v5

    aput v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private limitNorm([F[FFF)V
    .locals 3

    const/4 v0, 0x0

    .line 130
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->norm(FF)F

    move-result v1

    cmpg-float p3, v1, p3

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 132
    aput p3, p1, v0

    .line 133
    aput p3, p2, v0

    goto :goto_0

    :cond_0
    cmpl-float p3, v1, p4

    if-lez p3, :cond_1

    .line 135
    aget p3, p1, v0

    div-float/2addr p4, v1

    mul-float/2addr p3, p4

    aput p3, p1, v0

    .line 136
    aget p1, p2, v0

    mul-float/2addr p1, p4

    aput p1, p2, v0

    :cond_1
    :goto_0
    return-void
.end method

.method private movingAverage([F)V
    .locals 4

    const/4 v0, 0x0

    .line 124
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 125
    aget v2, p1, v1

    aget v3, p1, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private norm(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method


# virtual methods
.method public addPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 28
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public calculatePrediction()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v2, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    return-object v1

    :cond_0
    new-array v2, v3, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 45
    iget-object v6, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v6, v6, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v3, [F

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    .line 49
    iget-object v7, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v7, v7, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-array v6, v3, [F

    move v7, v4

    :goto_2
    if-ge v7, v3, :cond_3

    .line 53
    iget-object v8, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v8, v8, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 57
    :cond_3
    invoke-direct {v0, v2}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->movingAverage([F)V

    .line 58
    invoke-direct {v0, v5}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->movingAverage([F)V

    .line 61
    invoke-direct {v0, v2}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v2

    .line 62
    invoke-direct {v0, v5}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v3

    .line 63
    invoke-direct {v0, v6}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v5

    .line 66
    invoke-direct {v0, v2}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v6

    .line 67
    invoke-direct {v0, v3}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v7

    .line 68
    invoke-direct {v0, v5}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v8

    .line 71
    invoke-direct {v0, v6}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v9

    .line 72
    invoke-direct {v0, v7}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->diff([F)[F

    move-result-object v10

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 75
    invoke-direct {v0, v6, v7, v11, v12}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->limitNorm([F[FFF)V

    .line 76
    invoke-direct {v0, v9, v10, v11, v12}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->limitNorm([F[FFF)V

    move v13, v4

    const/4 v14, 0x0

    .line 80
    :goto_3
    array-length v15, v2

    if-ge v13, v15, :cond_4

    .line 81
    aget v15, v2, v13

    aget v11, v3, v13

    invoke-direct {v0, v15, v11}, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->norm(FF)F

    move-result v11

    add-float/2addr v14, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 82
    :cond_4
    array-length v11, v2

    int-to-float v11, v11

    div-float/2addr v14, v11

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v11

    cmpl-float v11, v14, v12

    if-lez v11, :cond_5

    move v14, v12

    .line 88
    :cond_5
    iget v11, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mPredictionTarget:I

    int-to-float v11, v11

    mul-float/2addr v11, v14

    float-to-int v11, v11

    .line 98
    iget-object v13, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v13, v13, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    .line 99
    iget-object v14, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v14, v14, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    .line 100
    iget-object v15, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget v15, v15, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    .line 101
    iget-object v12, v0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget-object v12, v12, Lcom/brakefield/painter/zeroLatency/InkPoint;->mTag:Ljava/lang/Object;

    move v0, v4

    :goto_4
    if-ge v0, v11, :cond_8

    .line 103
    aget v16, v6, v4

    aget v17, v9, v4

    add-float v16, v16, v17

    aput v16, v6, v4

    .line 104
    aget v16, v7, v4

    aget v17, v10, v4

    add-float v16, v16, v17

    aput v16, v7, v4

    .line 105
    aget v16, v2, v4

    aget v17, v6, v4

    add-float v16, v16, v17

    aput v16, v2, v4

    .line 106
    aget v16, v3, v4

    aget v17, v7, v4

    add-float v16, v16, v17

    aput v16, v3, v4

    .line 107
    aget v16, v5, v4

    aget v17, v8, v4

    add-float v16, v16, v17

    aput v16, v5, v4

    .line 108
    aget v17, v2, v4

    add-float v13, v13, v17

    .line 109
    aget v17, v3, v4

    add-float v14, v14, v17

    add-float v15, v15, v16

    move-object/from16 v23, v5

    float-to-double v4, v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v16

    if-lez v4, :cond_6

    const/4 v4, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    cmpg-float v5, v15, v4

    if-gtz v5, :cond_7

    goto :goto_6

    .line 113
    :cond_7
    new-instance v5, Lcom/brakefield/painter/zeroLatency/InkPoint;

    const-wide/16 v17, 0x0

    move-object/from16 v16, v5

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v22}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v23

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_6
    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mHistoricalPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setPredictionTarget(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkPredictor;->mPredictionTarget:I

    return-void
.end method

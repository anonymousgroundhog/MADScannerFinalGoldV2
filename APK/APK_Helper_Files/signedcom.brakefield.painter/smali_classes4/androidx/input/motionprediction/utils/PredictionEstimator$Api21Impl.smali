.class Landroidx/input/motionprediction/utils/PredictionEstimator$Api21Impl;
.super Ljava/lang/Object;
.source "PredictionEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/input/motionprediction/utils/PredictionEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFastestFrameTimeMs(Landroid/view/Display;)F
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object p0

    const/4 v0, 0x0

    .line 95
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 97
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 98
    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    return p0
.end method

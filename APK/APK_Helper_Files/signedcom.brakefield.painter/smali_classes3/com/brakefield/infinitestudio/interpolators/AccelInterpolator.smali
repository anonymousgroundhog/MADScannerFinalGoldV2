.class public Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;
.super Ljava/lang/Object;
.source "AccelInterpolator.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/interpolators/Interpolator;


# instance fields
.field delay_:F

.field intensity_:F

.field preArrive_:F

.field reverse_:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->delay_:F

    .line 7
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->preArrive_:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->reverse_:Z

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->intensity_:F

    return-void
.end method


# virtual methods
.method public interpolate(FFF)F
    .locals 6

    .line 17
    iget v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->preArrive_:F

    mul-float/2addr v0, p3

    .line 18
    iget v1, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->delay_:F

    mul-float/2addr v1, p3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    cmpg-float v2, v0, p3

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    move v1, v2

    :cond_2
    cmpl-float v3, v1, v0

    if-lez v3, :cond_3

    move v1, v0

    :cond_3
    sub-float/2addr p2, v1

    cmpl-float v3, p2, v2

    if-lez v3, :cond_4

    move v2, p2

    :cond_4
    sub-float p2, p3, v0

    sub-float/2addr p3, p2

    sub-float/2addr p3, v1

    sub-float/2addr v0, v1

    cmpl-float p2, v2, v0

    if-ltz p2, :cond_5

    move v2, p3

    .line 30
    :cond_5
    iget p2, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->intensity_:F

    mul-float v0, p1, v2

    div-float/2addr v0, p3

    float-to-double v0, v0

    float-to-double v2, v2

    float-to-double v4, p2

    .line 33
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double p2, p3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    div-double/2addr v2, p2

    mul-double/2addr v0, v2

    .line 35
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;->reverse_:Z

    if-eqz p2, :cond_6

    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, p2

    float-to-double p1, p1

    add-double/2addr v0, p1

    :cond_6
    double-to-float p1, v0

    return p1
.end method

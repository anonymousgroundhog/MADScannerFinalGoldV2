.class public Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;
.super Ljava/lang/Object;
.source "AccelDecelInterpolator.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/interpolators/Interpolator;


# instance fields
.field delay_:F

.field period_:F

.field preArrive_:F

.field reverse_:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->delay_:F

    .line 7
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->preArrive_:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->reverse_:Z

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->period_:F

    return-void
.end method


# virtual methods
.method public interpolate(FFF)F
    .locals 11

    .line 17
    iget v0, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->preArrive_:F

    mul-float/2addr v0, p3

    .line 18
    iget v1, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->delay_:F

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
    iget p2, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->period_:F

    float-to-double v0, p2

    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v0, v5

    mul-double/2addr v7, v5

    div-double v7, v3, v7

    mul-double/2addr v7, v5

    float-to-double v9, p3

    div-double/2addr v0, v9

    mul-double/2addr v0, v5

    mul-float/2addr p1, v2

    div-float/2addr p1, p3

    float-to-double p1, p1

    neg-double v0, v0

    float-to-double v5, v2

    mul-double/2addr v0, v5

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    add-double/2addr p1, v7

    .line 36
    iget-boolean p3, p0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;->reverse_:Z

    if-eqz p3, :cond_6

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v0

    add-double/2addr p1, v3

    :cond_6
    double-to-float p1, p1

    return p1
.end method

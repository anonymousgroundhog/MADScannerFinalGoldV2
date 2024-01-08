.class public Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;
.super Ljava/lang/Object;
.source "LinearInterpolator.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/interpolators/Interpolator;


# instance fields
.field delay_:F

.field preArrive_:F

.field reverse_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->delay_:F

    .line 6
    iput v0, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->preArrive_:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->reverse_:Z

    return-void
.end method


# virtual methods
.method public interpolate(FFF)F
    .locals 4

    .line 18
    iget v0, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->preArrive_:F

    mul-float/2addr v0, p3

    .line 19
    iget v1, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->delay_:F

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

    :cond_5
    mul-float/2addr v2, p1

    div-float/2addr v2, p3

    .line 33
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;->reverse_:Z

    if-eqz p2, :cond_6

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    :cond_6
    return v2
.end method

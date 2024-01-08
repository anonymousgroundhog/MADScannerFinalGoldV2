.class public Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;
.super Ljava/lang/Object;
.source "DynamicValue.java"


# static fields
.field public static final EXPONENTIAL:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SIGMOID:I = 0x2


# instance fields
.field public interpolationCurve:F

.field public interpolationMethod:I

.field public jitter:F

.field public max:F

.field public min:F

.field public reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    .line 12
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->jitter:F

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationMethod:I

    .line 17
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationCurve:F

    return-void
.end method

.method private interpolate(FF)F
    .locals 7

    div-float v0, p1, p2

    .line 53
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationMethod:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    float-to-double v0, v0

    .line 55
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationCurve:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    :goto_0
    mul-float/2addr p1, p2

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 64
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationCurve:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    float-to-double v1, p1

    neg-float p1, v0

    float-to-double v3, p1

    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 68
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    div-double/2addr v3, v1

    double-to-float p1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method


# virtual methods
.method public getValue(F)F
    .locals 8

    .line 21
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float v2, v0, p1

    if-nez v2, :cond_0

    return v1

    .line 28
    :cond_0
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->jitter:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1

    neg-float p1, v2

    float-to-double v2, p1

    .line 29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->jitter:F

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float p1, v2

    add-float/2addr v1, p1

    .line 32
    :cond_1
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    cmpg-float v2, v1, p1

    if-gez v2, :cond_2

    move v1, p1

    .line 34
    :cond_2
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    sub-float/2addr v1, p1

    .line 39
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolate(FF)F

    move-result p1

    .line 43
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->reverse:Z

    if-eqz v0, :cond_4

    .line 44
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    sub-float/2addr v0, p1

    return v0

    .line 46
    :cond_4
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    add-float/2addr v0, p1

    return v0
.end method

.method public setInterpolationCurve(F)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationCurve:F

    return-void
.end method

.method public setInterpolationMethod(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->interpolationMethod:I

    return-void
.end method

.method public setJitter(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->jitter:F

    return-void
.end method

.method public setMax(F)V
    .locals 1

    .line 76
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    .line 77
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 78
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    :cond_0
    return-void
.end method

.method public setMin(F)V
    .locals 1

    .line 82
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->min:F

    .line 83
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 84
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->max:F

    :cond_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/DynamicValue;->reverse:Z

    return-void
.end method

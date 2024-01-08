.class public abstract Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;
.super Ljava/lang/Object;
.source "ParameterizableViewTransformer.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# static fields
.field protected static final EPS:F = 0.001f


# instance fields
.field protected mMaxScaleX:F

.field protected mMaxScaleY:F

.field protected mMinScaleX:F

.field protected mMinScaleY:F

.field protected mOffsetXPercent:F

.field protected mOffsetYPercent:F

.field protected mRotateDegree:F

.field protected mRotateDistFactor:F

.field protected mScaleLargestAtCenter:Z

.field protected mScaleXFactor:F

.field protected mScaleXOffset:F

.field protected mScaleYFactor:F

.field protected mScaleYOffset:F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetXPercent:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetYPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 25
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleX:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleX:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXOffset:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXFactor:F

    .line 26
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleY:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleY:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYOffset:F

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYFactor:F

    .line 27
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDegree:F

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleLargestAtCenter:Z

    .line 30
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDistFactor:F

    return-void
.end method

.method private static isNonZero(F)Z
    .locals 1

    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1

    const v0, -0x457ced91    # -0.001f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected getMaxScaleX()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleX:F

    return v0
.end method

.method protected getMaxScaleY()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleY:F

    return v0
.end method

.method protected getMinScaleX()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleX:F

    return v0
.end method

.method protected getMinScaleY()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleY:F

    return v0
.end method

.method protected getOffsetXPercent()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetXPercent:F

    return v0
.end method

.method protected getOffsetYPercent()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetYPercent:F

    return v0
.end method

.method protected getRotateDegree()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDegree:F

    return v0
.end method

.method protected getScaleXFactor()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXFactor:F

    return v0
.end method

.method protected getScaleXOffset()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXOffset:F

    return v0
.end method

.method protected getScaleYFactor()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYFactor:F

    return v0
.end method

.method protected getScaleYOffset()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYOffset:F

    return v0
.end method

.method protected isScaleLargestAtCenter()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleLargestAtCenter:Z

    return v0
.end method

.method public onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 0

    return-void
.end method

.method protected setMaxScaleX(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleX:F

    return-void
.end method

.method protected setMaxScaleY(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleY:F

    return-void
.end method

.method protected setMinScaleX(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleX:F

    return-void
.end method

.method protected setMinScaleY(F)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleY:F

    return-void
.end method

.method protected setOffsetXPercent(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetXPercent:F

    return-void
.end method

.method protected setOffsetYPercent(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetYPercent:F

    return-void
.end method

.method protected setRotateDegree(F)V
    .locals 4

    .line 62
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDegree:F

    .line 63
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 64
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDistFactor:F

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isNonZero(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDistFactor:F

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDistFactor:F

    :goto_0
    return-void
.end method

.method protected setScaleLargestAtCenter(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleLargestAtCenter:Z

    return-void
.end method

.method protected setScaleXFactor(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXFactor:F

    return-void
.end method

.method protected setScaleXOffset(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXOffset:F

    return-void
.end method

.method protected setScaleYFactor(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYFactor:F

    return-void
.end method

.method protected setScaleYOffset(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYOffset:F

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 6

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 153
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXFactor:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_4

    .line 154
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleLargestAtCenter:Z

    if-eqz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXFactor:F

    mul-float/2addr v2, v5

    .line 155
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXOffset:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleXOffset:F

    add-float/2addr v2, v5

    .line 156
    :cond_1
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleX:F

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 157
    :cond_2
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleX:F

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_3
    int-to-float v5, v0

    div-float/2addr v5, v4

    .line 158
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotX(F)V

    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 159
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 160
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 163
    :cond_4
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYFactor:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 164
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleLargestAtCenter:Z

    if-eqz v2, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v3, v2

    goto :goto_1

    :cond_5
    move v3, p2

    :goto_1
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYFactor:F

    mul-float/2addr v3, v2

    .line 165
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYOffset:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mScaleYOffset:F

    add-float/2addr v3, v2

    .line 166
    :cond_6
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMinScaleY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 167
    :cond_7
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mMaxScaleY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_8
    int-to-float v2, v0

    div-float/2addr v2, v4

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    int-to-float v2, v1

    div-float/2addr v2, v4

    .line 169
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 170
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 173
    :cond_9
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDegree:F

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isNonZero(F)Z

    move-result v2

    if-eqz v2, :cond_a

    int-to-float v2, v0

    div-float v3, v2, v4

    .line 174
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    int-to-float v3, v1

    .line 175
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDistFactor:F

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 176
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mRotateDegree:F

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 179
    :cond_a
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetXPercent:F

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isNonZero(F)Z

    move-result v2

    if-eqz v2, :cond_b

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 180
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetXPercent:F

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 183
    :cond_b
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetYPercent:F

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isNonZero(F)Z

    move-result v0

    if-eqz v0, :cond_c

    int-to-float v0, v1

    mul-float/2addr p2, v0

    .line 184
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->mOffsetYPercent:F

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    return-void
.end method
